Select * from person 
where residence='Paris';

Select * from flight 
where dest_city='Paris';

Select * from flight 
where start_city='Paris';

Select * from person 
where name='Philipp'
or name='Kesia'
or name='Sarah' 
or name='Carlos'
or name='Wei';

Select * from flight 
where dest_city='Paris' 
and date<=('2014-10-23') 
or start_city='Paris' 
and date>=('2014-10-23');

Select * from messages 
where sent>=('2014-10-20') 
and sent<=('2014-20-25');

Select id from phone_contract 
where person_id='141';

Select * from messages 
where sent>=('2014-10-20') 
and sent<=('2014-20-25');

Select id from phone_contract 
where person_id='141';

Select * from messages 
where sent>=('2014-10-20') 
and sent<=('2014-20-25');

Select id from phone_contract 
where person_id='100' 
or person_id='105' 
or person_id='106' 
or person_id='141';

Select * from messages 
where sent>=('2014-10-20') 
and sent<=('2014-20-25') 
and contract_sender_id='100' 
or contract_receiver_id='100';