<?php

function mobileMenu($homepage)
{

    $mobileMenu = "<ul class='mobileMenu'>";
    $mobileMenu .= "<li><a href='/'>" . $homepage->title . "</a></li>";
    foreach ($homepage->children as $child) {
        $mobileMenu .= "<li><a href='" . $child->url . "'>" . $child->title . "</a></li>";
    }

    $mobileMenu .= "</ul>";

    $mobileMenu .= "<ul class='mobileMenu mobilelinksMenuRow uk-child-width-1-2' uk-grid>";
    $mobileMenu .= "<li><a href='https://bakalari.primmat.cz/bakaweb/next/login.aspx'>Bakaláři</a></li>";
    $mobileMenu .= "<li><a href='http://app.itrivio.cz/primmat/'>iTrivio.cz</a></li>";
    $mobileMenu .= "<li><a href='http://portal.office.com/'>Office 365</a></li>";
    $mobileMenu .= "<li><a href='http://mail.primmat.cz/'>Webmail</a></li>";
    $mobileMenu .= "</ul>";

    return $mobileMenu;
}


function desktopMenu ($homepage) {
    $desktopMenu = "<ul class='uk-navbar-nav'>";
    $desktopMenu .= "<li><a href='/'>" . $homepage->title . "</a></li>";
    foreach ($homepage->children as $child) {
        if ($child->children->count && $child->id !== 1030) {
            $desktopMenu .= "<li><a href='" . $child->url . "'>" . $child->title . "</a>";
            $desktopMenu .= "<div class='uk-navbar-dropdown'>";
            $desktopMenu .= "<ul class='uk-nav uk-navbar-dropdown-nav'>";
            foreach ($child->children as $childOfChild) {
                $desktopMenu .= "<li><a href='" . $childOfChild->url . "'>" . $childOfChild->title . "</a></li>";
            }
            $desktopMenu .= "</ul>";
            $desktopMenu .= "</div>";
            $desktopMenu .= "</li>";
        } else {
            $desktopMenu .= "<li><a href='" . $child->url . "'>" . $child->title . "</a></li>";
        }
    }

    $desktopMenu .= "</ul>";

    return $desktopMenu;
}

/* Homeapage */

function subjects($parentPage)
{

    $subjectsSection = "<section>";
    $subjectsSection .= "<div class='obory uk-container'>";
    $subjectsSection .= "<div class='uk-child-width-1-3@m' uk-grid uk-scrollspy='cls: uk-animation-slide-top; target: .uk-card; delay: 300; repeat: false' uk-height-match='target: > div > .uk-card; row: false'>";
    foreach ($parentPage->children as $subject) {

        $subjectsSection .= "<div>";
        $subjectsSection .= "<div class='uk-card uk-card-default uk-card-body'>";
        $subjectsSection .= "<h3 class='uk-card-title'>" . $subject->title . "</h3>";
        $subjectsSection .= "<p>" . $subject->text . "</p>";
        $subjectsSection .= "<div class='round'>";
        $subjectsSection .= "<a class='button' href='" . $subject->link . "'>Číst více →</a>";
        $subjectsSection .= "</div>";
        $subjectsSection .= "</div>";
        $subjectsSection .= "</div>";
    };
    $subjectsSection .= "</div>";
    $subjectsSection .= "</div>";
    $subjectsSection .= "</section>";

    return $subjectsSection;
}

function slider($sliderImages)
{
    $slider = "<div class='uk-position-relative uk-visible-toggle uk-light' tabindex='-1' uk-slideshow='autoplay: true; ratio: 11:5'>";
    $slider .= "<ul class='uk-slideshow-items'>";
    foreach ($sliderImages as $sliderImage) {
        $slider .= "<li>";
        $slider .= "<div class='uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-bottom-left'>";
        $slider .= "<img src='$sliderImage->url' alt='' uk-cover>";
        $slider .= "</div>";
        $slider .= "</li>";
    }
    $slider .= "</ul>";

    $slider .= "<a class='uk-position-center-left uk-position-small uk-hidden-hover' href='#' uk-slidenav-previous uk-slideshow-item='previous'></a>";
    $slider .= "<a class='uk-position-center-right uk-position-small uk-hidden-hover' href='#' uk-slidenav-next uk-slideshow-item='next'></a>";

    $slider .= "</div>";

    return $slider;
}

