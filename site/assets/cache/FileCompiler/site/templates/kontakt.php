


<?php

 include(\ProcessWire\wire('files')->compile('includes/header.php',array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>


<?php
echo "<div class='uk-container uk-container-xlarge contaktContainer'>";
echo "<div>";
echo kontakt ($page);
echo "</div>";
echo "</div>";

 include(\ProcessWire\wire('files')->compile('includes/footer.php',array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>