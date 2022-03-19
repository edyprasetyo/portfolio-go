<style>
    .navbar {
        background: #11162a;
    }

    .ep {
        margin-top: 20px;
        height: 37px;
    }

    .logo {
        height: 75px;
    }

    .navbar {
        padding-bottom: 0px !important;
        padding-top: 0px !important;
    }

    .nav-link {
        color: #0ee7b7 !important;
    }

    .dropdown-item {
        color: #0ee7b7 !important;
        min-width: 150px;
    }

    nav li {
        border-radius: 10px;
        font-size: 1rem;
        margin-left: 20px;
    }

    nav ul * {
        box-sizing: border-box;
    }

    nav li {
        display: inline-block;
        list-style: outside none none;
        padding: 0;
    }

    nav li {
        color: rgba(255, 255, 255, 0.5);
        position: relative;
        letter-spacing: 1px;
        text-decoration: none;
    }

    nav li:before {
        position: absolute;
        -webkit-transition: all 0.35s ease;
        transition: all 0.35s ease;
    }

    nav li:before {
        top: 0;
        display: block;
        height: 3px;
        width: 0%;
        content: "";
        background-color: #0ee7b7;
    }

    nav li li:before {
        top: 0;
        display: block;
        height: 3px;
        width: 0%;
        content: "";
        background-color: #0ee7b7;
    }

    nav li:hover:before,
    nav .current a:before {
        opacity: 1;
        width: 100%;
    }

    nav li:hover:after,
    nav .current a:after {
        max-width: 100%;
    }

    .lang {
        cursor: pointer;
        font-weight: bold;
    }

    .lang.active {
        color: #0ee7b7 !important;
        border-bottom: 5px solid #0ee7b7;
    }

    .lang:hover {
        color: #0ee7b7 !important;
    }

    .dropdown-menu {
        margin-left: -80px;
    }

    .menu-item {
        margin-right: 5px;
    }

</style>

<style>
    @@media screen and (max-width: 1280px) {
        .logo {
            height: 60px;
        }
    }

</style>

<style>
    @@media (max-width: 575.98px) {
        .menu-item.disabled {
            display: none;
        }

        .lang {
            cursor: pointer;
            font-weight: bold;
            width: 20px;
        }

        .menu-divider {
            border-bottom: 1px solid #000;
        }

        .dropdown-menu {
            margin-left: 0px;
        }

        .li-menu {
            width: 100%;
        }
    }


    #navbarBars {
        display: none;
    }

    .navbar-nav {
        padding-top: 20px;
    }


    @@media (max-width: 575.98px) {

        #navbarBars {
            display: inline-block;
            cursor: pointer;
            font-size: 50px;
            color: #0ee7b7;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .navbar-nav {
            padding-top: 0;
        }

        .ep {
            margin-top: 0;

        }

    }

</style>

<nav class="navbar fixed-top navbar-expand-lg navbar-light">
    <div class="container-fluid" style="padding-left: 5%;padding-right: 5%;">
        <a class="navbar-brand" href="#"><img class="ep" src="/static/img/logo.png" >
        </a>
        <span id="navbarBars" class="iconify ms-auto" data-icon="ep:menu" data-inline="false" data-bs-toggle="collapse"
            data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
            aria-label="Toggle navigation"></span>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav ms-auto my-lg-0">
                <li class="nav-item menu-item" style="margin-right: 10px;">
                    <a class="nav-link" aria-current="page" href="#home">Home</a>
                </li>
                <li class="nav-item menu-item" style="margin-right: 10px;">
                    <a class="nav-link" aria-current="page" href="#about-me">About Me</a>
                </li>
                <li class="nav-item menu-item" style="margin-right: 10px;">
                    <a class="nav-link" aria-current="page" href="#skills">Skills</a>
                </li>
                <li class="nav-item menu-item" style="margin-right: 10px;">
                    <a class="nav-link" aria-current="page" href="#latest-projects">Projects</a>
                </li>
            </ul>
            <script>
                $(".dropdownCustom").hover(function() {
                    $($(this).children()[1]).slideDown(500);
                }, function() {
                    $($(this).children()[1]).hide();
                });
            </script>
        </div>
    </div>
</nav>
