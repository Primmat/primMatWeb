<?php

 include(\ProcessWire\wire('files')->compile("includes/header.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>

<main>
        <section>
            <div class="uk-section">
                <div uk-grid>
                    <div class="uk-width-1-1@m">


<?php

echo childrenPagesButtons ($page);
echo headings ($page);   
echo schoolVision ($page);
echo schoolStaff ($page);
echo studijniObory($page);
echo whyStudyUs($pages->get(1074),$page);

echo moreInfo ($page);
 include(\ProcessWire\wire('files')->compile("includes/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
?>