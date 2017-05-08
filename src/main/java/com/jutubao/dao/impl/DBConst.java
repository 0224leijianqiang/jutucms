package com.jutubao.dao.impl;

public class DBConst {
		public static final String 	TABLE_CAT = "TABLE_CAT";// String  表类别（可为 null）
		public static final String 	TABLE_SCHEM = "TABLE_SCHEM";//String => 表模式（可为 null）
		public static final String 	TABLE_NAME = "TABLE_NAME";//String => 表名称
		public static final String 	COLUMN_NAME = "COLUMN_NAME";//String => 列名称
		public static final String 	DATA_TYPE = "DATA_TYPE";//int => 来自 java.sql.Types 的 SQL 类型
		public static final String 	TYPE_NAME = "TYPE_NAME";//String => 数据源依赖的类型名称，对于 UDT，该类型名称是完全限定的
		public static final String 	COLUMN_SIZE = "COLUMN_SIZE";//int => 列的大小。
		public static final String 	BUFFER_LENGTH = "BUFFER_LENGTH";//未被使用。
		public static final String 	DECIMAL_DIGITS = "DECIMAL_DIGITS";//int => 小数部分的位数。对于 DECIMAL_DIGITS 不适用的数据类型，则返回 Null。
		public static final String 	NUM_PREC_RADIX = "NUM_PREC_RADIX";//int => 基数（通常为 10 或 2）
		public static final String 	NULLABLE = "NULLABLE";//int => 是否允许使用 NULL。
		public static final String 	columnNoNulls = "columnNoNulls";//- 可能不允许使用 NULL 值
		public static final String 	columnNullable = "columnNullable";//- 明确允许使用 NULL 值
		public static final String 	columnNullableUnknown = "columnNullableUnknown";//- 不知道是否可使用 null
		public static final String	REMARKS  = "REMARKS";//=>String 描述列的注释（可为 null）
		public static final String 	COLUMN_DEF  = "COLUMN_DEF";//=>String 该列的默认值，当值在单引号内时应被解释为一个字符串（可为 null）
		public static final String 	SQL_DATA_TYPE = "SQL_DATA_TYPE";//int => 未使用
		public static final String 	SQL_DATETIME_SUB = "SQL_DATETIME_SUB";//int => 未使用
		public static final String 	CHAR_OCTET_LENGTH = "CHAR_OCTET_LENGTH";//int => 对于 char 类型，该长度是列中的最大字节数
		public static final String 	ORDINAL_POSITION = "ORDINAL_POSITION";//int => 表中的列的索引（从 1 开始）
		public static final String 	IS_NULLABLE  = "IS_NULLABLE";// String=> ISO 规则用于确定列是否包括 null。 YES OR NO
		public static final String 	SCOPE_CATLOG  = "SCOPE_CATLOG";//=>String 表的类别，它是引用属性的作用域（如果 DATA_TYPE 不是 REF，则为 null）
		public static final String 	SCOPE_SCHEMA  = "SCOPE_SCHEMA";//=>String 表的模式，它是引用属性的作用域（如果 DATA_TYPE 不是 REF，则为 null）
		public static final String 	SCOPE_TABLE  = "SCOPE_TABLE";//=>String 表名称，它是引用属性的作用域（如果 DATA_TYPE 不是 REF，则为 null）
		public static final String 	SOURCE_DATA_TYPE = "SOURCE_DATA_TYPE";//short => 不同类型或用户生成 Ref 类型、来自 java.sql.Types 的 SQL 类型的源类型（如果 DATA_TYPE 不是 DISTINCT 或用户生成的 REF，则为 null）
		public static final String 	IS_AUTOINCREMENT = "IS_AUTOINCREMENT";//String => 指示此列是否自动增加 YES OR NO
		public static final String  COLUMN_NAME_MYSQL = "COLUMN_NAME";//MYSQL 列名
		public static final String  IS_NULLABLE_MYSQL = "IS_NULLABLE";//MYSQL 是否为空
		public static final String  CHARACTER_MAXIMUM_LENGTH_MYSQL = "CHARACTER_MAXIMUM_LENGTH";//MYSQL最大长度
		public static final String  DATA_TYPE_MYSQL = "DATA_TYPE";//MYSQL 字段类型
		public static final String  COLUMN_COMMENT_MYSQL = "COLUMN_COMMENT";//MYSQL 字段备注
		public static final String  COLUMN_KEY_MYSQL = "COLUMN_KEY";//MYSQL 主键列
		public static final String  EXTAR_MYSQL = "EXTAR";//MYSQL 自动增长列
		
}
