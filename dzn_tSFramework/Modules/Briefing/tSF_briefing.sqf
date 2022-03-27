//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS tSF_MissionTags = 
//
//
// Mission tags
TAGS(["COMB.ARMS","MOUT"]);

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Черноруссия, 2009 год.
<br />Операция ""Red Harvest"" в разгаре. Силы ЧСО и морской пехоты США значительно продвинулись вглубь страны. Большая группировка ЧДКЗ обосновалась в Электрозоводске. Захват города важен как в стратегическом, так и в политическом значении. Отделениям американских морпехов и чернорусской армии предстоит провести совместный штурм города.
<br />"
END

TOPIC("А. Враждебные силы:")
"Боевики ЧДКЗ - нерегулярные силы.
<br />Примерно 80 человек.
<br />
<br />Наличие танков и легкой бронетехники.
<br />Наличие станковых пулеметов.
<br />Наличие противотанковых средств.
<br />"
END

TOPIC("Б. Дружественные силы:")
"Экспедиционный корпус морской пехоты США совместно с чернорусскими силами обороны
<br />
<br />1'1 - 9 чел - USMC
<br />1'2 - 9 чел - ЧСО
<br />1'3 - 3 чел - Экипаж танка (ЧСО)
<br />1'6 - 2 чел"
END

TOPIC("II. Задание:")
"1. Зачистить территорию фабрики (Obj. Alpha)
<br />2. Захватить администрацию города (Obj. Bravo)"
END

TOPIC("III. Выполнение:")
"Нашим силам необходимо зайти в город и зачистить позиции противника.
<br />
<br />Скорее всего открытые пространства просматриваются противотанковыми средствами. Для прониновения в город используйте дымы.
<br />
<br />На холмах были замечены вокруг города были замечены патрули противника.
<br />
<br />Крупные силы боевиков расположились в заводском комплексе и прилагающими к ним складам (Obj. Alpha)
<br />Также они держат большие силы в районе городской администрации (Obj. Bravo)
<br />Помимо этих двух секторов, патрули противника и огневые точки могут располагаться где угодно на территории города.
<br />По информации от покинувших город гражданских, боевики располагают двумя-тремя танками Т-55 и легкими разведывательными машинами.
<br />
<br />Практически все гражданское население смогло покинуть город."
END

TOPIC("IV. Поддержка:")
"Техника:
<br />1x T72Б1.
<br />1x МТЛБ.
<br />1x M1151 HMMWV (вооруженный M2).
<br />2х M1151 HMMWV (вооруженный M240).
<br />1x M1151 HMMWV (вооруженный Mk19).
<br />
<br />Резерв:
<br />1x T72.
<br />1x МТЛБ.
<br />2х Урал.
<br />
<br />Артиллерия:
<br />81mm минометная батарея (Jackhammer 1-1).
<br />
<br />CCP.
<br />FARP."
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz
<br />SUP NET 51 Mhz
<br />
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3"
END

TOPIC("VI. Замечания:")
"В HMMWV с м240 лежат ПТРК Javeline.
<br />Боеприпасы в технике соответствуют принадлежности к фракции.
<br />"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Если игроки полезут на гору и буду с нее активно фрагать, то нужно накрыть их артой, у ботов есть минометы и наблюдатели, также можно помочь стрелами и рпг"
END
};

ADD_TOPICS