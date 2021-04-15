<?php

 include(\ProcessWire\wire('files')->compile("includes/header.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

echo oborPage ($page);

 include(\ProcessWire\wire('files')->compile("includes/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));

?>