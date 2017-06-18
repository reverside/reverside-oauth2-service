insert into authorities(role) values('user');
insert into authorities(role) values('admin');
insert into authorities(role) values('system');
insert into authorities(role) values('developer');

insert into users(id, password, enabled) values('admin', 'admin', true);
insert into users_authorities(user_id, authorities_role) values('admin', 'user');
insert into users_authorities(user_id, authorities_role) values('admin', 'admin');


insert into users(id, password, enabled) values('manmay.mohanty@reverside.co.za', 'secret', true);
insert into users_authorities(user_id, authorities_role) values('manmay.mohanty@reverside.co.za', 'user');
insert into users_authorities(user_id, authorities_role) values('manmay.mohanty@reverside.co.za', 'developer');
