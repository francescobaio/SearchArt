create table ArtWorks(
  Picture LONGBLOB,
  Labels varchar(20) not null,
  Identifier integer
);


create table Information(
  Identifier integer primary key,
  Description varchar(5000),
  Author varchar(200) not null,
  Title varchar(200) not null
);

create table ArtWorks_labeling(
  Picture LONGBLOB,
  Labels varchar(20) not null,
  Identifier integer
);


	
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Gentle Shepherdess.jpeg'), 'Person', 0);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Gentle Shepherdess.jpeg'), 'Sheep', 0);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/vincent-willem-van-gogh-128.jpeg'), 'Vase', 1);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/clara-peeters-mesa-prado-01.jpeg'), 'Cup', 2);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/clara-peeters-mesa-prado-01.jpeg'), 'Vase', 2);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/clara-peeters-mesa-prado-01.jpeg'), 'Bowl', 2);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/clara-peeters-mesa-prado-01.jpeg'), 'Potted plant', 2);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/monet, Treno nella neve.png'), 'Train', 3);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/monet, Treno nella neve.png'), 'Person', 3);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Luomo-con-la-bombetta.jpg'), 'Person', 4);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Luomo-con-la-bombetta.jpg'), 'Tie', 4);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mangiafagioli.jpg'), 'Dining table', 5);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mangiafagioli.jpg'), 'Knife', 5);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mangiafagioli.jpg'), 'Sandwich', 5);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mangiafagioli.jpg'), 'Bowl', 5);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mangiafagioli.jpg'), 'Person', 5);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Natura morta con selvaggina, verdura e frutta.jpeg'), 'Carrot', 6);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Natura morta con selvaggina, verdura e frutta.jpeg'), 'Bird', 6);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il silenzio sulla tela.jpeg'), 'Apple', 7);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il silenzio sulla tela.jpeg'), 'Orange', 7);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Bimbi_Cavolfiore del canonico Venuti e ramolaccio.jpeg'), 'Broccoli', 8);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/the-singing-butler-copia-di-jack-vettriano.jpg'), 'Umbrella', 9);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/the-singing-butler-copia-di-jack-vettriano.jpg'), 'Person', 9);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Fountain.jpg'), 'Toilet', 10);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Red Scissors.jpeg'), 'Scissors', 11);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Hieronymus-Bosch-The-Concert-in-the-Egg.jpeg'), 'Person', 12);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Hieronymus-Bosch-The-Concert-in-the-Egg.jpeg'), 'Book', 12);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Hieronymus-Bosch-The-Concert-in-the-Egg.jpeg'), 'Bird', 12);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Hieronymus-Bosch-The-Concert-in-the-Egg.jpeg'), 'Vase', 12);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Scissors.jpg'), 'Scissors', 13);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/the-rich-man-and-lazarus-leandro-bassano.jpeg'), 'Cat', 14);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/the-rich-man-and-lazarus-leandro-bassano.jpeg'), 'Dog', 14);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/the-rich-man-and-lazarus-leandro-bassano.jpeg'), 'Bowl', 14);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/the-rich-man-and-lazarus-leandro-bassano.jpeg'), 'Person', 14);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/John-Singer-Sargent-Fete-Familiale.-The-Birthday-Party.jpeg'), 'Cake', 15);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/John-Singer-Sargent-Fete-Familiale.-The-Birthday-Party.jpeg'), 'Person', 15);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/John-Singer-Sargent-Fete-Familiale.-The-Birthday-Party.jpeg'), 'Wine glass', 15);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/John-Singer-Sargent-Fete-Familiale.-The-Birthday-Party.jpeg'), 'Cup', 15);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/A Sunday Afternoon on the Island of La Grande Jatte.jpeg'), 'Dog', 16);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/A Sunday Afternoon on the Island of La Grande Jatte.jpeg'), 'Person', 16);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Card Players .jpeg'), 'Bottle', 17);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Card Players .jpeg'), 'Person', 17);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/kitchen-sink-joy-nichols.jpeg'), 'Potted plant', 18);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/kitchen-sink-joy-nichols.jpeg'), 'Vase', 18);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/kitchen-sink-joy-nichols.jpeg'), 'Sink', 18);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/kitchen-sink-joy-nichols.jpeg'), 'Bowl', 18);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Giovanni-Graziani-Donna-con-la-valigia.jpeg'), 'Chair', 19);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Giovanni-Graziani-Donna-con-la-valigia.jpeg'), 'Person', 19);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Giovanni-Graziani-Donna-con-la-valigia.jpeg'), 'Suitcase', 19);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/La-ragazza-con-lombrello.jpeg'),'Umbrella', 20);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/La-ragazza-con-lombrello.jpeg'), 'Person', 20);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Claude_monet-the_walk_woman_with_a_parasol.jpeg'), 'Umbrella',21);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Claude_monet-the_walk_woman_with_a_parasol.jpeg'), 'Person',21);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Orso Bruno.jpeg'), 'Bear', 22);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Riposo dei pastori.jpeg'), 'Sheep', 23);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Riposo dei pastori.jpeg'), 'Horse', 23);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Riposo dei pastori.jpeg'), 'Cow', 23);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Riposo dei pastori.jpeg'), 'Person', 23);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il bambino che legge allelefante.jpeg'), 'Elephant', 24);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il bambino che legge allelefante.jpeg'), 'Person', 24);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Burning Giraffe.jpg'), 'Giraffe', 25);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat’s Lunch.jpg'), 'Cat', 26);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat’s Lunch.jpg'), 'Dog', 26);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat’s Lunch.jpg'), 'Spoon', 26);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat’s Lunch.jpg'), 'Bowl', 26);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat’s Lunch.jpg'), 'Person', 26);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat at Play.jpg'), 'Cat', 27);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/The Cat at Play.jpg'), 'Bowl', 27);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Floating_feather.webp'), 'Bird', 28);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Concert of Birds.jpg'), 'Bird', 29);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/carole-beatrice-perret-paintings_urbancycling_1.jpeg'), 'Bicycle', 30);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Passeggiata in bicicletta.jpeg'), 'Person', 31);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Passeggiata in bicicletta.jpeg'), 'Bicycle', 31);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Cagnaccio_di_San_Pietro_donna-allo-specchio-1927.jpeg'), 'Person', 32);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Cagnaccio_di_San_Pietro_donna-allo-specchio-1927.jpeg'), 'Chair', 32);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Cagnaccio_di_San_Pietro_donna-allo-specchio-1927.jpeg'), 'Cup', 32);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Children_teaching_a_cat_to_dance.jpeg'), 'Person', 33);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Children_teaching_a_cat_to_dance.jpeg'), 'Vase', 33);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Children_teaching_a_cat_to_dance.jpeg'), 'Spoon', 33);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Children_teaching_a_cat_to_dance.jpeg'), 'Dog', 33);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Children_teaching_a_cat_to_dance.jpeg'), 'Bowl', 33);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Harbour_scene_at_sunset.jpeg'), 'Boat', 34);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Harbour_scene_at_sunset.jpeg'), 'Person', 34);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Horsemen Resting in a Landscape.jpg'), 'Person', 35);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Horsemen Resting in a Landscape.jpg'), 'Horse', 35);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Horsemen Resting in a Landscape.jpg'), 'Chair', 35);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Horsemen Resting in a Landscape.jpg'), 'Cow', 35);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/1-herr-und-dame-beim-wein.jpeg'), 'Person', 36);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/1-herr-und-dame-beim-wein.jpeg'), 'Bench', 36);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/1-herr-und-dame-beim-wein.jpeg'), 'Chair', 36);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Still Life with Fruits.jpeg'), 'Potted plant', 37);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Still Life with Fruits.jpeg'), 'Apple', 37);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Still life with a lorgnette.jpeg'), 'Vase', 38);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/NATURA MORTA CON TAZZA E VASI.jpeg'), 'Cup', 39);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/NATURA MORTA CON TAZZA E VASI.jpeg'), 'Bowl', 39);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/NATURA MORTA CON TAZZA E VASI.jpeg'), 'Vase', 39);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mark the Evangelist.jpeg'), 'Person', 40);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mark the Evangelist.jpeg'), 'Book', 40);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Suitcase, Stepladder.jpeg'), 'Suitcase', 41);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Thinking of History at My Space.jpg'), 'Chair', 42);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Thinking of History at My Space.jpg'), 'Person', 42);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/A Rider.jpg'),'Person', 43);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/A Rider.jpg'), 'Horse', 43);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/A Rider.jpg'), 'Dog', 43);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Family Group in an Interior.jpg'), 'Dining table', 44);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Family Group in an Interior.jpg'), 'Chair', 44);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Family Group in an Interior.jpg'), 'Person', 44);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Family Group in an Interior.jpg'), 'Bottle', 44);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Family Group in an Interior.jpg'), 'Bowl', 44);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il Trittico Portinari di Hugo van der Goes.jpeg'), 'Person', 45);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Saint Francis.jpg'),'Person', 46);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Bacco.jpeg'), 'Person', 47);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Bacco.jpeg'), 'Wine Glass', 47);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Venere di Urbino.jpeg'), 'Person', 48);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Venere di Urbino.jpeg'), 'Bed', 48);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il Bacio.jpeg'), 'Person', 49);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Grant_DeVolson_Wood_-_American_Gothic.jpeg'), 'Person', 50);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Dama_con_lermellino.jpeg'), 'Person', 51);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Michelangelos_David_-_right_view_2 2.jpeg'), 'Person',52);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/1665_Girl_with_a_Pearl_Earring.jpeg'), 'Person', 53);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/300px-Leonardo_da_Vinci_-_The_Last_Supper_high_res.jpeg'), 'Person', 54);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpeg'), 'Person', 55);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Marina a Saintes.jpeg'), 'Person', 56);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Marina a Saintes.jpeg'), 'Boat', 56);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il treno ha fischiato - 1877 .jpg'), 'Person', 57);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Il treno ha fischiato - 1877 .jpg'), 'Train', 57);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Ritratto-di-Francesco-Giacinto-e-Carlo-Emanuele-II-Palazzina-di-Caccia-Stupinigi.png'),'Person', 58);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Ritratto-di-Francesco-Giacinto-e-Carlo-Emanuele-II-Palazzina-di-Caccia-Stupinigi.png'), 'Chair', 58);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Ritratto-di-Francesco-Giacinto-e-Carlo-Emanuele-II-Palazzina-di-Caccia-Stupinigi.png'), 'Tennis racket', 58);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Natura Morta Con Cipolle.jpeg'), 'Bottle', 59);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Natura Morta Con Cipolle.jpeg'), 'Knife', 59);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/Natura Morta Con Cipolle.jpeg'), 'Orange', 59);
insert into ArtWorks values(LOAD_FILE('/Applications/MAMP/htdocs/SearchArt/pictures/La Banana.jpeg'), 'Banana', 60);




