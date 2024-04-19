-- drop table goods ;
-- drop table "order";

create table goods(
                      goods_id  int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
                          INCREMENT 1
                          MINVALUE  1
                          MAXVALUE 9223372036854775807
                          START 1
                          ),
                      price DECIMAL,
                      content varchar(1000),
                      status int4,
                      total_stocks  int4,
                      create_time timestamp DEFAULT LOCALTIMESTAMP,
                      update_time timestamp ,
                      spike int4
);

create table orders (
                        id int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
                            INCREMENT 1
                            MINVALUE  1
                            MAXVALUE 9223372036854775807
                            START 1
                            ),
                        price DECIMAL,
                        userid int4,
                        goodsid int8,
                        createtime timestamp DEFAULT LOCALTIMESTAMP
);

-- 初始一个商品
insert into goods (price, content, status, total_stocks,spike) values (100,'apple watch s8',1, 1000,1);
