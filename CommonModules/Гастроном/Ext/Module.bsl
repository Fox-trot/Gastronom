﻿
Функция СловоНормализовать(Знач Слово) Экспорт
	Слово = СтрЗаменить(СтрЗаменить(НРег(СокрЛП(Лев(Слово, 30))), "ё", "е"), "й", "и");
	Ответ = "";
	Для Итератор = 1 По СтрДлина(Слово) Цикл
		Если Найти("абвгдежзиклмнопрстуфхцчшщьыъэюя", Сред(Слово, Итератор, 1)) = 0 Тогда
			Прервать;
		Иначе
			Ответ = Ответ + Сред(Слово, Итератор, 1);
		КонецЕсли;
	КонецЦикла;
	Возврат ?(СтрДлина(Ответ) < 2, "", Ответ);
КонецФункции