insert into Information values(0,'Oil painting.
The work depicts a woman leading her flock to pasture.','Luigi Chialiva','The Gentle Shepherdess');
insert into Information values(1,'Sunflowers (original title, in French: Tournesols) is the title of two series of still life paintings by the Dutch painter Vincent van Gogh. The first series, executed in Paris in 1887, depicts the flowers lying on the ground, while the second set, made a year later in Arles, shows a bouquet of sunflowers in a vase. In the artist''s mind both sets were linked by the name of his friend Paul Gauguin, who acquired two of the Paris versions. ','Vincent van Gogh','Sunflowers');
insert into Information values(2,'In this still life representing a table laid, Clara Peeters, one of the few women painters of her time (we are at the beginning of the seventeenth century), offers a remarkable essay of her art precise and elegant showing us a tart of pastafrolla, a couple of quails, a saucer of olives, a loaf of bread, an orange, as well as containers and glasses. The refined knife that we find at the center of the composition bears the artist’s signature.

','Clara Peeters','Mesa');
insert into Information values(3,'Monet painted the train in the snow in the stage of full artistic maturity. This means that the characteristics of his style are very visible. The rapid and poorly defined brushstroke, the absence of contour in the figures, the fusion of the elements with the landscape, the absence of the black color and the attention to light.','Claude Monet','Train in the snow');
insert into Information values(4,'It represents the bust of a man with the bowler hat with the face covered by a dove. The man with the bowler hat exists but no one can really know who he is and the dove preserves his identity. The identity of the subject is denied and the invisible appears in reality as a condition of existence of what is under the eyes of all, but is never noticed.Hiding the face of the character the Belgian artist, who wonders about the distance between reality and representation, transforms a banal portrait into a visual paradox.','Rene Magritte','Man in a Bowler Hat');
insert into Information values(5,'The Bean eater (Italian: Mangiafagioli) is a painting by the Italian Baroque painter Annibale Carracci. Dating from 1580–1590 (probably 1583–1584), it is housed in the gallery of Palazzo Colonna of Rome.','Annibale Carracci','Mangiafagioli');
insert into Information values(6,'The Still Life of Hunting, Vegetables and Fruits (Spanish: Bodegón de Caza, hortalizas y frutas), sometimes known as Still Life of the Thistle, is an oil painting on canvas (68 88.2 cm) by the Spanish painter Juan Sánchez Cotán, example of one of the first still lifes painted in Europe.','Juan Sánchez Cotán','Natura morta di selvaggina, verdura e frutta');
insert into Information values(7,'The representation of everyday objects, fruits, plants or animals, isolated and depicted without the presence of man, spread in Europe around 1590-1600. Since its birth, still life is understood as a mimetic exercise of analytical description of natural reality, characterized by a strong decorative sense','Juan Sánchez Cotán','The silence on the canvas. Spanish still life from Sánchez Cotán to Goya');
insert into Information values(8,'The iconographic representation of exceptional products of nature, and similarly the extraordinary number of
varieties of different fruits, was the culmination of Grand
Duke Cosimo’s interests, sometimes spasmodic and verging on an obsession. He was not only prepared to pay huge
sums of money to have as many varieties of cultivated fruits
as possible in the orchards of his villas, he also wanted them
painted life size, in a sort of ‘inventory’ of nature, with just
as many labels with their names.','Bartolomeo Bimbi','Cavolfiore del canonico Venuti e ramolaccio del podere del marchese Corsi');
insert into Information values(9,'The focal subject of The Singing Butler is based on an image of actress Orla Brady posing in her own dress which was published in The Illustrator''s Figure Reference Manual (1987) as part of a series of photographic figure studies.','Jack Vettriano','The Singing Butler');
insert into Information values(10,'Fountain is a readymade sculpture by Marcel Duchamp in 1917, consisting of a porcelain urinal signed R. Mutt. In April 1917, an ordinary piece of plumbing chosen by Duchamp was submitted for an exhibition of the Society of Independent Artists, the inaugural exhibition by the Society to be staged at The Grand Central Palace in New York. When explaining the purpose of his Readymade sculpture, Duchamp stated they are everyday objects raised to the dignity of a work of art by the artist''s act of choice. In Duchamp''s presentation, the urinal''s orientation was altered from its usual positioning.','Marcel Duchamp','Fountain');
insert into Information values(11,'Pat''s antique red shears are posed on a cookie sheet.','Nadene Kranz','Red Scissors');
insert into Information values(12,'Concert in the Egg is a painting formerly considered to be a copy of a lost work by Hieronymus Bosch, and which is currently considered to be based on one of his drawings. Max Jakob Friedländer called it an old copy, without specifying another work it was copied from.','Hieronymus Bosch','Concert in the Egg');
insert into Information values(13,'Always together, depicts a pair of scissors dancing between sheets of cut paper. The leaves bear a verse from Shakespeare, in The Merry Wives of Windsor, where Slender, pushed by his uncle, accepts, without being in love with him, to marry Annetta, certain that staying together will only increase the distance. A bitter verse that, four centuries in advance, captures the total distrust of post-contemporary man towards marriage.','Wladimir Kush','Always together');
insert into Information values(14,'The rich man and Lazarus (also called the parable of Dives and Lazarus or Lazarus and Dives) is a parable of Jesus from the Gospel of Luke. Speaking to his disciples and some Pharisees, Jesus tells of an unnamed rich man and a beggar named Lazarus. ','Leandro Bassano','The Rich man and Lazarus');
insert into Information values(15,'In this intimate and moody interior, Sargent depicts French artist Albert Besnard (1849–1934) and his wife, sculptor Charlotte Dubray (1855–1931), celebrating the birthday of their eldest child, Robert (1881/2–1914). The overhanging light and the glow of the birthday candles illuminate the face of the young boy, but the mother is the dominant figure in the foreground, while the father, relegated to the background, is virtually faceless. In his own work, Besnard espoused what he called the environmental portrait, using his sitters’ surroundings to represent character and express their relationship with the world in which they live','John Singer Sargent.','The Birthday Party');
insert into Information values(16,'A Sunday Afternoon on the Island of La Grande Jatte (French: Un dimanche après-midi à l''Île de la Grande Jatte) was painted from 1884 to 1886 and is Georges Seurat''s most famous work. A leading example of pointillist technique, executed on a large canvas, it is a founding work of the neo-impressionist movement. Seurat''s composition includes a number of Parisians at a park on the banks of the River Seine. It is in the collection of the Art Institute of Chicago.','Georges Seurat','A Sunday Afternoon on the Island of La Grande Jatte');
insert into Information values(17,'The Card Players is a series of oil paintings by the French Post-Impressionist artist Paul Cézanne. Painted during Cézanne''s final period in the early 1890s, there are five paintings in the series. The versions vary in size, the number of players, and the setting in which the game takes place. Cézanne also completed numerous drawings and studies in preparation for The Card Players series.','Paul Cézanne','The Card Players');
insert into Information values(18,'No tea just yet. More flowers need to be picked. The day is too beautiful to be wasted indoors!','Joy Nichols','Kitchen Sink');
insert into Information values(19,'The context, the scenography, although important and accurate, is not the protagonist, but the interlocutor of thoughtful young women, elderly people reading, girls resting on the steps of a church... Man is the absolute protagonist, absorbed in himself, immersed in an instinctive and automatic meditation, in silence.','Giovanni Graziani','Donna con la valigia');
insert into Information values(20,'Oil on canvas.This painting depicts a woman with an umbrella on a hot summer day','Luciano Curtarello ','La ragazza con l''ombrello');
insert into Information values(21,'This piece is one of the most famous painting of Monet''s early impressionist works. It was painted in a sunny morning, when the lady and her son were walking on the glasses. Only blue, green, brown and other natural colors are used in the entire painting, that give us a feeling of quiet and comfortable. The lady occupies most of the space of the canvas, she is the center of the canvas. The umbrella and the little son on her right hand side constitute a triangle, bring balance to the whole painting. Although the painting is an early works of Monet, we are still able to see that he successfully captured the light and the impression even at that time.','Claude Monet','The Walk. Lady with a Parasol');
insert into Information values(22,'This painting depicts a brown bear.','A.Benedetti','Brown bear');
insert into Information values(23,'The first work, of a pastoral and Arcadian character, shows a small group of shepherds, anxious to watch over their animals: the romantic theater which sees a shepherd on horseback singing a song to encourage the rest of his companions makes the scene affecting.','Unknown Italian Painter 700',' The Rest of the Shepherds');
insert into Information values(24,'Portrait of a child reading a book to an elephant.','Gregory Colbert','Il bambino che legge all''elefante');
insert into Information values(25,'The Burning Giraffe was created in 1937, when the artist was still in Europe, before his 8 year long exile in the United States. In 1937, the Spanish Civil War (the bloody precursor to World War II) was ongoing. This was the event that caused Dali’s migration.','Salvator Dali','Burning Giraffes in Brown');
insert into Information values(26,'The charming owner of this splendid tortoiseshell and white cat is actually kneeling in front of her enthroned pet to offer up a dish of milk, under the envious eye of the dog.  The canine and feline pairing occurs in another of Gerard''s paintings, Prelude to a Concert, while The Angora Cat, painted in collaboration with Jean-Honore Fragonard, shows a cat baffled by its reflection in a convex mirror.','Marguerite Gerard','The Cat''s Lunch');
insert into Information values(27,'Oil on canvas.The painting depicts a cat over a table playing with objects on the table.','Henriëtte Ronner','The cat at play');
insert into Information values(28,'The picture was painted around 1680, probably for either the hunting lodge of the Stadholder William III of Orange, which is now the royal palace at Soestdijk, or Het Loo Palace in Apeldoorn.
The painting shows a number of birds, both common and exotic, gathered around a pool. Hondecoeter was known for his bird studies and in particular for the realistic portrayal of the subjects','Melchior d''Hondecoeter','The Floating Feather');
insert into Information values(29,'In the composition, an owl on a branch directs a chorus of fifteen other types of birds while holding a score between its feet. Such images of different species of birds perched on tree trunks, sometimes with musical scores, were known as Concerts of birds and were popularized by Flemish artists in the early decades of the 17th century, especially Frans Snyders. ','Frans Snyders','Concert of Birds');
insert into Information values(30,'Carole Béatrice Perret is best known for paintings that explore the world of fantasy where she staged with humor and delicate impertinence, nuns with towering hairstyles, dressed in white and blue.','Carole Béatrice Perret ','Bicycle Art');
insert into Information values(31,'In fragility are hidden values of sensitivity and delicacy, of exhausted kindness and dignity, of intuition of the unspeakable and invisible that are in life, and that allow us to identify with more ease and with more passion in the moods and emotions, in the ways of being existential, of others from us','Vincenza Conte','Bicycle ride');
insert into Information values(32,'Woman in the mirror, a work of 1927, is a concentrate of Cagnaccio’s talent: an actress prepares for the show and the figure dominates the scene with a whole range of finely painted accessory objects; the trick of the mirror (which in itself is a test of skill for the ability to define the reflexes) reflects a face clouded, thinking, absent - frequent element in Cagnaccio .','Cagnaccio di San Pietro','Donna allo specchio');
insert into Information values(33,'The painting depicts a group of children attempting to make a cat dance to the music of a shawm. The cat is screeching and the dog barking but the children are having fun. However, the old man at the window clearly disapproves of their behaviour.','Jan Steen','Children Teaching a Cat to Dance');
insert into Information values(34,'The light gives all its depth to the scene. This atmospheric perspective is also accentuated by a backlight in the foreground, which catches the eye. The eye is drawn to the right by the dark mass of the boats before following the succession of buildings to the left, which diffuse into the light, towards the horizon and then the sun.','Claude Lorrain','Harbour Scene at Sunset');
insert into Information values(35,'Horsemen resting in a landscape. Collection Dordrechts Museum, purchased with support of Vereniging Rembrandt, 1978
','Aelbert Cuyp','Horsemen Resting in a Landscape');
insert into Information values(36,'The Wine Glass (also The Glass of Wine or Lady and Gentleman Drinking Wine, Dutch: Het glas wijn) is a 1660 painting by Johannes Vermeer now in the Gemäldegalerie, Berlin. It portrays a seated woman and a standing man drinking in an interior setting. The work contains the conventions of genre painting of the Delft School developed by Pieter de Hooch in the late 1650s','Jan Vermeer','The Wine Glass');
insert into Information values(37,'The picture has been variously dated between 1601 and 1610 (Caravaggio scholar John T. Spike lists the date as circa 1603 in the second revised edition of his study of the artist). It depicts a wicker basket heaped with various fruit and vegetables sitting on a stone table, caught in Caravaggio''s usual strong yet mellow shaft of light falling from top left, as if through a hole in the ceiling.','Caravaggio','Still Life with Fruit');
insert into Information values(38,'A still life (plural: still lifes) is a work of art depicting mostly inanimate subject matter, typically commonplace objects which are either natural (food, flowers, dead animals, plants, rocks, shells, etc.) or man-made (drinking glasses, books, vases, jewelry, coins, pipes, etc.).','Jan Chrucki','Still life with a lorgnette');
insert into Information values(39,'In this still life, or bodegon according to Spanish usage, Francisco de Zurbarán depicts three terracotta objects, a bronze cup and two pewter plates lined up on a table; they emerge from the darkness because they are struck by an abstract light.','Francisco de Zurbaran','Still life with cup and vases');
insert into Information values(40,'With a piercing gaze and an emphatic pointing finger, St Mark – identifiable by his fixed attribute, the lion – draws our attention to an open book: the gospel written by him. The prominent presence of an inkpot and a quill in the foreground emphasises his writer’s status.','Jan van Bijlert','Mark the Evangelist');
insert into Information values(41,'The infinite mesh that has spread from a painting to the surface of a real object transfigures a commonplace utensil into a visually and psychologically impressive work that reminds us of the scales or skin on a creature','Yayoi Kusama','Suitcase,Stepladder');
insert into Information values(42,'This work denounces the distortion of human nature in the process of the revolution and vividly reflects the tendency of ideological emancipation in the art field after the Cultural Revolution, thus aroused strong reactions and resonance of the day.','Yifei Chen','Thinking of History at My Space');
insert into Information values(43,'This painting depicts Giovannina and Amacilia Pacini, natural daughters of the composer Giovanni Pacini and adopted by Countess Julija Pavlovna Samojlova, who commissioned the painting. The work is exhibited at the Tretyakov Gallery in Moscow, one of the most important in the world. Unforgivable to miss it even for a visit of a few days. You can admire magnificent paintings and icons and also discover the deep relationship that has linked Russia and Italy for centuries. ','Karl Ivanovič Brjullov','A Rider');
insert into Information values(44,'Just finishing a Sunday meal, the members of this well-to-do family may be getting ready to return to church. The mother hands a prayer book to the younger of the boys, and the little girl holds her freshly starched cap and fan. Quiringh Gerritsz. van Brekelenkam appears to have combined a family portrait and a genre scene with a moralizing message.','Quiringh Gerritsz','Family Group in an Interior');
insert into Information values(45,'The work was commissioned for the church of the hospital of Santa Maria Nuova in Florence by the Italian banker Tommaso Portinari, a descendent of the hospital''s founder. Portinari lived for more than forty years in Bruges as a representative for the Medici family''s bank','Hugo van der Goes','Il Trittico Portinari');
insert into Information values(46,'The scene takes place in a small, private setting, open onto a quiet country scene. The saint has a young, well-characterised face that would seem to be the portrait of a man dressed as St Francis.','Francesco Raibolini','Saint Francis');
insert into Information values(47,'Caravaggio’s Bacchus presents the god lying on a triclinium bed next to a table, where a ceramic basket full of fruit triumphs: an apple, figs, pears, a peach, a quince, a bunch of grapes that protrudes and lies on the top and a pomegranate.','Michelangelo Merisi','Bacco');
insert into Information values(48,'In this work Titian thanks to the skilful use of color and its contrasts, as well as the subtle play of meanings and allusions, arrives at the perfect representation of the Renaissance woman who, like Venus, becomes a symbol of love, beauty and fertility.','Venere di Urbino','Tiziano');
insert into Information values(49,'Il bacio is an 1859 painting by the Italian artist Francesco Hayez. It is possibly his best known work. This painting conveys the main features of Italian Romanticism and has come to represent the spirit of the Risorgimento. It was commissioned by Alfonso Maria Visconti di Saliceto, who donated it to the Pinacoteca di Brera after his death.','Francesco Hayez','Il bacio');
insert into Information values(50,'In American Gothic, Grant Wood directly evoked images of an earlier generation by featuring a farmer and his daughter posed stiffly and dressed as if they were, as the artist put it, tintypes from my old family album.They stand outside of their home, built in an 1880s style known as Carpenter Gothic. Wood had seen a similar farmhouse during a visit to Eldon, Iowa.','Grant DeVolson Wood','American Gothic');
insert into Information values(51,'The Lady with an Ermine is a portrait painting widely attributed to the Italian Renaissance artist Leonardo da Vinci. Dated to 1489–1491, the work is painted in oils on a panel of walnut wood. Its subject is Cecilia Gallerani, a mistress of Ludovico Sforza (Il Moro), Duke of Milan; Leonardo was painter to the Sforza court in Milan at the time of its execution. It is the second of only four surviving portraits of women painted by Leonardo, the others being Ginevra de''Benci, La Belle Ferronnière and the Mona Lisa.','Leonardo da Vinci','La Donna con l''ermellino');
insert into Information values(52,'David is a masterpiece of Renaissance sculpture, created in marble between 1501 and 1504 by the Italian artist Michelangelo. David is a 5.17-metre, marble statue of the Biblical figure David, a favoured subject in the art of Florence.','Michelangelo','David');
insert into Information values(53,'Girl with a Pearl Earring is an oil painting by Dutch Golden Age painter Johannes Vermeer, dated c. 1665. Going by various names over the centuries, it became known by its present title towards the end of the 20th century after the earring worn by the girl portrayed there.The work has been in the collection of the Mauritshuis in The Hague since 1902 and has been the subject of various literary and cinematic treatments.','Johannes Vermeer','Girl with a Pearl Earring');
insert into Information values(54,'The Last Supper (Italian: Il Cenacolo or L''Ultima Cena) is a mural painting by the Italian High Renaissance artist Leonardo da Vinci, dated to 1495–1498. The painting represents the scene of the Last Supper of Jesus with the Twelve Apostles, as it is told in the Gospel of John – specifically the moment after Jesus announces that one of his apostles will betray him.','Leonardo Da Vinci','L''ultima cena');
insert into Information values(55,'The Mona Lisa (Italian: Gioconda or Monna Lisa) is a half-length portrait painting by Italian artist Leonardo da Vinci. Considered an archetypal masterpiece of the Italian Renaissance,it has been described as the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world','Leonardo da Vinci','Mona Lisa');
insert into Information values(56,'When the great Vincent van Gogh moved to Arles in 1888, he also visited the village of Saintes-Maries-de-la-Mer, a fishing village in the marshes of the Camargue, not far from the mouth of the Rhône. Here, the artist created some landscapes: they were marine and a view of the village, along with several drawings.','Vincent Van Gogh','Marina a Saintes Maries de la Mer');
insert into Information values(57,'After working on rural landscapes, Claude Monet returned to Paris in 1877 and made a dozen oil paintings of the Gare Saint-Lazare railway station in Paris. This was Monet''s first series of paintings concentrating on a single theme.After considering working at the Gare du Nord, he sought permission from the director of the Compagnie des Chemins de fer de l''Ouest to paint en plein air, at the Gare Saint-Lazare.','Claude Monet','Gare di Saint-Lazare');
insert into Information values(58,'The game of volleyball (jeu de paume in France), ancestor of tennis, is adopted at the European courts in the early stages of the formation of small princes. Physical exercise is in fact considered fundamental for the construction of military value and athletic activities, including ball games, are alongside the traditional learning of equestrian art and the handling of weapons. The use of the ball has a double pedagogical value: it is physical exercise for the health of the body combined with the alertness of the mind (dexterity) and is also legitimate leisure from a moral point of view because it teaches to develop strategies and to respect the rules.','Painter active at the Savoy court','Portrait of Francesco Giacinto and Carlo Emanuele II di Savoia');
insert into Information values(59,'The fabric, like the bottle, stands out against a totally empty and neutral background, a factor that distinguishes this work from other, later still lifes, which are more crowded.We can also see here the introduction of a new system of representation, one that Cézanne would subsequently develop, and that would open the way to Cubism.','Paul Cézanne','Still Life with Red Onions');
insert into Information values(60,'Comedian is a 2019 artwork by Italian artist Maurizio Cattelan. Created in an edition of three, it appears as a fresh banana affixed to a wall with duct tape. As a work of conceptual art, it consists of a certificate of authenticity with detailed diagrams and instructions for its proper display. Two editions of the piece sold for US$120,000 at Art Basel Miami Beach to significant media attention.','	Maurizio Cattelan','Comedian');






















