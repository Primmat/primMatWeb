<?php echo reference($pages->get(1024)); ?>
</main>

<footer>
    <div class="uk-section-default footerBackground">
        <div class="uk-section footerPrimaryBacgroundColor">
            <div class="uk-container">
                <div class="uk-child-width-1-2@m uk-child-width-1-1@s" uk-grid>
                    <div class="footerInfoList">
                        <div class="footerSection">
                            <h2>Kontakt</h2>
                        </div>
                        <section class="footerSection">
                            <div>
                                <img class="footerIcon" src="/site/templates/feather/phone.svg" alt="">
                                <h4 class="footerSectionH4">Telefon</h4>
                            </div>
                            <div>
                                <p>+420 604 101 787</p>
                            </div>
                        </section>
                        <section class="footerSection">
                            <div>
                                <img class="footerIcon" src="/site/templates/feather/mail.svg" alt="">
                                <h4>E-Mail</h4>
                            </div>
                            <div>
                                <p>sekretariat@PrimMat.cz</p>
                            </div>
                        </section>
                        <section class="footerSection">
                            <div>
                                <img class="footerIcon" src="/site/templates/feather/map-pin.svg" alt="">
                                <h4>Kde nás najdete?</h4>
                            </div>
                            <div>
                                <p>Československé armády 482, 738 01 Frýdek-Místek</p>
                            </div>
                        </section>
                    </div>
                    <div>
                        <form id='form' method="POST" action="#form">
                            <fieldset class="uk-fieldset">

                                <div class="uk-margin">
                                <label class="uk-form-label errorLabel"><?php echo $nameError ?></label>
                                    <input class="uk-input formInput" type="text" placeholder="Celé jméno" name="name">
                                </div>


                                <div class="uk-margin">
                                <label class="uk-form-label errorLabel"><?php echo $emailError ?></label>
                                    <input class="uk-input formInput" type="email" placeholder="Email" name="email">
                                </div>


                                <div class="uk-margin">
                                <label class="uk-form-label errorLabel"><?php echo $messageError ?></label>
                                    <textarea class="uk-textarea formInput" rows="5" placeholder="Zpráva" name="message"></textarea>
                                </div>

                                <div class="uk-margin">
                                <label class="uk-form-label errorLabel"><?php echo $yearError ?></label>
                                    <input class="uk-input formInput" type="number" placeholder="Napište aktuální rok" name="year">
                                </div>

                                <div class="round">
                                    <button class="button" name="submit" type="submit">Odeslat</button>
                                    <label class="uk-form-label successLabel"><?php echo "<br><br>" . $success ?></label>
                                </div>

                            </fieldset>
                        </form>
                        <section class="socialIcons footerSocialIcons uk-margin">
                            <div class="socialIcon">
                                <a href="https://www.facebook.com/primmat"><img src="/site/templates/feather/facebook.svg" alt=""></a>
                            </div>
                            <div class="socialIcon">
                                <a href="https://twitter.com/primmatfm"><img src="/site/templates/feather/twitter.svg" alt=""></a>
                            </div>
                            <div class="socialIcon">
                                <a href="https://www.instagram.com/primmatfm/"><img src="/site/templates/feather/instagram.svg" alt=""></a>
                            </div>
                            <div class="socialIcon">
                                <a href="https://www.youtube.com/channel/UC0ley3BRbN3LGsIYbO0BMzQ"><img src="/site/templates/feather/youtube.svg" alt=""></a>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="footerCopyright">
        <p>PrimMat&copy; Copyright 2021</p>
    </section>
</footer>
<script>
    function openNav() {
        document.getElementById("myNav").style.height = "100%";
    }

    function closeNav() {
        document.getElementById("myNav").style.height = "0%";
    }

    var x = document.getElementsByTagName("TABLE");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].classList.add("uk-table");
        x[i].classList.add("uk-table-responsive");
        x[i].classList.add("uk-table-striped");
    }
</script>

</body>

</html>