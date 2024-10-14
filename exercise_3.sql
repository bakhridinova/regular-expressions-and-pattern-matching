create or replace function classify_customer_by_postal_code(postal_code varchar)
    returns varchar as $$
begin
    if postal_code ~ '^\d{5}$' then
        return 'Local';
    elsif postal_code ~ '^\d{3}-\d{3}$' then
        return 'National';
    else
        return 'International';
    end if;
exception when others then
    return 'Classification Error';
end;
$$ language plpgsql;

select postalcode, classify_customer_by_postal_code(postalcode)
from customers
limit 10;