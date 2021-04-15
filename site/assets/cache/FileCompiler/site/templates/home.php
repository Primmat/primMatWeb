<?php

 include(\ProcessWire\wire('files')->compile("includes/header.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 

?>
    <header>
        <?php 
        $pageImages = $page->slider;

        echo slider($pageImages) 
        
        ?>
    </header>

    <main>
        <?php echo subjects ($pages->get(1020)) ?>
        <section>
            <div class="schoolName">
                <h1><?php echo $page->uplnyNazevSkoly ?></h1>
                <p><?php echo $page->mottoSkoly ?></p>
            </div>
        </section>
        
<?php 
echo whyStudyUsHomepage ($pages->get(1074)); 

echo homepagePosts ($pages->get(1030), $pages);

 include(\ProcessWire\wire('files')->compile("includes/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 

?>