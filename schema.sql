
drop table users;
drop table notes;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username varchar(50) unique not null,
  password text not null
);

create table notes (    
    id serial primary key,
    created timestamp not null,
    title varchar(120) not null,
    description text
);

insert into notes (created, title, description) 
values(sysdate(), 'Note example', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet augue sed massa ornare ultricies et sed purus. Ut a magna dignissim, scelerisque enim nec, eleifend magna. Vestibulum ut tincidunt urna, ut congue nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin in enim nec ex imperdiet feugiat eu nec diam. Donec finibus, orci sed convallis convallis, erat nisl maximus mauris, in porta nibh nisi sed nisl. Curabitur elementum ipsum et viverra mollis. Morbi tempus enim nec nisi faucibus, a venenatis libero dapibus. ');

insert into notes (created, title, description) 
values(sysdate(), 'Second paragraph', 'Donec eleifend ultricies urna nec pharetra. Nam at purus volutpat, ultrices ante euismod, condimentum orci. Proin nec nisi sit amet arcu rhoncus suscipit. Nunc et arcu ornare, fringilla leo non, facilisis neque. Sed pretium, quam et imperdiet ornare, orci nulla dapibus lacus, nec sagittis ligula neque a tortor. Pellentesque scelerisque lacus ac sapien rhoncus blandit porta vel ante. Proin quis accumsan sem. Cras mollis lorem eu arcu pharetra posuere. Mauris ligula ex, malesuada nec massa sed, sollicitudin tempus turpis.');
