CREATE TABLE IF NOT EXISTS "flowers" (
	"id_flower" UUID NOT NULL UNIQUE,
	"name_flower" VARCHAR(32) NOT NULL,
	"image_flower" VARCHAR(255),
	"price_flower" DECIMAL NOT NULL,
	"stock_flower" INTEGER,
	PRIMARY KEY("id_flower")
);




CREATE TABLE IF NOT EXISTS "user_credentials" (
	"id" UUID NOT NULL UNIQUE,
	"username_user" VARCHAR(63) NOT NULL,
	"pass_user" VARCHAR(15) NOT NULL,
	"id_data_users" UUID NOT NULL,
	PRIMARY KEY("id")
);




CREATE TABLE IF NOT EXISTS "data_users" (
	"id_data_users" UUID NOT NULL UNIQUE,
	"names_user" VARCHAR(63) NOT NULL,
	"ap_pat_user" VARCHAR(63) NOT NULL,
	"ap_mat_user" VARCHAR(63) NOT NULL,
	"phone_number_user" VARCHAR(10),
	"id_adress_users" UUID NOT NULL,
	PRIMARY KEY("id_data_users")
);




CREATE TABLE IF NOT EXISTS "adress_users" (
	"id_adress_users" UUID NOT NULL UNIQUE,
	"street_user" VARCHAR(15) NOT NULL,
	"num_street_user" INTEGER NOT NULL,
	"num_inter_steet_user" INTEGER,
	"cp_user" VARCHAR(5) NOT NULL,
	"city_user" VARCHAR(63) NOT NULL,
	"country_user" VARCHAR(31) NOT NULL,
	PRIMARY KEY("id_adress_users")
);



ALTER TABLE "user_credentials"
ADD FOREIGN KEY("id_data_users") REFERENCES "data_users"("id_data_users")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "adress_users"
ADD FOREIGN KEY("id_adress_users") REFERENCES "data_users"("id_adress_users")
ON UPDATE NO ACTION ON DELETE NO ACTION;