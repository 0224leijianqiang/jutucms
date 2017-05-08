package com.jutubao.util;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.Transaction;

import com.alibaba.fastjson.JSONObject;
import com.jutubao.configurer.CustomizedPropertyConfigurer;

public class JedisUtils{
	private static JedisUtils mInstance;
	private JedisPool jedisPool;
	public static JedisUtils getInstance(){
		if(mInstance==null){
			mInstance = new JedisUtils();
		}
		return new JedisUtils();
	}
	public JedisUtils(){
		//String redisStr =  Tools.readTxtFile("admin/config/REDIS.txt");
		String redisStr =  (String) CustomizedPropertyConfigurer.getContextProperty("redis.host");
		if(!redisStr.equals("")){
			String redis[] = redisStr.split(",");
			int port = 0 ;
			if(redis.length==1)port = 6379;
			else if(redis.length>1) port = Integer.parseInt(redis[1]);
			jedisPool = new JedisPool(redis[0],port);
		}
	}
	public void setJedisStr(String key,String value,Integer seconds){
		Jedis jedis= jedisPool.getResource();
		jedis.setex(key,seconds,value);
	}
	public void clear(String key){
		Jedis jedis= jedisPool.getResource(); 
		jedis.del(key);
	}
	public void putObj(String key,Object obj){
		Jedis jedis= jedisPool.getResource(); 
		if(obj==null||obj.equals(""))return;
		jedis.set(key, JSONObject.toJSONString(obj));
	}
	public Object getObj(String key){
		Jedis jedis= jedisPool.getResource();
		String json = jedis.get(key);
		if(json==null||json.equals(""))return null;
		return JSONObject.parse(json);
	}
	public String getJedisStr(String key){
		Jedis jedis= jedisPool.getResource();
		if(jedis.get(key)==null)return "";
		return jedis.get(key).toString();
	}
	/**
	 * 普通键值对形势传入
	 * @param key
	 * @param value
	 * @return
	 */
	public String putKv(String key,String value) {
	    Jedis jedis = jedisPool.getResource();
	    String result = jedis.set(key, value);
	    jedis.disconnect();
	    return result;
	}
	/**
	 * 设置HASHse对象
	 * @param key
	 * @param map
	 */
	public void putHset(String key,Map<String, String> map){
		 Jedis jedis = jedisPool.getResource();
		 Iterator<?> iter = map.entrySet().iterator();
		 while(iter.hasNext()){
		    	@SuppressWarnings("rawtypes")
				Entry entry = (Entry) iter.next();
		    	Object value = entry.getValue();
		    	if(value == null) continue;
		    	jedis.hset(key,entry.getKey().toString(), value.toString());
		 }
		 jedis.hset("key", "params", "result");
		 getHset("key", "params");
	}
	public void putHset(String key,Object params,Object result){
		 Jedis jedis = jedisPool.getResource();
		 if(result==null)return;
		 jedis.hset(key.getBytes(),JSONObject.toJSONString(params).getBytes(), JSONObject.toJSONString(result).getBytes());
	}
	/**
	 * 得到hash对象的存储结果
	 * @param key
	 * @param params
	 * @return
	 */
	public Object hget(String key,Object params){
		 Jedis jedis = jedisPool.getResource();
		 byte[] resultbyte= jedis.hget(key.getBytes(), JSONObject.toJSONString(params).getBytes());
		 if(resultbyte==null) return null;
		 String resultstr =  new String(resultbyte);
		 return JSONObject.parse(resultstr);
	}
	/**
	 * 得到具体对象的值
	 * @param key
	 * @param field
	 * @return
	 */
	public String getHset(String key,String field){
		Jedis jedis = jedisPool.getResource(); 
		return jedis.hget(key, field);
	}
	/**
	 * 得到hast对象
	 * @param key
	 * @return
	 */
	public Map<String, String> getHsetMap(String key){
		Jedis jedis = jedisPool.getResource(); 
		return jedis.hgetAll(key);
	}
	/**
	 * Redis 事务存储规则
	 * @param maps
	 * @return
	 */
	public List<?> putTransactions(Map<String, String> maps) {
	    Jedis jedis = jedisPool.getResource();
	    Transaction tx = jedis.multi();
	    Iterator<?> iter = maps.entrySet().iterator();
	    while(iter.hasNext()){
	    	@SuppressWarnings("rawtypes")
			Entry entry = (Entry) iter.next();
	    	String key = entry.getKey().toString();
	    	Object value = entry.getValue();
	    	if(value == null) continue;
	    	tx.set(key,value.toString());
	    }
	    List<Object> results = tx.exec();
	    jedis.disconnect();
	    return results;
	}
	/**
	 * 
	 */
	public void putPipelined(List<Map<String, String>> list){
		
	}
	/*//有时，我们需要采用异步方式，一次发送多个指令，不同步等待其返回结果。这样可以取得非常好的执行效率。这就是管道，调用方法如下
	public void test3Pipelined() {
	    Jedis jedis = jedisPool.getResource();
	    Pipeline pipeline = jedis.pipelined();
	    long start = System.currentTimeMillis();
	    for (int i = 0; i < 100000; i++) {
	        pipeline.set("p" + i, "p" + i);
	    }
	    List<Object> results = pipeline.syncAndReturnAll();
	    long end = System.currentTimeMillis();
	    System.out.println("Pipelined SET: " + ((end - start)/1000.0) + " seconds");
	    jedis.disconnect();
	}
	public void test4combPipelineTrans() {
	    jedis = new Jedis("localhost"); 
	    long start = System.currentTimeMillis();
	    Pipeline pipeline = jedis.pipelined();
	    pipeline.multi();
	    for (int i = 0; i < 100000; i++) {
	        pipeline.set("" + i, "" + i);
	    }
	    pipeline.exec();
	    List<Object> results = pipeline.syncAndReturnAll();
	    long end = System.currentTimeMillis();
	    System.out.println("Pipelined transaction: " + ((end - start)/1000.0) + " seconds");
	    jedis.disconnect();
	}
	public void test5shardNormal() {
	    List<JedisShardInfo> shards = Arrays.asList(
	            new JedisShardInfo("localhost",6379),
	            new JedisShardInfo("localhost",6380));

	    ShardedJedis sharding = new ShardedJedis(shards);

	    long start = System.currentTimeMillis();
	    for (int i = 0; i < 100000; i++) {
	        String result = sharding.set("sn" + i, "n" + i);
	    }
	    long end = System.currentTimeMillis();
	    System.out.println("Simple@Sharing SET: " + ((end - start)/1000.0) + " seconds");

	    sharding.disconnect();
	}
	public void test6shardpipelined() {
	    List<JedisShardInfo> shards = Arrays.asList(
	            new JedisShardInfo("localhost",6379),
	            new JedisShardInfo("localhost",6380));

	    ShardedJedis sharding = new ShardedJedis(shards);

	    ShardedJedisPipeline pipeline = sharding.pipelined();
	    long start = System.currentTimeMillis();
	    for (int i = 0; i < 100000; i++) {
	        pipeline.set("sp" + i, "p" + i);
	    }
	    List<Object> results = pipeline.syncAndReturnAll();
	    long end = System.currentTimeMillis();
	    System.out.println("Pipelined@Sharing SET: " + ((end - start)/1000.0) + " seconds");

	    sharding.disconnect();
	}
	public void test7shardSimplePool() {
	    List<JedisShardInfo> shards = Arrays.asList(
	            new JedisShardInfo("localhost",6379),
	            new JedisShardInfo("localhost",6380));

	    ShardedJedisPool pool = new ShardedJedisPool(new JedisPoolConfig(), shards);

	    ShardedJedis one = pool.getResource();

	    long start = System.currentTimeMillis();
	    for (int i = 0; i < 100000; i++) {
	        String result = one.set("spn" + i, "n" + i);
	    }
	    long end = System.currentTimeMillis();
	    pool.returnResource(one);
	    System.out.println("Simple@Pool SET: " + ((end - start)/1000.0) + " seconds");

	    pool.destroy();
	}
	public void test8shardPipelinedPool() {
	    List<JedisShardInfo> shards = Arrays.asList(
	            new JedisShardInfo("localhost",6379),
	            new JedisShardInfo("localhost",6380));

	    ShardedJedisPool pool = new ShardedJedisPool(new JedisPoolConfig(), shards);

	    ShardedJedis one = pool.getResource();

	    ShardedJedisPipeline pipeline = one.pipelined();

	    long start = System.currentTimeMillis();
	    for (int i = 0; i < 100000; i++) {
	        pipeline.set("sppn" + i, "n" + i);
	    }
	    List<Object> results = pipeline.syncAndReturnAll();
	    long end = System.currentTimeMillis();
	    pool.returnResource(one);
	    System.out.println("Pipelined@Pool SET: " + ((end - start)/1000.0) + " seconds");
	    pool.destroy();
	}*/
}
