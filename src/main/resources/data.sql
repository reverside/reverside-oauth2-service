insert into grant_types(grant) values('client_credentials');

insert into authorities(role) values('admin');
insert into authorities(role) values('user');
insert into authorities(role) values('system');
insert into authorities(role) values('developer');

insert into authorities(role) values('notification_user');
insert into authorities(role) values('notification_admin');
insert into authorities(role) values('calendar_admin');

insert into users(id, password, enabled) values('admin', 'admin', true);
insert into users_authorities(user_id, authorities_role) values('admin', 'admin');

insert into users(id, password, enabled) values('manmay.mohanty@reverside.co.za', 'Password123', true);
insert into users_authorities(user_id, authorities_role) values('manmay.mohanty@reverside.co.za', 'developer');

insert into clients(id, name, secret, owner, access_token_timeout, refresh_token_timeout) values('b094f68d-623a-4407-b0d2-b43c610b2c5', 'reverside-calendar-service', '1498562418003', 'manmay.mohanty@reverside.co.za', 3600, -1);
insert into clients_authorities(client_id, authorities_role) values('b094f68d-623a-4407-b0d2-b43c610b2c5', 'system');
insert into clients_authorities(client_id, authorities_role) values('b094f68d-623a-4407-b0d2-b43c610b2c5', 'notification_user');
insert into clients_authorities(client_id, authorities_role) values('b094f68d-623a-4407-b0d2-b43c610b2c5', 'calendar_admin');
insert into clients_grant_types(client_id, grant_types_grant) values('b094f68d-623a-4407-b0d2-b43c610b2c5','client_credentials');
