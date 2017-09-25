insert into grant_types(grant) values('password');
insert into grant_types(grant) values('implicit');
insert into grant_types(grant) values('authorization_code');
insert into grant_types(grant) values('client_credentials');

insert into authorities(role) values('USER');
insert into authorities(role) values('ADMIN');
insert into authorities(role) values('SYSTEM');
insert into authorities(role) values('DEVELOPER');


insert into users(id, email, password, enabled) values(0, 'admin', 'admin', true);
insert into users_authorities(user_id, authorities_role) values(0, 'USER');
insert into users_authorities(user_id, authorities_role) values(0, 'ADMIN');

insert into authorities(role) values('CONNECT_ADMIN');
insert into authorities(role) values('CONNECT_USER');
insert into authorities(role) values('CALENDAR_ADMIN');

insert into users_authorities(user_id, authorities_role) values(0, 'CONNECT_USER');
insert into users_authorities(user_id, authorities_role) values(0, 'CONNECT_ADMIN');
insert into users_authorities(user_id, authorities_role) values(0, 'CALENDAR_ADMIN');

insert into clients(id, name, secret, owner, access_token_timeout, refresh_token_timeout) values(0, 'reverside-service-explorer', '0000000000000', 'admin', 3600, -1);
insert into clients_grant_types(client_id, grant_types_grant) values(0, 'implicit');
insert into clients_authorities(client_id, authorities_role)  values(0, 'SYSTEM');

insert into clients(id, name, secret, owner, access_token_timeout, refresh_token_timeout) values(1, 'reverside-calendar-service', '1111111111111', 'admin', 3600, -1);
insert into clients_grant_types(client_id, grant_types_grant) values(1, 'client_credentials');
insert into clients_authorities(client_id, authorities_role)  values(1, 'SYSTEM');
insert into clients_authorities(client_id, authorities_role)  values(1, 'CONNECT_USER');






