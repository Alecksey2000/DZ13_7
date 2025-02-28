#Область ПрограммныйИнтерфейс

Процедура ДополнитьФорму(Форма) Экспорт  
		
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
		ДобавитьСогласованнаяСкидкаВГруппаСкидка(Форма);
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда
		ВставитьПолеКонтактноеЛицоНаформуПередСуммаДокумента(Форма); 
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда
		ВставитьПолеКонтактноеЛицоНаформуПередСуммаДокумента(Форма);
	КонецЕсли;
    	
КонецПроцедуры 

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма)
	
	ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.КонтактноеЛицо";
		
КонецПроцедуры

Процедура ВставитьПолеКонтактноеЛицоНаформуПередСуммаДокумента(Форма) 
	
	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), , Форма.Элементы.СуммаДокумента);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.КонтактноеЛицо";
	
КонецПроцедуры

Процедура ДобавитьСогласованнаяСкидкаВГруппаСкидка(Форма)
	
	ПолеВвода = Форма.Элементы.Добавить("СогласованнаяСкидка", Тип("ПолеФормы"), Форма.Элементы.ГруппаСкидка);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.СогласованнаяСкидка";
	ПолеВвода.УстановитьДействие("ПриИзменении", "СогласованнаяСкидкаПриИзменении")
	
КонецПроцедуры 


#КонецОбласти