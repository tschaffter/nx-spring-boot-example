-- awesome-user-service
create user awesome_user_service identified by 'changeme';
create role awesome_user_service_role_admin;
create database awesome_user_service;

grant all on awesome_user_service.* to awesome_user_service_role_admin;
grant awesome_user_service_role_admin to awesome_user_service;
set default role awesome_user_service_role_admin for awesome_user_service;