﻿ Процедура ТоварыКоличествоПриИзменении(Элемент) 
	ТекущиеДанныеТовара = Элементы.Товары.ТекущиеДанные;
	ТекущиеДанныеТовара.Сумма = ТекущиеДанныеТовара.Количество * ТекущиеДанныеТовара.Цена; 
КонецПроцедуры

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
   СтрокаТабличнойЧасти = Элементы.Товары.ТекущиеДанные;
   СтрокаТабличнойЧасти.Сумма = СтрокаТабличнойЧасти.Количество * СтрокаТабличнойЧасти.Цена; 
КонецПроцедуры             

&НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
// Вставить содержимое обработчика.
Объект.СуммаДокументов = 0;
Для каждого СтрокаДокумента Из Объект.Товары Цикл
Объект.СуммаДокументов = Объект.СуммаДокументов + (СтрокаДокумента.Количество * СтрокаДокумента.Цена);
КонецЦикла;
КонецПроцедуры   

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Элементы.Сотрудник.ТолькоПросмотр = не ПравоДоступа("ИнтерактивноеДобавление", Метаданные.Справочники.Пользователи, ПользователиИнформационнойБазы.ТекущийПользователь());
	
	
КонецПроцедуры


