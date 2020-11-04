### En un momento de lucidez me he inventado toda la información, por lo que voy a corregir:
### CallePuerto Bermeo por Puerto Bermeo
### Y eliminar el último car_id
### no pudedo hacer partial insert porque he puesto not null en casi todo (lección aprendida)

UPDATE customers
SET address = 'Puerto Bermeo 6'
WHERE phone_no = 612389756;

UPDATE car
SET manufacturer = 'Lamborghini' , model = 'Gallardo'
WHERE vin_number = 'ESP41ETZ3GTM2WVF7';
