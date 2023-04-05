#! /bin/sh



# первый вариант для Gnome http://designer-dk.com/materials/linux/udobnyj-i-universalnyj-perevodchik-v-linux
# Имя файла с переведенным фрагментом будет состоять из префикса trans и числа секунд на данный момент 
# (так мы сможем одновременно держать в каталоге /temp несколько файлов с переводом, вдруг понадобится)
#fileName="/crv_home/bin/tmp/trans"$(date +%s)".txt"
# Текст из буфера пересылаем переводчику с указанием сохранить результат в файл с предварительно сгенеренным именем
#xsel -o | trans: ru -no-ansi -b -o $fileName
# Вызываем диалоговое окно размером 640×480 px и передаем имя нашего файла в качестве текста сообщения
#zenity --width=640 --height=480 --title="Перевод" --text-info --filename=$fileName
# Убираем за собой :)
#rm $fileName
#exit 0


# второй вариант https://kubuntu.ru/node/14432
# Рабочий скрипт перевода в pop-up !!!!
#!/usr/bin/env bash
a=`xsel -o | trans :ru -no-ansi -b`
echo -e "$a" > /tmp/kdetrans
kdialog 500 300 --title 'Перевод'  --textbox  /tmp/kdetrans
