drop table categories;
create table categories (
  id serial4 primary key,
  name varchar(255) not null
);

drop table recipes;
create table recipes (
  id serial4 primary key,
  name varchar(255) not null,
  description text,
  category_id integer
);


insert into categories (name) values ('Starters');
insert into categories (name) values ('Mains');
insert into categories (name) values ('Desserts');

insert into recipes (name, description, category_id) values ('Scrambled eggs', 'nice for breakfast and lunch', 2);
insert into recipes (name, description, category_id) values ('Waldorf Salad', 'only available when Waldorf-hunting is in season', 1);