function whyStudyUsHomepage($parentPage)
{

    $whyStudyUsSection =  "<section class='whyStudyUs'>";
    $whyStudyUsSection .= "<div class='primmatColorOverlay uk-section'>";

    $whyStudyUsSection .= "<div class='custom-shape-divider-top-1612880798'>";
    $whyStudyUsSection .= "<svg data-name='Layer 1' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1200 120' preserveAspectRatio='none'>";
    $whyStudyUsSection .= "<path d='M1200 120L0 16.48 0 0 1200 0 1200 120z' class='shape-fill'></path>";
    $whyStudyUsSection .= "</svg>";
    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "<div class='uk-container whyStudyUsContent'>";
    $whyStudyUsSection .= "<div class='uk-child-width-1-1@s uk-child-width-1-2@m ' uk-grid>";
    $whyStudyUsSection .= "<div class='whyStudyUsText2'>";
    $whyStudyUsSection .= "<h2>" . $parentPage->title . "</h2>";
    $whyStudyUsSection .= "<p>" . $parentPage->text . "</p>";

    $whyStudyUsSection .= "<div class='round'>";
    $whyStudyUsSection .= "<a class='button' href='https://www.primmat.cz/o-skole/studijni-obory/'>Číst více →</a>";
    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "<div style='padding-top: 20px' class='socialIcons'>";
    $whyStudyUsSection .= "<div class='socialIcon'>";
    $whyStudyUsSection .= "<a href='https://www.facebook.com/primmat'><img src='/site/templates/feather/facebook.svg' alt=''></a>";
    $whyStudyUsSection .= "</div>";
    $whyStudyUsSection .= "<div class='socialIcon'>";
    $whyStudyUsSection .= "<a href='https://twitter.com/primmatfm'><img src='/site/templates/feather/twitter.svg' alt=''></a>";
    $whyStudyUsSection .= "</div>";
    $whyStudyUsSection .= "<div class='socialIcon'>";
    $whyStudyUsSection .= "<a href='https://www.instagram.com/primmatfm/'><img src='/site/templates/feather/instagram.svg' alt=''></a>";
    $whyStudyUsSection .= "</div>";
    $whyStudyUsSection .= "<div class='socialIcon'>";
    $whyStudyUsSection .= "<a href='https://www.youtube.com/channel/UC0ley3BRbN3LGsIYbO0BMzQ'><img src='/site/templates/feather/youtube.svg' alt=''></a>";
    $whyStudyUsSection .= "</div>";
    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "<div class='uk-child-width-1-1@s uk-child-width-1-2@m uk-grid-match' uk-grid='parallax: 100'>";


    foreach ($parentPage->children->slice(0, 4) as $reason) {
        $whyStudyUsSection .= "<div>";
        $whyStudyUsSection .= "<div class='uk-card uk-card-body whyStudyUsCard whyStudyUsCard4'>";
        $whyStudyUsSection .= "<img src='/site/templates/oboryFeather/";
        switch ($reason->ikony->id) {
            case 1:
                $whyStudyUsSection .= "mail.svg'";
                break;
            case 2:
                $whyStudyUsSection .= "map-pin.svg'";
                break;
            case 3:
                $whyStudyUsSection .= "award.svg'";
                break;
            case 4:
                $whyStudyUsSection .= "book-open.svg'";
                break;
            case 5:
                $whyStudyUsSection .= "book.svg'";
                break;
            case 6:
                $whyStudyUsSection .= "bookmark.svg'";
                break;
            case 7:
                $whyStudyUsSection .= "settings.svg'";
                break;
            case 8:
                $whyStudyUsSection .= "users.svg'";
                break;
            case 9:
                $whyStudyUsSection .= "map.svg'";
                break;
            case 10:
                $whyStudyUsSection .= "credit-card.svg'";
                break;
            case 11:
                $whyStudyUsSection .= "dollar-sign.svg'";
                break;
            case 12:
                $whyStudyUsSection .= "file-text.svg'";
                break;
            case 13:
                $whyStudyUsSection .= "file.svg'";
                break;
            case 14:
                $whyStudyUsSection .= "gift.svg'";
                break;
            case 15:
                $whyStudyUsSection .= "star.svg'";
                break;
            case 16:
                $whyStudyUsSection .= "user-check.svg'";
                break;
            case 17:
                $whyStudyUsSection .= "user.svg'";
                break;
            case 18:
                $whyStudyUsSection .= "camera.svg'";
                break;
            case 19:
                $whyStudyUsSection .= "globe.svg'";
                break;
            case 20:
                $whyStudyUsSection .= "hearth.svg'";
                break;
            case 21:
                $whyStudyUsSection .= "check.svg'";
                break;
            case 22:
                $whyStudyUsSection .= "lock.svg'";
                break;
            case 23:
                $whyStudyUsSection .= "unlock.svg'";
                break;
            case 24:
                $whyStudyUsSection .= "message-square.svg'";
                break;
            case 25:
                $whyStudyUsSection .= "navigation.svg'";
                break;
            case 26:
                $whyStudyUsSection .= "plus.svg'";
                break;
            case 27:
                $whyStudyUsSection .= "shield.svg'";
                break;
            case 28:
                $whyStudyUsSection .= "smartphone.svg'";
                break;
            case 29:
                $whyStudyUsSection .= "thumbs-up.svg'";
                break;
            case 30:
                $whyStudyUsSection .= "wifi.svg'";
                break;
            case 31:
                $whyStudyUsSection .= "x.svg'";
                break;
            case 32:
                $whyStudyUsSection .= "smile.svg'";
                break;
            default:
                $whyStudyUsSection .= "bookmark.svg'";
                break;
        }

        $whyStudyUsSection .= "alt='' class='whyStudyUsIcon'>";
        $whyStudyUsSection .= "<h3 class='uk-card-title'>" . $reason->title . "</h3>";
        $whyStudyUsSection .= "</div>";
        $whyStudyUsSection .= "</div>";
    }

    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "</div>";
    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "<div class='custom-shape-divider-bottom-1612880903'>";
    $whyStudyUsSection .= "<svg data-name='Layer 1' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1200 120' preserveAspectRatio='none'>";
    $whyStudyUsSection .= "<path d='M1200 120L0 16.48 0 0 1200 0 1200 120z' class='shape-fill'></path>";
    $whyStudyUsSection .= "</svg>";
    $whyStudyUsSection .= "</div>";

    $whyStudyUsSection .= "</div>";
    $whyStudyUsSection .= "</section>";


    return $whyStudyUsSection;
}


