

<style>
    #home {
        position: relative;
        width: 100%;
        min-height: 100%;
        height: auto;
    }

    .index-clip {
        position: absolute;
        bottom: 0;
        width: 100%;
        height: 100%;
        background: #0ee7b7;
        background: linear-gradient(90deg, #2b72b4 0%, #2b72b4 100%);
        clip-path: polygon(0 70%, 0% 100%, 100% 100%);
    }

    .index-container {
        position: relative;
    }

    .text-green {
        color: #0ee7b7;
    }

    .text-blue {
        color: #2897ff;
    }

    .img-profile {
        cursor: pointer;
    }

    @@media (max-width: 575.98px) {
        #index {
            padding-top: 70px;
        }

        .index-clip {
            display: none;
        }

        .img-profile-parent {
            text-align: center;
        }


    }

</style>

<div id="home">
    <div style="height: 80px;"></div>
    <div class="index-clip">
    </div>
    <div class="container index-container">
        <div class="row">
        
            <div class="col-lg-6 pt-3 img-profile-parent justify-content-center align-self-center">
                <span onclick="showProfile();">
                    <img class="img-fluid img-profile" src="/static/img/profile_4.png" />
                </span>
            </div>
            <div class="col-lg-6 pt-5">
                <div class="h1 text-green mb-2">
        
                    <strong>Hello</strong>

                </div>
                <div class="h5 text-green mb-3">
                    I'm Edy Prasetyo - <strong class="text-blue">Full Stack Developer</strong>
                </div>

                {{template "page/index_code.tpl"}}
            </div>

        </div>
    </div>
</div>



<script>
    var ageDifMs = Date.now() - new Date(2016, 1, 11, 0, 0, 0, 0);;
    var ageDate = new Date(ageDifMs);
    $('#worksSince').html('#' + Math.abs(ageDate.getUTCFullYear() - 1970));

    function showProfile() {
        window.open('https://www.instagram.com/edyprasetyo_', '_blank').focus();
    }
</script>


{{template "page/about.tpl"}}

{{template "page/skills.tpl"}}

{{template "page/latest_projects.tpl"}}


 <div class="h6 text-green text-center pt-5 pb-4">

    <span class="text-white">Visitors :</span> {{ .visitor }}
</div>



