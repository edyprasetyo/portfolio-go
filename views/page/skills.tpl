<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
    integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
    integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<style>
    #skills {
        height: auto;
        width: 100%;
    }

    .skills-card-title {
        font-size: 1.2rem;
        font-weight: 700;
        color: #6ab6fd;
    }

    .skills-card-content {
        font-size: 0.9rem;
        font-weight: 400;
        color: #bdbdbd;
    }

    .slider {
        background-size: 1200px 490px;
        position: relative;
    }


    .slider .card {
        background: linear-gradient(0deg, rgba(19, 24, 47, 1) 0%, rgba(45, 54, 88, 1) 100%);
        color: rgb(202, 202, 202);
        transform: translateY(15px);
        margin: 50px 5px 90px 5px;
        opacity: 0.5;
        transition: all 0.3s;
        border-top: 2px solid #2897ff;
        border-bottom: 0px;
    }

    .card-size {
        width: 348px;
        height: 200px;
    }

    /* .owl-carousel .owl-stage-outer {
        margin: 0 50px !important;
    } */

    .owl-carousel .owl-item img {
        display: block;
        width: unset !important;
    }

    .slider .owl-item.active.center .card {
        transform: translateY(-15px);
        opacity: 1;
        background: linear-gradient(0deg, rgba(19, 24, 47, 1) 0%, rgba(45, 54, 88, 1) 100%);
        color: rgb(202, 202, 202);
    }

    .owl-nav .owl-prev {
        position: absolute;
        top: calc(50% - 25px);
        left: 0;
        opacity: 1;
        font-size: 30px !important;
        width: 40px;
        height: 40px;
        text-align: center;
        border-radius: 50%;
        box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .15) !important;
        z-index: 1;
    }

    .owl-nav .owl-next {
        position: absolute;
        top: calc(50% - 25px);
        right: 0;
        opacity: 1;
        font-size: 30px !important;
        width: 40px;
        height: 40px;
        text-align: center;
        border-radius: 50%;
        box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .15) !important;
        z-index: 1;
    }

    @@media screen and (max-width: 575.98px) {

        .owl-carousel .owl-stage-outer {
            margin: 0 10px !important;
        }
    }

</style>
<div id="skills">
    <div style="height: 70px;"></div>
    <div class="container">
        <div class="h1 text-green">
            <strong id="worksSince">#06</strong>
        </div>
        <div class="h4 text-green">
            <span style="color:#ffffff;font-weight:300;">Years
                Experience</span><span class="text-green">;</span>
        </div>
    </div>
    <div data-aos="fade-down" style="position: relative;" data-aos="fade-up">
        <div class="slider mx-md-5 mx-0">
            <div class="owl-carousel px-md-5 px-0">
                <div class="card shadow rounded-3 card-size">
                    <div class="card-body">
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-title">Mobile App
                                    Development</div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-content">
                                    Android(Java/Kotlin) - Android Studio
                                    <br>
                                    IOS(Swift) - Xcode
                                    <br>
                                    Flutter - VS Code
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card shadow rounded-3 card-size">
                    <div class="card-body">
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-title">Web App Development</div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-content">
                                    ASP.NET / ASP.NET Core MVC - C#
                                    <br>
                                    Laravel - PHP
                                    <br>
                                    Node JS - Angular
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card shadow rounded-3 card-size">
                    <div class="card-body">
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-title">Desktop App
                                    Development</div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-content">Winform App - C# / VB.net</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card shadow rounded-3 card-size">
                    <div class="card-body">
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-title">Database Management System</div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-content">SQL Server
                                    <br> My SQL
                                    <br> Data Warehouse & Analysis Service Using Azure Cloud
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card shadow rounded-3 card-size">
                    <div class="card-body">
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-title">Reporting</div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="skills-card-content">Power BI
                                    <br> Crystall Report
                                    <br> RDLC
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $(".owl-carousel").owlCarousel({
            margin: 10,
            autoplay: true,
            center: true,
            rewind: true,
            responsive: {
                0: {
                    items: 1,
                    dots: false,
                    margin: 0,
                    center: true,

                },
                600: {
                    items: 1,
                    dots: false,
                    center: false
                },
                992: {
                    items: 3,
                    dots: false,
                    nav: true,
                    navText: [
                        '<span class="iconify" data-icon="akar-icons:chevron-left" style="color:#fff;"></span>',
                        '<span class="iconify" data-icon="akar-icons:chevron-right" style="color:#fff;"></span>',
                    ],
                }
            }
        });
    });
</script>