function homepagePosts($postsPage, $allPages)
{

    $importantPost = $allPages->find("template=duleziteUpozorneni, sort=-created")->first();
    $posts = $allPages->find("template=aktualita, sort=-created")->slice(0, 2);
    // bd($importantPost);

    $postsSection = "<section class='posts'>";
    $postsSection .= "<div class='uk-section uk-section-small'>";
    $postsSection .= "<div class='centerContent postsHeader'>";
    $postsSection .= "<h2>" . $postsPage->title . "</h2>";
    $postsSection .= "<p>" . $postsPage->text . "</p>";
    $postsSection .= "</div>";
    $postsSection .= "<div class='uk-container'>";
    $postsSection .= "<div class='uk-child-width-1-3@m' uk-grid uk-height-match='target: > div > .uk-card; row: false'>";


    $postsSection .= "<div>";
    $postsSection .= "<div class='uk-card uk-card-default postCard ImportantPostCard'>";
    $postsSection .= "<a class='postLink' href='" . $importantPost->url . "'>";
    $postsSection .= "<div class='uk-card-media-top postImageZoom'>";

    if (!$importantPost->postImage) {
        $postsSection .= "<img class='responsivePostImage' src='" . $postsPage->postImage->url . "' alt=''>";
    } elseif ($importantPost && $importantPost->postImage->description) {
        $postsSection .= "<img class='responsivePostImage' src='" . $importantPost->postImage->url . "' alt='" . $importantPost->postImage->description . "'>";
    } else {
        $postsSection .= "<img class='responsivePostImage' src='" . $importantPost->postImage->url . "' alt=''>";
    }

    $postsSection .= "</div>";
    $postsSection .= "<div class='uk-card-body'>";
    $postsSection .= "<p class='postDate'>" . date('j' . " / " . 'n' . " / " . 'Y', $importantPost->created) . " - <span class='importantPostDateTitle'>DŮLEŽITÉ UPOZORNĚNÍ</span></p>";
    $postsSection .= "<h3 class='uk-card-title PostTitle'>" .  $importantPost->title . "</h3>";
    $postsSection .= "<p class='postArrow'>⟶</p>";
    $postsSection .= "</div>";
    $postsSection .= "</a>";
    $postsSection .= "</div>";
    $postsSection .= "</div>";

    foreach ($posts as $post) {
        $postsSection .= "<div>";
        $postsSection .= "<div class='uk-card uk-card-default postCard'>";
        $postsSection .= "<a class='postLink' href='" . $post->url . "'>";
        $postsSection .= "<div class='uk-card-media-top postImageZoom'>";

        if (!$post->postImage) {
            $postsSection .= "<img class='responsivePostImage' src='" . $postsPage->postImage->url . "' alt=''>";
        } elseif ($post->postImage && $post->postImage->description) {
            $postsSection .= "<img class='responsivePostImage' src='" . $post->postImage->url . "' alt='" . $post->postImage->description . "'>";
        } else {
            $postsSection .= "<img class='responsivePostImage' src='" . $post->postImage->url . "' alt=''>";
        }

        $postsSection .= "</div>";
        $postsSection .= "<div class='uk-card-body'>";
        $postsSection .= "<p class='postDate'>" . date('j' . " / " . 'n' . " / " . 'Y', $post->created) . "</p>";
        $postsSection .= "<h3 class='uk-card-title PostTitle'>" . $post->title . "</h3>";
        $postsSection .= "<p class='postArrow'>⟶</p>";
        $postsSection .= "</div>";
        $postsSection .= "</a>";
        $postsSection .= "</div>";
        $postsSection .= "</div>";
    }
    $postsSection .= "</div>";
    $postsSection .= "</div>";
    $postsSection .= "</div>";
    $postsSection .= "</section>";
    return $postsSection;
}

