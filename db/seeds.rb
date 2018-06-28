# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'mini_magick'

print "Creating seeds for la perla...\n"
seeds_root = File.join(__dir__, 'images/seeds')

Video.destroy_all

print "--------------> Creating Video 1 \n"
video1 = Video.new(
  title_en: "The Yellows 01 · The Jordis: political prisoners",
  title_es: "The Yellows 01 · Los Jordis: presos políticos",
  title_ca: "The Yellows 01 · Els Jordis: presos polítics",
  slug_en: "the-yellows-01",
  slug_es: "the-yellows-01",
  slug_ca: "the-yellows-01",
  body_en: "We will not tire of denouncing it until the Jordis are free. <br/> Because they are men of peace. Because they have not committed any crime!",
  body_es: "No nos cansaremos de denunciarlo hasta que los Jordis sean libres. <br/> Porque son hombres de paz. Para que no han cometido delito!",
  body_ca: "No ens cansarem de denunciar-ho fins que els Jordis siguin lliures. <br/>Perquè són homes de pau. Perquè no han comès cap delicte! ",
  category: :own,
  url: "https://www.youtube.com/watch?v=ra9sAUU9fK4",
  published_at: Time.current,
  active: true,
  available_en: true,
  available_es: true,
  available_ca: true,
  featured_home: false,
).save!(validate: false)
# file1  = File.open(File.join(seeds_root, 'the-yellows-01.png'))
# image1 = video1.build_hero_image(asset: file1)
# image1.save

print "--------------> Creating Video 2 \n"
video2 = Video.new(
  title_en: "The Yellows 02 · Yellow is forbidden",
  title_es: "The Yellows 02 · Amarillo está prohibido",
  title_ca: "The Yellows 02 · Groc prohibit",
  slug_en: "the-yellows-02",
  slug_es: "the-yellows-02",
  slug_ca: "the-yellows-02",
  body_en: "Saturday, April 21st, 2018. Spanish Cup Final between Barcelona and Sevilla. Police requisitioned everything yellow. Even plain Scarves. Everybody knows it is just another POLITICAL DECISION. Spain prohibits YELLOW and freedom of expression. This is their democracy.",
  body_es: "Sábado, 21 de abril de 2018. Final de la Copa de España entre Barcelona y Sevilla. La policía requisó todo amarillo. Incluso pañuelos sencillos. Todo el mundo sabe que es solo otra DECISIÓN POLÍTICA. España prohíbe el AMARILLO y la libertad de expresión. Esta es su democracia.",
  body_ca: "Dissabte, 21 d'abril de 2018. Final de Copa del Rei entre Barcelona i Sevilla. La policia va requisar tot groc. Tothom sap que és una altra DECISIÓ POLÍTICA. Espanya prohibeix el GROC i la llibertat d'expressió. Aquesta és la seva democràcia.",
  category: :own,
  url: "https://www.youtube.com/watch?v=4Q10Cbi_PsE",
  published_at: Time.current,
  active: true,
  available_en: true,
  available_es: true,
  available_ca: true,
  featured_home: false,
).save(validate: false)
# file2  = File.open(File.join(seeds_root, 'the-yellows-02.png'))
# image2 = video2.build_hero_image(asset: file2)
# image2.save

print "--------------> Creating Video 3 \n"
video2 = Video.new(
  title_en: "The Yellows 03 · Puigdemont",
  title_es: "The Yellows 03 · Puigdemont",
  title_ca: "The Yellows 03 · Puigdemont",
  slug_en: "the-yellows-03",
  slug_es: "the-yellows-03",
  slug_ca: "the-yellows-03",
  body_en: "Our legitimate president is still Carles Puigdemont. In exile since months ago, the Spanish state denies him his political rights and he is being prosecuted for nonexistent crimes. Crimes that are not recognised by other countries from the EU.",
  body_es: "Nuestro presidente legítimo sigue siendo Carles Puigdemont. En el exilio desde hace meses, el estado español le niega sus derechos políticos y está siendo procesado por crímenes inexistentes. Delitos que no son reconocidos por otros países de la UE.",
  body_ca: "El nostre president legítim segueix sent Carles Puigdemont. A l'exili des de fa mesos, l'estat espanyol li nega els seus drets polítics i és perseguit per crims inexistents. Crims que no són reconeguts per altres països de la UE.",
  category: :own,
  url: "https://www.youtube.com/watch?v=2WNsxn8y7xI&t=1s",
  published_at: Time.current,
  active: true,
  available_en: true,
  available_es: true,
  available_ca: true,
  featured_home: false,
).save(validate: false)
# file3  = File.open(File.join(seeds_root, 'the-yellows-03.png'))
# image3 = video3.build_hero_image(asset: file3)
# image3.save

