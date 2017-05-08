var navs = [{
	"title": "动态字段管理",
	"icon": "fa-cubes",
	"spread": true,
	"children": [{
		"title": "模版组管理",
		"icon": "&#xe641;",
		"href": "templates?PID=0"
	}, {
		"title": "属性管理",
		"icon": "&#xe63c;",
		"href": "properties"
	}, {
		"title": "模版管理",
		"icon": "&#xe63c;",
		"href": "templatesinfo"
	}]
},{
	"title": "地区库",
	"icon": "fa-cubes",
	"spread": false,
	"children": [{
		"title": "地区列表",
		"icon": "&#xe641;",
		"href": "datas?name=cus_area"
	}, {
		"title": "添加地区",
		"icon": "&#xe63c;",
		"href": "addDatas?type=cus_area"
	}]
}, {
	"title": "地块",
	"icon": "&#xe621;",
	"spread": false,
	"children": [{
		"title": "地块列表",
		"icon": "fa-check-square-o",
		"href": "datas?name=cus_land"
	},{
		"title": "地块添加",
		"icon": "fa-check-square-o",
		"href": "addDatas?type=cus_land"
	}/*,{
		"title": "批量处理",
		"icon": "fa-check-square-o",
		"href": "icheck.html"
	}*/]
}, {
	"title": "一村一地",
	"icon": "&#xe62e;",
	"spread": false,
	"children": [{
		"title": "一村一地列表",
		"icon": "fa-check-square-o",
		"href": "datas?name=cus_village"
	},{
		"title": "一村一地添加",
		"icon": "fa-check-square-o",
		"href": "addDatas?type=cus_village"
	}/*,{
		"title": "批量处理",
		"icon": "fa-check-square-o",
		"href": "icheck.html"
	}*/]
}, {
	"title": "产品",
	"icon": "&#xe62e;",
	"spread": false,
	"children": [{
		"title": "产品列表",
		"icon": "fa-check-square-o",
		"href": "datas?name=cus_goods"
	},{
		"title": "产品添加",
		"icon": "fa-check-square-o",
		"href": "addDatas?type=cus_goods"
	}/*,{
		"title": "批量处理",
		"icon": "fa-check-square-o",
		"href": "icheck.html"
	}*/]
}
, {
	"title": "农场",
	"icon": "&#xe64a;",
	"spread": false,
	"children": [{
		"title": "农场列表",
		"icon": "fa-check-square-o",
		"href": "datas?name=cus_frame"
	},{
		"title": "农场添加",
		"icon": "fa-check-square-o",
		"href": "addDatas?type=cus_frame"
	}/*,{
		"title": "批量处理",
		"icon": "fa-check-square-o",
		"href": "icheck.html"
	}*/]
}
, {
	"title": "会员库",
	"icon": "&#x1002;",
	"spread": false,
	"children": [{
		"title": "会员列表",
		"icon": "fa-check-square-o",
		"href": "datas?name=cus_vips"
	},{
		"title": "会员添加",
		"icon": "fa-check-square-o",
		"href": "addDatas?type=cus_vips"
	}/*,{
		"title": "批量处理",
		"icon": "fa-check-square-o",
		"href": "icheck.html"
	}*/]
}, {
	"title": "系统配置",
	"icon": "fa-address-book",
	"href": "",
	"spread": false,
	"children": [{
		"title": "系统组管理",
		"icon": "fa-github",
		"href": "groups?type=cus_area"
	},
	{
		"title": "字段模版管理",
		"icon": "fa-github",
		"href": "groups_chlidren?type=cus_area"
	},
	{
		"title": "字段属性管理",
		"icon": "fa-github",
		"href": "groups_columns?type=cus_area"
	}
	]
}];