function reference($referencePage)
{
    $referenceSection = "<section class='reference uk-section uk-section-large uk-container uk-container-xlarge'>";
    $referenceSection .= "<div class='uk-position-relative uk-visible-toggle uk-light' tabindex='-1' uk-slider='autoplay: true'>";
    $referenceSection .= "<ul class='uk-slider-items uk-grid'>";
    foreach ($referencePage->children as $absolvent) {
        $referenceSection .= "<li class='uk-width-1-1'>";
        $referenceSection .= "<div class='uk-panel'>";
        $referenceSection .= "<div class='referenceUvozovky'>";
        $referenceSection .= "<img src='/site/templates/feather/quote.svg' alt=''>";
        $referenceSection .= "</div>";
        $referenceSection .= "<div class='referenceText uk-position-center'>";
        $referenceSection .= "<div class='uk-container uk-container-small'>";

        $referenceSection .= "<div class='uk-visible@m'>";
        $referenceSection .= "<p uk-slider-parallax=' x: 400,-400'>" . $absolvent->text . "</p>";
        $referenceSection .= "</div>";
        $referenceSection .= "<div class='uk-hidden@m'>";
        $referenceSection .= "<p uk-slider-parallax=' x: 400,-400'>";
        if (strlen($absolvent->text) > 140) {
            $referenceSection .= substr($absolvent->text, 0, 140) . "...";
        } else {
            $referenceSection .= $absolvent->text;
        }
        $referenceSection .= "</p>";
        $referenceSection .= "</div>";

        $referenceSection .= "<p class='referenceAbsolvent' uk-slider-parallax='x: 500,-500'>" . " - " . $absolvent->title . " - absolvent " . $absolvent->rokAbsolventa . "</p>";
        $referenceSection .= "</div></div></div></li>";
    }

    $referenceSection .= "</ul>";
    $referenceSection .= "<a class='referencePrepinac uk-position-center-left uk-position-small uk-visible@m' href='#' uk-slidenav-previous uk-slider-item='previous'></a>";
    $referenceSection .= "<a class='referencePrepinac uk-position-center-right uk-position-small uk-visible@m' href='#' uk-slidenav-next uk-slider-item='next'></a>";

    $referenceSection .= "</div></section>";

    return $referenceSection;
}

/* Homeapage */

/* aktuality page */


function aktuality($aktuality, $parentPage)
{

    $aktualitySection = "<div class='uk-container'>";
    $aktualitySection .= "<div class='uk-child-width-1-3@m uk-child-width-1-1@s' uk-grid uk-height-match='target: > div > .uk-card; row: false'>";
    foreach ($aktuality->children->sort("-created")->slice(0, 9) as $aktualita) {
        $aktualitySection .= "<div>";
        $aktualitySection .= "<div class='uk-card uk-card-default postCard'>";
        $aktualitySection .= "<a class='postLink' href='" . $aktualita->url . "'>";
        $aktualitySection .= "<div class='uk-card-media-top postImageZoom'>";

        if (!$aktualita->postImage) {
            $aktualitySection .= "<img class='responsivePostImage' src='" . $parentPage->postImage->url . "' alt=''>";
        } elseif ($aktualita->postImage && $aktualita->postImage->description) {
            $aktualitySection .= "<img class='responsivePostImage' src='" . $aktualita->postImage->url . "' alt='" . $aktualita->postImage->description . "'>";
        } else {
            $aktualitySection .= "<img class='responsivePostImage' src='" . $aktualita->postImage->url . "' alt=''>";
        }

        $aktualitySection .= "</div>";
        $aktualitySection .= "<div class='uk-card-body'>";
        $aktualitySection .= "<p class='postDate'>" . date('j' . " / " . 'n' . " / " . 'Y', $aktualita->created) . "</p>";
        if (strlen($aktualita->title) > 80) {
            $aktualitySection .= "<h3 class='uk-card-title PostTitle'>" . substr($aktualita->title, 0, 80) . '...' . "</h3>";
        } else {
            $aktualitySection .= "<h3 class='uk-card-title PostTitle'>" . $aktualita->title . "</h3>";
        }
        $aktualitySection .= "<p class='postArrow'>⟶</p>";
        $aktualitySection .= "</div></a></div></div>";
    }

    $aktualitySection .= "</div></div>";

    return $aktualitySection;
}
/* aktuality page */
/* aktualita */

function aktualitaMainImage($aktualita)
{

    $mainImage = "<div class='uk-width-1-3@m'>";
    if ($aktualita->postImage) {
        $mainImage .= "<div class='postMainImage'>";
        if ($aktualita->postImage->description) {
            $mainImage .= "<img src='" . $aktualita->postImage->url . "' alt='" . $aktualita->postImage->description . "'>";
        } else {
            $mainImage .= "<img src='" . $aktualita->postImage->url . "' alt=''>";
        }
        $mainImage .= "</div>";
    }
    $mainImage .= "</div>";

    return $mainImage;
}

function aktualitaVideo($aktualita)
{
    $videoCode = "";
    if (strlen($aktualita->video)) {
        $videoUrlCode = str_replace("https://www.youtube.com/watch?v=", "", "$aktualita->video");
        $videoCode = "<iframe width='560' height='315' src='https://www.youtube.com/embed/" . $videoUrlCode . "' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>";
    }

    return $videoCode;
}



