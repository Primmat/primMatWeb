<?php

 include(\ProcessWire\wire('files')->compile("includes/header.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>

<main>
    <section class="uk-container">
        <div class="uk-section">
            <h1 class="headingDarkBlueLine"><?php echo $page->title ?></h1>
            <div uk-grid>
                <div class="uk-width-2-3@m">
                    <?php echo $page->text ?>

                </div>
                <?php

                echo aktualitaMainImage($page);
                echo aktualitaVideo ($page);
                ?>
            </div>
        </div>
    </section>
    <?php

    echo aktualitaImages($page);

    ?>
</main>











<?php

 include(\ProcessWire\wire('files')->compile("includes/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>