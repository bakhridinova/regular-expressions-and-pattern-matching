create or replace function validate_product_name()
    returns trigger as $$
begin
    if new.productname is null or new.productname !~ '^[A-Z].{4,}$' then
        raise exception 'Product name must start with an uppercase letter and be at least five characters long';
    elsif exists (select 1 from products where productname = new.productname) then
        raise exception 'Product name already exists';
    end if;
    return new;
end;
$$ language plpgsql;

create trigger trigger_validate_product_name
    before insert on products
    for each row execute function validate_product_name();

insert into products (productid, productname) values (21, 'ApplePie');  -- Should pass
insert into products (productid, productname) values (22, 'apple');  -- Should fail