function aktualitaImages($aktualita)
{
    if ($aktualita->images) {
        $aktualitaImagesSection = "<section class='uk-container'>";
        $aktualitaImagesSection .= "<div class='uk-child-width-1-4@m' uk-grid uk-lightbox='animation: slide'>";
        foreach ($aktualita->images as $aktualitaImage) {
            $aktualitaImagesSection .= "<div>";
            $aktualitaImagesSection .= "<div class='postImagesSection'>";
            if ($aktualitaImage->description) {
                $aktualitaImagesSection .= "<a class='uk-inline' href='" . $aktualitaImage->url . "' data-caption='" . $aktualitaImage->description . "'>";
                $aktualitaImagesSection .= "<img src='" . $aktualitaImage->url . "' alt='" . $aktualitaImage->description . "'>";
            } else {
                $aktualitaImagesSection .= "<a class='uk-inline' href='" . $aktualitaImage->url . "' data-caption=''>";
                $aktualitaImagesSection .= "<img src='" . $aktualitaImage->url . "' alt=''>";
            }
            $aktualitaImagesSection .= "</a>";
            $aktualitaImagesSection .= "</div>";
            $aktualitaImagesSection .= "</div>";
        }
        $aktualitaImagesSection .= "</div>";
        $aktualitaImagesSection .= "</section>";

        return $aktualitaImagesSection;
    }
}

/* aktualita */
/* tlačítka podstránek */

function childrenPagesButtons($parentPage)
{
    if ($parentPage->children->count) {

        if ($parentPage->id !== 1041 && $parentPage->id !== 1043 && $parentPage->id !== 1042) {

            $buttonsSection = "<div>";
            $buttonsSection .= "<nav class='uk-container uk-margin uk-flex uk-flex-center'>";
            $buttonsSection .= "<div class='navbarOnSites'>";
            $buttonsSection .= "<ul>";
            foreach ($parentPage->children as $button) {
                $buttonsSection .= "<li>";
                $buttonsSection .= "<div class='sitesRound'>";
                $buttonsSection .= "<a class='sitesButton' href='" . $button->url . "'>" . $button->title . "</a>";
                $buttonsSection .= "</div>";
                $buttonsSection .= "</li>";
            }
            $buttonsSection .= "</ul>";
            $buttonsSection .= "</div>";
            $buttonsSection .= "</nav>";
            $buttonsSection .= "</div>";

            return $buttonsSection;
        }
    }
}

/* tlačítka podstránek */

/* nadpis a podnadpis  */

function headings($usedPage)
{
    $headingSection = "<div class='uk-container uk-container-small AboutSchoolVision'>";

    $headingSection .= "<section class='uk-section uk-padding-small'>";
    $headingSection .= "<div>";

    if ($usedPage->id == 1043) {
        $headingSection .= "<div class='socialIcon'>";
        $headingSection .= "<img src='/site/templates/feather/teachers.svg' alt=''>";
        $headingSection .= "</div>";
    }

    $headingSection .= "<h2>" . $usedPage->title . "</h2>";
    $trimmedSecondaryTitle = str_ireplace('<p>','',$usedPage->secondaryTitle); 
    $trimmedSecondaryTitle = str_ireplace('<p>','',$trimmedSecondaryTitle);     

    $headingSection .= "<h3>" . $trimmedSecondaryTitle . "</h3>";
    $headingSection .= "</div>";
    $headingSection .= "</section>";

    $headingSection .= "<section>";
    $headingSection .= $usedPage->text;
    $headingSection .= "</section>";

    $headingSection .= "</div>";

    return $headingSection;
}



/* nadpis a podnadpis  */

/* Další informace */

function moreInfo($usedPage)
{
    if (strlen(($usedPage->text2)) > 0) {
        $moreInfoSection = "<div class='uk-section uk-section-muted'>";
        $moreInfoSection .= "<section class='uk-container'>";
        $moreInfoSection .= "<div class='uk-margin'>";
        $moreInfoSection .= "<h2 class='AboutSchoolVisionHeader centerContent'>Další informace</h2>";
        $moreInfoSection .= "</div>";
        $moreInfoSection .= "<div class='uk-container'>";
        $moreInfoSection .= $usedPage->text2;
        $moreInfoSection .= "</div>";
        $moreInfoSection .= "</section>";
        $moreInfoSection .= "</div>";

        return $moreInfoSection;
    }
}

/* Další informace */

/* Vize školy */

function schoolVision($parentPage)
{
    if ($parentPage->id == 1041) {

        $schoolVisionSection = "<div class='uk-container'>";
        $schoolVisionSection .= "<section class='uk-section'>";
        $schoolVisionSection .= "<h2 class='AboutSchoolVisionHeader centerContent'>" . $parentPage->thirdTitle . "</h2>";
        $schoolVisionSection .= "<div class='uk-child-width-1-3@m uk-grid-match' uk-grid='parallax: 100'>";
        foreach ($parentPage->children as $reasons) {
            $schoolVisionSection .= "<div>";
            $schoolVisionSection .= "<div class='uk-card uk-card-default uk-card-body uk-grid-margin'>";
            $schoolVisionSection .= "<h3>" . $reasons->title . " </h3>";
            $schoolVisionSection .= $reasons->text;
            $schoolVisionSection .= "</div>";
            $schoolVisionSection .= "</div>";
        }
        $schoolVisionSection .= "</div>";
        $schoolVisionSection .= "</section>";
        $schoolVisionSection .= "</div>";

        return $schoolVisionSection;
    }
}

/* Vize školy */

/* pracovnící školy */

