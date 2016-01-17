<%--
  Created by IntelliJ IDEA.
  User: matty
  Date: 1/17/16
  Time: 5:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gaea's Glimpse</title>
    <link rel="stylesheet" type="text/css" href="./Files/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="./Files/css/Species.css">

    <!-- top navigation bar -->
    <ul>
        <li><a class="active" href="http://gaeasglimpse.mybluemix.net/#home">
            <div id="home"><img src=./Files/Images/home.png></div>
        </a></li>
        <li><a href="#news"> Forum </a></li>
        <li><a href="#contact"> Aware </a></li>
        <li><a href="#about"> About </a></li>
        <li id="login"><a href="#about"> Login</a></li>
    </ul>

</head>
<body>

<div id="pan">
    <br>


    <div id="topPan">


        <div id="photoPan">
            <img src="./Files/Images/frog.jpg" style="height: 300px; width: 400px; margin-left: 10px; margin-top: 10px;">
        </div>


        <div id="mapPan">

            <img src="./Files/Images/World.gif" style="height: 300px; width: 530px; margin-left: 10px; margin-top: 10px;">

        </div>


        <div id="sumShell">
            <div id="summaryPan">
                <!-- Add text here for summary -->
                <br>
                Summary:
                <br>
                &nbsp;&nbsp;&nbsp; Scientific Name: [ADD_TEXT]
                <br>
                &nbsp;&nbsp;&nbsp; Common Name: [ADD_TEXT]
                <br>
                &nbsp;&nbsp;&nbsp; Habitat: [ADD_TEXT]
                <br>
                &nbsp;&nbsp;&nbsp; Other Stuff: [ADD_TEXT]
            </div>
        </div>

        <div id="Shell">
            <div id="forumPan">
                <font size="6">&nbsp;Forum</font><br><br>

                <div id="forumBubble">

                    <font size="5" color=lightblue>&nbsp;Frog walks into a bank...</font><br>
                    <font size="3" color=white>&nbsp; comments 1045 &nbsp;&nbsp; summitted 8 hours ago </font>
                </div>
                <div id="forumBubble">
                    <font size="5" color=lightblue>&nbsp;Michigan J. Frog might be racist. </font><br>
                    <font size="3" color=white>&nbsp; comments 534 &nbsp;&nbsp; summitted 4 hours ago </font>
                </div>
                <div id="forumBubble">
                    <font size="5" color=lightblue>&nbsp;Cannibalistic Species Found.</font><br>
                    <font size="3" color=white>&nbsp; comments 478 &nbsp;&nbsp; summitted 2 hours ago </font>

                </div>
                <div id="forumBubble">
                    <font size="5" color=lightblue>&nbsp;Where not to put a frog.</font><br>
                    <font size="3" color=white>&nbsp; comments 13 &nbsp;&nbsp; summitted 30 minutes ago </font>

                </div>

            </div>
            <div id="votePan">

                <font size="6" color=black>&nbsp;Voting</font><br><br>

                <div id="forumBubble">

                    <font size="5" color=lightblue>&nbsp;Frogs have no tail, except as...</font><br>
                    <font size="3" color=white>&nbsp; comments 1351 &nbsp;&nbsp; pro 422 &nbsp; con 250 </font>
                </div>
                <div id="forumBubble">
                    <font size="5" color=lightblue>&nbsp;a frog is permeable to oxygen and... </font><br>
                    <font size="3" color=white>&nbsp; comments 1254 &nbsp;&nbsp; pro 569 &nbsp; con 250 </font>
                </div>
                <div id="forumBubble">
                    <font size="5" color=lightblue>&nbsp;frog has a highly developed nervous...</font><br>
                    <font size="3" color=white>&nbsp; comments 923 &nbsp;&nbsp; pro 390 &nbsp; con 250 </font>

                </div>
                <div id="forumBubble">
                    <font size="5" color=lightblue>&nbsp;frogs are found to be like lizards...</font><br>
                    <font size="3" color=white>&nbsp; comments 748 &nbsp;&nbsp; pro 0 &nbsp; con 748 </font>

                </div>

            </div>

            <!-- end of shell -->
        </div>


        <div id="DesShell">
            <div id="DescriptionPan">

                <font size="5">
                    <bold>Description</bold>
                </font>
                <br>

                <br>
                "Frogs are a diverse and largely carnivorous group of short-bodied, tailless amphibians composing the
                order Anura (Ancient Greek an-, without + oura, tail). The oldest fossil "proto-frog" appeared in the
                early Triassic of Madagascar, but molecular clock dating suggests their origins may extend further back
                to the Permian, 265 million years ago. Frogs are widely distributed, ranging from the tropics to
                subarctic regions, but the greatest concentration of species diversity is found in tropical rainforests.
                There are approximately 4,800 recorded species, accounting for over 85% of extant amphibian species.
                They are also one of the five most diverse vertebrate orders.
                <br>
                <br>
                The body plan of an adult frog is generally characterized by a stout body, protruding eyes, cleft
                tongue, limbs folded underneath, and the absence of a tail in adults. Besides living in fresh water and
                on dry land, the adults of some species are adapted for living underground or in trees. The skin of the
                frog is glandular, with secretions ranging from distasteful to toxic. Warty species of frog tend to be
                called toads but the distinction between frogs and toads is based on informal naming conventions
                concentrating on the warts rather than taxonomy or evolutionary history; some toads are more closely
                related to frogs than to other toads. Frogs' skins vary in colour from well-camouflaged dappled brown,
                grey and green to vivid patterns of bright red or yellow and black to advertise toxicity and warn off
                predators."
                <br>
                <br>
                The frog has a highly developed nervous system that consists of a brain, spinal cord and nerves. Many
                parts of the frog's brain correspond with those of humans. It consists of two olfactory lobes, two
                cerebral hemispheres, a pineal body, two optic lobes, a cerebellum and a medulla oblongata. In the male
                frog, the two testes are attached to the kidneys and semen passes into the kidneys through fine tubes
                called efferent ducts. It then travels on through the ureters, which are consequently known as
                urinogenital ducts. There is no penis, and sperm is ejected from the cloaca directly onto the eggs as
                the female lays them. "(Wikipedia)
            </div>
        </div>

        <div id="refShell">
            <div id="DescriptionPan">

                <font size="5">
                    <bold>&nbsp;&nbsp;References</bold>
                </font>
                <br>
                <br>
                "Blueprint Lays Out Clear Path for Climate Action." Environmental Defense Fund. Environmental Defense
                Fund, 8 May 2007. Web. 24 May 2009.
                <br><br>
                Clinton, Bill. Interview by Andrew C. Revkin. “Climate Change.” New York Times. New York Times, May
                2007. Web. 25 May 2009.
                <br><br>
                Dean, Cornelia. "Executive on a Mission: Saving the Planet." New York Times. New York Times, 22 May
                2007. Web. 25 May 2009.
                <br><br>
                Ebert, Roger. "An Inconvenient Truth." Rev. of An Inconvenient Truth, dir. Davis Guggenheim.
                rogerebert.com. Sun-Times News Group, 2 June 2006. Web. 24 May 2009.
                <br><br>
                GlobalWarming.org. Cooler Heads Coalition, 2007. Web. 24 May 2009.
                <br><br>
                Gowdy, John. "Avoiding Self-organized Extinction: Toward a Co-evolutionary environment of
                Sustainability." International Journal of Sustainable Development and World Ecology 14.1 (2007): 27-36.
                Print.
                <br><br>
            </div>
        </div>
    </div>


</div>
<div id="bottomPan">


</div>
</div>

</body>
</html>
