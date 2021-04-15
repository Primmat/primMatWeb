<?php

 include(\ProcessWire\wire('files')->compile("includes/header.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>

<main>
    <section class="posts">
        <div class='uk-section'>
            <div class="uk-container">
                <div class='postsPageHeader'>
                    <div class="postsPageIconDiv">
                        <div class="postsPageIcon">
                            <img src="/site/templates/feather/file.svg" alt="">
                        </div>
                    </div>
                    <div class="postsPageHeadingText">
                        <div>
                            <h1>Nejnovější příspěvky</h1>
                            <p>Co se u nás na škole odehrálo za poslední dobu</p>
                        </div>
                    </div>
                </div>
            </div>


        <?php

        echo aktuality($page, $page); 
        
        ?>


        </div>
    </section>











    <?php

 include(\ProcessWire\wire('files')->compile("includes/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

    ?>