function schoolStaff($parentPage)
{
    if ($parentPage->id == 1043) {

        $staffSection = "<div class='uk-container uk-container-small AboutSchoolVision'>";
        $staffSection .= "<section class='uk-section uk-padding'>";
        $staffSection .= "<div>";
        $staffSection .= "<h2>Pedagogičtí pracovníci</h2>";
        $staffSection .= "</div>";
        $staffSection .= "</section>";
        $staffSection .= "</div>";


        $staffSection .= "<div class='uk-container'>";
        $staffSection .= "<section>";
        $staffSection .= "<div class='uk-child-width-1-3@m uk-grid-match' uk-grid>";

        foreach ($parentPage->children as $staffMember) {
            if ($staffMember->pracovnik->id == 1) {
                $staffSection .= "<div class='SchoolStaffMember'>";
                $staffSection .= "<div class='uk-card uk-card-default uk-card-body'>";
                $staffSection .= "<div class='uk-text-center'>";
                $staffSection .= "<div class='socialIcon'>";
                $staffSection .= "<a href=''><img src='/site/templates/feather/teacher.svg' alt=''></a>";
                $staffSection .= "</div>";
                $staffSection .= "</div>";
                $staffSection .= "<div class='uk-text-center'>";
                $staffSection .= $staffMember->title;
                $staffSection .= "</div>";
                $staffSection .= $staffMember->text;
                $staffSection .= "</div>";
                $staffSection .= "</div>";
            }
        }

        $staffSection .= "</div>";
        $staffSection .= "</section>";

        $staffSection .= "<div class='uk-container uk-container-small AboutSchoolVision'>";
        $staffSection .= "<section class='uk-section uk-padding'>";
        $staffSection .= "<div>";
        $staffSection .= "<h2>Nepedagogičtí pracovníci</h2>";
        $staffSection .= "</div>";
        $staffSection .= "</section>";
        $staffSection .= "</div>";

        $staffSection .= "<div class='uk-container'>";
        $staffSection .= "<section>";
        $staffSection .= "<div class='uk-child-width-1-3@m uk-grid-match' uk-grid>";

        foreach ($parentPage->children as $staffMember) {
            if ($staffMember->pracovnik->id == 2) {
                $staffSection .= "<div class='SchoolStaffMember'>";
                $staffSection .= "<div class='uk-card uk-card-default uk-card-body'>";
                $staffSection .= "<div class='uk-text-center'>";
                $staffSection .= "<div class='socialIcon'>";
                $staffSection .= "<a href=''><img src='/site/templates/feather/teacher.svg' alt=''></a>";
                $staffSection .= "</div>";
                $staffSection .= "</div>";
                $staffSection .= "<div class='uk-text-center'>";
                $staffSection .= $staffMember->title;
                $staffSection .= "</div>";
                $staffSection .= $staffMember->text;
                $staffSection .= "</div>";
                $staffSection .= "</div>";
            }
        }

        $staffSection .= "</div>";
        $staffSection .= "</section>";


        $staffSection .= "</div>";
        $staffSection .= "</div>";
        $staffSection .= "</div>";
        $staffSection .= "</div>";
        $staffSection .= "</section>";

        return $staffSection;
    }
}

/* pracovnící školy */

/* studijní obory */

function studijniObory($parentPage)
{
    if ($parentPage->id == 1042) {
        $oborySection = "<div class='uk-container'>";
        $oborySection .= "<section class='uk-section uk-section-small'>";
        $oborySection .= "<div class='uk-child-width-1-3@m uk-light' uk-grid>";
        foreach ($parentPage->children as $obor) {
            $oborySection .= "<div>";
            $oborySection .= "<div class='uk-background-cover uk-height-medium uk-panel' style='background-image: url(" . $obor->subjectImage->url . ")'>";
            $oborySection .= "<div class='whyStudyUsPagePrimmatColorOverlay uk-flex uk-flex-center uk-flex-middle'>";
            $oborySection .= "<div class='round4'>";
            $oborySection .= "<a class='button' href='" . $obor->url . "'>" . $obor->title . "</a>";
            $oborySection .= "</div>";
            $oborySection .= "</div>";
            $oborySection .= "</div>";
            $oborySection .= "</div>";
        }
        $oborySection .= "</div>";
        $oborySection .= "</section>";
        $oborySection .= "</div>";

        return $oborySection;
    }
}

