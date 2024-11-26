<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    <script src="./script/script.js" defer></script>
    <title>Arcadia</title>
</head>
<body>

    
    <header>
        
        <?php require_once('./shared/header.php'); ?>

        <div class="slider-wrapper">
            <button class="slide-arrow" id="slide-arrow-prev">&#8249;</button>
            <button class="slide-arrow" id="slide-arrow-next">&#8250;</button>
            <ul class="slides-container" id="slides-container">
                <li class="slide" >
                    <img class="carousel-image" src="./Animal Images/Lion.jpg" alt="A lion walks by a lioness">
                </li>
                <li class="slide">
                    <img class="carousel-image" src="./Animal Images/Girafe.jpg" alt="Two Girafes looking at the camera">
                </li>
                <li class="slide">
                    <img class="carousel-image" src="./Animal Images/Rhino.jpg" alt="A white Rhino">
                </li>
                <li class="slide">
                    <img class="carousel-image" src="./Animal Images/Cheetah.jpg" alt="Cheetah">
                </li>
            </ul>

        </div>  
          
    </header>

    <main class="main-layout">

    <section class="info-section">
        <h1>Arcadia Zoo - L'ultime aventure sauvage</h1>
            <p>Arcadia est un zoo situé en France près de la forêt de Brocéliande, 
               en bretagne depuis 1960. Ils possèdent tout un panel d'animaux,
               réparti par habitat et font extrêmement attention à leurs santés.
               Le zoo d'Arcadia a une équipe de défenseurs de la nature passionnés
               qui travaille sans relâche pour offrir des expériences exceptionnelles.
            </p>
            <button class="info-section-button">decouvrir</button>
    </section>


     <div class="mini-slide-section">
         <div class="habitats-slide-wrapper">
            <button class="mini-slide-arrow" id="mini-slide-arrow-prev">&#8249;</button>
            <button class="mini-slide-arrow" id="mini-slide-arrow-next">&#8250;</button>
            <ul class="mini-slides-container-habitats" id="mini-slides-container-habitats">
                <li class="mini-slide-habitat">
                    <img class="habitat-img" src="./Animal Images/africa.jpg" alt="Meerkat and some rhinos on background">
                    <h2>africain safari parc</h2>
                    <p class="slide-p">Couvrant 4,5 hectares, la biozone Afrique est la plus étendue du parc.
                        Elle abrite de grands mammifères tels que des rhinocéros blancs (Ceratotherium simum),
                        des zèbres de Grévy (Equus grevyi), des lions d'Afrique de l'ouest (Panthera leo). 
                    </p>
                </li>
                <li class="mini-slide-habitat">
                    <img class="habitat-img" src="./Animal Images/Kangaroo.jpg" alt="Few kangaroos">
                    <h2>bush australien</h2>
                    <p class="slide-p">Vivez une aventure australienne dans la brousse sauvage de l'Australie.
                        Voici quelques exemples de koalas du sud, de quokkas et de potoroos à long nez, d'émeus,
                        de wallabies, de wombats, de kangourous et de toute une gamme d'oiseaux indigènes,
                        dont le Coq à queue rouge, les perroquets, les pteridons et bien plus encore. 
                   </p>
                </li>
                <li class="mini-slide-habitat">
                    <img class="habitat-img" src="./Animal Images/bird.jpg" alt="Colorful bird">
                    <h2>rainforest aviary</h2>
                    <p class="slide-p">Abritant de nombreux animaux à plumes du zoo d'Arcadia,
                        le jardin des oiseaux offre un havre de paix et de verdure à plus de 170 oiseaux
                        de plus de 19 espèces différentes. Initialement connu sous le nom de Grace Bird Garden,
                        le Rainforest Aviary a été rénové et officiellement renommé pour offrir un tout nouveau foyer
                        à ces magnifiques animaux. 
                   </p>
                </li>
                <li class="mini-slide-habitat">
                    <img class="habitat-img dragon" src="./Animal Images/Wildlife-Our-Animals-Dragon-Bearded600x300.jpg" alt="bearded dragon reptile">
                    <h2>village de reptile</h2>
                    <p class="slide-p">Cet espace dédié aux serpents et lézards a été créé en 2011.
                        Le village des reptiles regroupe des pythons royaux, des pythons molures,
                        des boas constricteurs, des iguanes, des téjus… De nombreux panneaux sont disposés
                        dans le village des reptiles qui informent aussi bien sur l'anatomie des serpents 
                   </p>
                </li>
            </ul>
         </div>

         <div class="animaux-slide-wrapper">
            <button class="mini-slide-arrow1" id="mini-slide-arrow-prev-animaux">&#8249;</button>
            <button class="mini-slide-arrow1" id="mini-slide-arrow-next-animaux">&#8250;</button>
            <ul class="mini-slides-container-animaux" id="mini-slides-container-animaux">
                <li class="mini-slide-animaux">
                    <img class="animaux-img" src="./Animal Images/Animaux/Taipan.jpg" alt="Taipan">
                    <h2>Taïpan côtier</h2>
                    <p class="slide-p">Voici le serpent le plus venimeux du monde et le prédateur épique
                        de l'outback australien ! Le taipan de l'intérieur est aussi connu sous le nom de
                        serpent féroce ou petit serpent à écailles
                   </p>
                </li>
                <li class="mini-slide-animaux">
                    <img class="animaux-img" src="./Animal Images/Animaux/Swamp-WallabyAZ.jpg" alt="Wallaby">
                    <h2>wallaby bicolore</h2>
                    <p class="slide-p">Fréquentant les forêts épaisses et les marécages de l'est de
                        l'Australie, le wallaby des marais se distingue par sa fourrure brun foncé,
                        agrémentée de taches orange rouille sur son ventre, sa poitrine et la base de ses oreilles
                   </p>
                </li>
                <li class="mini-slide-animaux">
                    <img class="animaux-img" src="./Animal Images/Animaux/Owl-Barking2.jpg" alt="owl">
                    <h2>ninoxe aboyeuse</h2>
                    <p class="slide-p">On trouve des hiboux qui aboient dans tous les états et territoires
                        continentaux d'Australie, et même en Papouasie-Nouvelle-Guinée.
                        Comme leur nom l'indique, le hibou aboie et gronde en fait, tout comme un chien ! 
                   </p>
                </li>
                <li class="mini-slide-animaux">
                    <img class="animaux-img" src="./Animal Images/Animaux/quokka.jpg" alt="quokka">
                    <h2>quokka</h2>
                    <p class="slide-p">Ces marsupiaux charismatiques, connus pour leur comportement
                        amical et leurs sourires réconfortants, sont endémiques de l'Australie et
                        vivent dans des zones arbustives ou une végétation dense en bordure d'un fleuve.
                        Les quokkas sont l'un des plus petits wallabies et étroitement
                        liés à une autre espèce indigène emblématique, le kangourou.
                   </p>
                </li>
                <li class="mini-slide-animaux">
                    <img class="animaux-img" src="./Animal Images/Animaux/Lemur-Ring_Tailed2-1.jpg" alt="lemur">
                    <h2>lémur catta</h2>
                    <p class="slide-p">Ces primates parfaits sont originaires des forêts de Madagascar.
                        Les lémuriens à queue annulaire sont reconnaissables par leur longue queue rayée
                        noire et blanche et leurs yeux dorés. Ils utilisent leurs mains et leurs pieds
                        pour se déplacer sans effort dans les arbres. Leur queue n'est pas préhensile,
                        mais plutôt pour s'équilibrer.
                   </p>
                </li>
            </ul>
         </div>


         <div class="wrapper-service">
            <div class="services" id="services">
                <div class="services-div">
                    <img class="services-img" src="./Animal Images/Restaurant.jpg" alt="Restaurant image">
                    <h2>Restauration</h2>
                    <p class="slide-p">Nos restaurants, situés dans tout le zoo d'Arcadia,
                    satisfont une grande variété de goûts et offrent un menu complet de plats et 
                    boissons frais, chauds et froids. Vous trouverez toujours un endroit pour vous 
                    détendre et profiter de votre petit déjeuner, thé du matin, le déjeuner ou une collation rapide!
                    </p>
                </div>
            </div>
         </div>
    </div>


    <section class="avis-section">
        <h2>avis visiteurs</h2>
        <div class="avis-wrapper">
            <div class="avis">Parc absolument superbe,la décoration du parc ainsi que des enclos est incroyable</div>
            <div class="avis">Magnifique parc zoologique avec des animaux bien soignés de grands espaces</div>
            <div class="avis">Super parc,soigneurs passionnés, de nouveaux espaces pour les animaux</div>
        </div>

        <a href="./pages/avis.php"><button class="info-section-button">laisser un avis</button></a>

    </section>
</main>


    
<?php require_once('./shared/footer.php'); ?>


    
</body>
</html>