print "--------------> Creating Video 4 \n"
video2 = Video.new(
  title_en: "The Yellows 04 · October 1st by Jon Iñarritu | Basque senator in the Spanish Senate",
  title_es: "The Yellows 04 · 1 de octubre por Jon Iñarritu | Senador vasco en el Senado español",
  title_ca: "The Yellows 04 · 1 d'octubre per Jon Iñarritu | Senador basc al Senat espanyol",
  slug_en: "the-yellows-02",
  slug_es: "the-yellows-02",
  slug_ca: "the-yellows-02",
  body_en: "Jon Iñarritu: 'Spain is the only western country that decided to deal with a political issue by means of violence'. Until this day, it refuses to give any explanations in the Senate for the totally out of proportion police attacks on civilians on October 1st, 2017.",
  body_es: "Jon Iñarritu: 'España es el único país occidental que decidió enfrentar un problema político mediante la violencia'. Hasta el día de hoy, se niega a dar explicaciones en el Senado por los ataques policiales totalmente desproporcionados contra civiles el 1 de octubre de 2017.",
  body_ca: "Jon Iñarritu: 'Espanya és l'únic país occidental que va decidir tractar un tema polític mitjançant la violència'. Fins al dia d'avui, es nega a donar explicacions al Senat sobre els atacs policials a civils totalment desprotegits l'1 d'octubre de 2017.",
  category: :own,
  url: "https://www.youtube.com/watch?v=9l0taC9_0nU",
  published_at: Time.current,
  active: true,
  available_en: true,
  available_es: true,
  available_ca: true,
  featured_home: false,
).save(validate: false)
# file3  = File.open(File.join(seeds_root, 'the-yellows-04.png'))
# image3 = video3.build_hero_image(asset: file3)
# image3.save

print "--------------> Creating Video 5 ca\n"
video2 = Video.new(
  title_en: "The Yellows 05 · You are not alone",
  title_es: "The Yellows 05 · No estáis solos",
  title_ca: "The Yellows 05 · No esteu sols",
  slug_en: "the-yellows-05-ca",
  slug_es: "the-yellows-05-ca",
  slug_ca: "the-yellows-05-ca",
  body_en: "",
  body_es: "Encarcelando a vosotros, nos han encarcelado a todos y todas. No estás solo! Su dignidad nos hace más fuertes.",
  body_ca: "Empresonant-vos a vosaltres, ens han empresonat a tots i a totes. No esteu sols! La vostra dignitat ens fa més forts.",
  category: :own,
  url: "https://www.youtube.com/watch?v=sfZrcUuu8QY",
  published_at: Time.current,
  active: true,
  available_en: false,
  available_es: false,
  available_ca: true,
  featured_home: true,
).save(validate: false)
# file5  = File.open(File.join(seeds_root, 'the-yellows-05-ca.png'))
# image5 = video5.build_hero_image(asset: file5)
# image5.save

print "--------------> Creating Video 5 en,es \n"
video2 = Video.new(
  title_en: "The Yellows 05 · You are not alone",
  title_es: "The Yellows 05 · You are not alone",
  title_ca: "The Yellows 05 · You are not alone",
  slug_en: "the-yellows-05-en",
  slug_es: "the-yellows-05-en",
  slug_ca: "the-yellows-05-en",
  body_en: "In Spain, 9 politicians and social leaders remain unjustly imprisoned, some of them for more than 7 months. They were incarcerated by means of manipulated and unfounded accounts.",
  body_es: "En España, 9 políticos y líderes sociales permanecen encarcelados injustamente, algunos de ellos por más de 7 meses. Fueron encarcelados por medio de cuentas manipuladas e infundadas.",
  body_ca: "In Spain, 9 politicians and social leaders remain unjustly imprisoned, some of them for more than 7 months. They were incarcerated by means of manipulated and unfounded accounts.",
  category: :own,
  url: "https://www.youtube.com/watch?v=S6gyZE4Mf5Y",
  published_at: Time.current,
  active: true,
  available_en: true,
  available_es: true,
  available_ca: false,
  featured_home: true,
).save(validate: false)
# file5en  = File.open(File.join(seeds_root, 'the-yellows-05-en.png'))
# image5en = video5en.build_hero_image(asset: file5en)
# image5en.save
