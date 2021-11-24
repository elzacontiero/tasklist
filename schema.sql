drop table notes;

create table notes (    
    id serial primary key,
    created timestamp not null,
    title varchar(120) not null,
    description text
);

insert into notes (created, title, description) 
values(sysdate(), 'Note example', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet augue sed massa ornare ultricies et sed purus. Ut a magna dignissim, scelerisque enim nec, eleifend magna. Vestibulum ut tincidunt urna, ut congue nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin in enim nec ex imperdiet feugiat eu nec diam. Donec finibus, orci sed convallis convallis, erat nisl maximus mauris, in porta nibh nisi sed nisl. Curabitur elementum ipsum et viverra mollis. Morbi tempus enim nec nisi faucibus, a venenatis libero dapibus. ');