function whyStudyUs($parentPage, $subjectsPage)
{
    if ($subjectsPage->id == 1042) {
        $whyStudyUsSection = "<section class='whyStudyUs'>";
        $whyStudyUsSection .= "<div class='primmatColorOverlay uk-section whyStudyUsPageHeaderSection '>";
        $whyStudyUsSection .= "<div class='uk-container whyStudyUsContent'>";
        $whyStudyUsSection .= "<div class='whyStudyUsPageHeading'>";
        $whyStudyUsSection .= "<h2>Proč studovat PrimMat</h2>";
        $whyStudyUsSection .= "</div>";
        $whyStudyUsSection .= "<div class='uk-child-width-1-4@m uk-grid-match whyStudyUsPageBoxesSection' uk-grid>";

        foreach ($parentPage->children as $reason) {
            $whyStudyUsSection .= "<div>";
            $whyStudyUsSection .= "<div class='uk-card uk-card-body whyStudyUsCard whyStudyUsCard4'>";
            $whyStudyUsSection .= "<img src='/site/templates/oboryFeather/";
            switch ($reason->ikony->id) {
                case 1:
                    $whyStudyUsSection .= "mail.svg'";
                    break;
                case 2:
                    $whyStudyUsSection .= "map-pin.svg'";
                    break;
                case 3:
                    $whyStudyUsSection .= "award.svg'";
                    break;
                case 4:
                    $whyStudyUsSection .= "book-open.svg'";
                    break;
                case 5:
                    $whyStudyUsSection .= "book.svg'";
                    break;
                case 6:
                    $whyStudyUsSection .= "bookmark.svg'";
                    break;
                case 7:
                    $whyStudyUsSection .= "settings.svg'";
                    break;
                case 8:
                    $whyStudyUsSection .= "users.svg'";
                    break;
                case 9:
                    $whyStudyUsSection .= "map.svg'";
                    break;
                case 10:
                    $whyStudyUsSection .= "credit-card.svg'";
                    break;
                case 11:
                    $whyStudyUsSection .= "dollar-sign.svg'";
                    break;
                case 12:
                    $whyStudyUsSection .= "file-text.svg'";
                    break;
                case 13:
                    $whyStudyUsSection .= "file.svg'";
                    break;
                case 14:
                    $whyStudyUsSection .= "gift.svg'";
                    break;
                case 15:
                    $whyStudyUsSection .= "star.svg'";
                    break;
                case 16:
                    $whyStudyUsSection .= "user-check.svg'";
                    break;
                case 17:
                    $whyStudyUsSection .= "user.svg'";
                    break;
                case 18:
                    $whyStudyUsSection .= "camera.svg'";
                    break;
                case 19:
                    $whyStudyUsSection .= "globe.svg'";
                    break;
                case 20:
                    $whyStudyUsSection .= "hearth.svg'";
                    break;
                case 21:
                    $whyStudyUsSection .= "check.svg'";
                    break;
                case 22:
                    $whyStudyUsSection .= "lock.svg'";
                    break;
                case 23:
                    $whyStudyUsSection .= "unlock.svg'";
                    break;
                case 24:
                    $whyStudyUsSection .= "message-square.svg'";
                    break;
                case 25:
                    $whyStudyUsSection .= "navigation.svg'";
                    break;
                case 26:
                    $whyStudyUsSection .= "plus.svg'";
                    break;
                case 27:
                    $whyStudyUsSection .= "shield.svg'";
                    break;
                case 28:
                    $whyStudyUsSection .= "smartphone.svg'";
                    break;
                case 29:
                    $whyStudyUsSection .= "thumbs-up.svg'";
                    break;
                case 30:
                    $whyStudyUsSection .= "wifi.svg'";
                    break;
                case 31:
                    $whyStudyUsSection .= "x.svg'";
                    break;
                case 32:
                    $whyStudyUsSection .= "smile.svg'";
                    break;
                default:
                    $whyStudyUsSection .= "bookmark.svg'";
                    break;
            }

            $whyStudyUsSection .= "alt='' class='whyStudyUsIcon'>";
            $whyStudyUsSection .= "<h3 class='uk-card-title'>" . $reason->title . "</h3>";
            $whyStudyUsSection .= "</div>";
            $whyStudyUsSection .= "</div>";
        }

        $whyStudyUsSection .= "</div>";
        $whyStudyUsSection .= "</div>";
        $whyStudyUsSection .= "</div>";
        $whyStudyUsSection .= "</section>";

        return $whyStudyUsSection;
    }
}

/* studijní obory */

/* obor */

function oborPage($oborPage)
{
    $oborSection = "<div class='uk-container uk-margin-large'>";
    $oborSection .= $oborPage->text;
    $oborSection .= "</div>";

    return $oborSection;
}

/* obor */

/* EU projekty */

function euProjectsPage($euProjectsPage)
{

    $euProjectsSection = "<section class='uk-container euProjectsSection'>";
    $euProjectsSection .= $euProjectsPage->text;
    $euProjectsSection .= "</section>";

    return $euProjectsSection;
}


/* EU projekty */

/* BasicHeading */

function basicHeading($parentPage)
{
    if ($parentPage->id !== 1084) {
        $basicHeadingSection = "<div class='uk-container uk-container-small AboutSchoolVision uk-margin-large'>";
    } else {
        $basicHeadingSection = "<div class='uk-container AboutSchoolVision uk-margin-large'>";
    }

    $basicHeadingSection .= "<section class='uk-section uk-padding-small'>";
    $basicHeadingSection .= "<div>";

    $basicHeadingSection .= "<h2>" . $parentPage->title . "</h2>";
    $basicHeadingSection .= "</div>";
    $basicHeadingSection .= "</section>";

    if ($parentPage->children->count) {
        $basicHeadingSection .= "<div>";
        $basicHeadingSection .= "<nav class='uk-container uk-flex uk-flex-center'>";
        $basicHeadingSection .= "<div class='navbarOnSites'>";
        $basicHeadingSection .= "<ul>";
        foreach ($parentPage->children as $button) {
            $basicHeadingSection .= "<li>";
            if ($parentPage->id !== 1084) {
                $basicHeadingSection .= "<div class='round6'>";
                $basicHeadingSection .= "<a class='button' href='" . $button->url . "'>" . $button->title . "</a>";
            } else {
                $basicHeadingSection .= "<div class='round7'>";
                $basicHeadingSection .= "<a class='button' href='" . $button->files->first->url . "'>" . $button->title . "</a>";
            }
            $basicHeadingSection .= "</div>";
            $basicHeadingSection .= "</li>";
        }
        $basicHeadingSection .= "</ul>";
        $basicHeadingSection .= "</div>";
        $basicHeadingSection .= "</nav>";
        $basicHeadingSection .= "</div>";
    }

    $basicHeadingSection .= "</div>";

    return $basicHeadingSection;
}

