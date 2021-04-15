<?php

include("includes/header.php");

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

include("includes/footer.php");

?>