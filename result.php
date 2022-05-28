<html>
    <?php
        $answers = simplexml_load_file("answers.xml");
        $answer = $answers->addChild("answer");

        $answer->addChild("name", $_GET["name"]);
        foreach($_GET as $key => $value){
            if ($key == "name")
                continue;
            $answer->addChild("answer", $value);
        }
        $answers->asXML("answers.xml");
    ?>
    <br>
    <a href=".">Пройти тест ещё раз</a>
    <br>
    <a href="see.php">Посмотреть результаты</a>
</html>