/* BasicHeading */

/* Kontakt */

function kontakt($kontaktPage)
{
    $kontaktSection = "<div uk-grid>";
    $kontaktSection .= "<section class='uk-width-1-1@s uk-width-1-2@m uk-width-1-2@l'>";
    $kontaktSection .= "<div class='uk-section'>";
    $kontaktSection .= "<div class='contactPageTextSection'>";
    $kontaktSection .= "<div class='contactPageHeader'>";
    $kontaktSection .= "<div class='contactPageIconDiv'>";
    $kontaktSection .= "<div class='contactPageIcon'>";
    $kontaktSection .= "<img src='/site/templates/feather/file.svg'>";
    $kontaktSection .= "</div>";
    $kontaktSection .= "</div>";
    $kontaktSection .= "<div class='contactPageHeadingText'>";
    $kontaktSection .= "<div>";
    $kontaktSection .= "<h1>" . $kontaktPage->title . "</h1>";
    $kontaktSection .= "<p></p>";
    $kontaktSection .= "</div>";
    $kontaktSection .= "</div>";
    $kontaktSection .= "</div>";
    $kontaktSection .= $kontaktPage->text;
    $kontaktSection .= "</div>";
    $kontaktSection .= "</div>";
    $kontaktSection .= "</section>";
    $kontaktSection .= "<section class='uk-width-1-1@s uk-width-1-2@m uk-width-1-2@l'>";
    $kontaktSection .= "<iframe src='" . $kontaktPage->map . "' width='100%' height='100%' style='border:0' allowfullscreen=''></iframe>";
    $kontaktSection .= "</section>";
    $kontaktSection .= "</div>";

    return $kontaktSection;
}

/* Kontakt */
/* Contact Form validation */
$email = "";
$name = "";
$message = "";
$year = '';

$error = '';
$nameError = '';
$emailError = '';
$messageError = '';
$yearError = '';
$errorCount = 0;
$success = '';

if (isset($_POST['name'])) {
    $nameTest = $_POST['name'];
    if (strlen($nameTest) < 3) {
        $error .= "Jméno není vyplněno, nebo je příliš krátké!";
        $nameError .= "Jméno není vyplněno, nebo je příliš krátké!";
        $errorCount++;
    } else {
        $name = $_POST['name'];
    }
}


if (isset($_POST['email'])) {
    $emailTest = $_POST['email'];
    if (!filter_var($emailTest, FILTER_VALIDATE_EMAIL)) {
        $error .= "Email není správně napsaný!";
        $emailError .= "Email není správně napsaný!";
        $errorCount++;
    } else {
        $email = $_POST['email'];
    }
}


if (isset($_POST['message'])) {
    $messageTest = $_POST['message'];
    if (strlen($messageTest) < 1) {
        $error .= "Vyplňte prosím zprávu dotazu!";
        $messageError .= "Vyplňte prosím zprávu dotazu!";
        $errorCount++;
    } else {
        $message = $_POST['message'];
    }
}

if (isset($_POST['year'])) {
    $yearTest = $_POST['year'];
    if ($yearTest !== date("Y")) {
        $error .= "špatný aktuální rok!";
        $yearError .= "špatný aktuální rok!";
        $errorCount++;
    } else {
        $year = $_POST['year'];
    }
}

$emailHeader = 'From:' . $email;
$emailHeader .= "\nMIME-Version: 1.0\n";
$emailHeader .= "Content-Type: text/html; charset=\"utf-8\"\n";

if (empty($error) && $errorCount == 0 && $year == date("Y")) {
    mb_send_mail('pepafajkus@gmail.com', 'Nový dotaz z formuláře', "<p>Od:</p>" . "<p>" . $name . "<br>" . $email . "</p>" . "<p>Dotaz:</p>" . "</p>" . $message . "</p>", $emailHeader);
    $success = 'dotaz byl úspěšně odeslán';

// Create new page
$nova_stranka = new Page();

$nova_stranka->template = "formData";
$nova_stranka->parent = $pages->get(1098);   
$nova_stranka->title = $name . date(' - j' . " / " . 'n' . " / " . 'Y' . " / " . 'H:i');
$nova_stranka->email = $email;
$nova_stranka->text = $message;
// Save the page
$nova_stranka->save();
}




/* Contact Form validation */