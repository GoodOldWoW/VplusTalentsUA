local DB={ -- Talents
	['Warrior']={
	},
	['Paladin']={
	},
	['Warlock']={
	},
	['Hunter']={
	},
	['Shaman']={
	},
	['Priest']={
	},
	['Rogue']={
	},
	['Druid']={
	},
	['Mage']={
		{k="^Wand Specialization$",v='Специализация на жезлах'},
		{k="^Increases your damage with Wands by (.+).$",
		v='Увеличивает урон жезлами на %s.'},
		{k="^Arcane Focus$",v='Чародейский фокус'},
		{k="^Reduces the chance that the opponent can resist your Arcane spells by (.+) and gives you a (.+) chance to avoid interruption caused by damage while channeling Arcane Missiles.$",
		v='Снижение на %s вероятности того, что противник сможет противостоять заклинаниям тайной магии. С вероятностью %s поддержание "Чародейских стрел" не прерывается при получении урона.'},
		{k="^Elemental Precision$",v='Элементальная точность'},
		{k="^Reduces the chance that the opponent can resist your Frost and Fire spells by (.+).$",
		v='Снижает шанс сопротивления противника заклинаниям льда и огня на %s.'},
		{k="^Arcane Resilience$",v='Мистическая стойкость'},
		{k="^Increases your armor by an amount equal to (.+) of your Intellect and increases the effects of your Mage Armor by (.+).$",
		v='Увеличивает броню на величину, равную %s интеллекта, и усиливает эффекты "Магической брони" на %s.'},
		{k="^Practical Defensive Magic$",v='Практическая защитная магия'},
		{k="^Increases the effect of your Amplify Magic and Dampen Magic spells by (.+), decreases the mana lost per point of damage taken when Mana Shield is active by (.+), and gives your Polymorph a (.+) chance to not lose casting time when you take damage.$",
		v='Повышает эффективность "Усиления магии", "Ослабления магии" на %s и снижает расходы маны на снятие каждой единицы урона, получаемого при использовании заклинания "Щит маны" на %s. С вероятностью %s "Полиморф" не прерывается при получении урона.'},
		{k="^Magic Absorption$",v='Поглощение магии'},
		{k="^Increases all resistances by (.+) and causes all spells you fully resist to restore (.+) of your total mana.  (.+) sec. cooldown.$",
		v='Повышение всех типов сопротивления на %s ед. Все заклинания, которые не сработали из-за вашей сопротивляемости, восстанавливают %s общего уровня вашей маны. Время восстановления - %s сек.'},
		{k="^Master of Elements$",v='Мастер элементов'},
		{k="^Your Fire and Frost spell criticals will refund (.+) of their base mana cost.$",
		v='Критические заклинания огня и льда восполняют %s их базовой стоимости маны.'},
		{k="^Arcane Subtlety$",v='Мистическая точность'},
		{k="^Reduces your target's resistance to all your spells by (.+) and reduces the threat caused by your Arcane spells by (.+).$",
		v='Снижает сопротивление вашей цели ко всем вашим заклинаниям на %s ед. и уменьшает угрозу, вызванную вашими заклинаниями тайной магии, на %s.'},
		{k="^Arcane Concentration$",v='Чародейская сосредоточенность'},
		{k="^Gives you a (.+) chance of entering a Clearcasting state after any damage spell cast.  The Clearcasting state reduces the mana cost of your next spell by (.+).$",
		v='Поражая цель наносящим урон заклинанием, вы с вероятностью %s можете войти в состояние "Ясность мысли", которое снижает стоимость следующего наносящего урон заклинания на %s.'},
		{k="^Spell Twisting$",v='Плетение чар'},
		{k="^Your Fire combat spells increases your chance to get a critical strike chance with your next Frost damage spell by (.+).\n\nYour Frost combat spells increases your chance to get a critical strike chance with your next Fire damage spell by (.+).\n\nYour Arcane combat spells increases your chance to get a critical strike chance with your next  Fire or Frost damage spell by (.+).$",
		v='Боевые заклинания огня увеличивают на %s шанс критического удара следующего заклинания льда.|n|nБоевые заклинания льда увеличивают на %s шанс критического удара следующего заклинания огня.|n|nБоевые заклинания аркана увеличивают на %s шанс критического удара следующего заклинания льда или огня.'},
		{k="^Practical Offensive Magic$",v='Практическая атакующая магия'},
		{k="^Gives your Counterspell a (.+) chance to silence the target for (.+) sec, reduces the cooldown of your Counterspell and Blink spells by (.+), and increases the radius of your Arcane Explosion by (.+) yards.$",
		v='"Антимагия" с вероятностью %s поражает цель немотой на %s сек. Время восстановления "Антимагии" и "Скачка" уменьшено на %s, радиус поражения "Чардейским взрывом" увеличен на %s м.'},
		{k="^Arcane Instability$",v='Чародейская нестабильность'},
		{k="^Increases your spell damage and critical strike chance by (.+).$",
		v='Увеличивает урон от заклинаний и шанс критического удара на %s.'},
		{k="^Arcane Meditation$",v='Чародейская медитация'},
		{k="^Allows (.+) of your Mana regeneration to continue while casting.$",
		v='%s регенерации маны во время произнесения заклинаний.'},
		{k="^Arcane Power$",v='Мощь тайной магии'},
		{k="^When activated, your spells deal (.+) more damage while costing (.+) more mana to cast.  This effect lasts (.+) sec.$",
		v='Повышение урона от заклинаний на %s за счет повышения расхода на них маны на %s. Время действия – %s сек.'},
		{k="^Arcane Wrath$",v='Чародейский гнев'},
		{k="^Increases the critical strike damage bonus of your Arcane spells by (.+).$",
		v='Увеличивает бонус к урону от критического удара заклинаний аркана на %s.'},
		{k="^Arcane Mind$",v='Чародейский ум'},
		{k="^Increases your total Intellect by (.+).$",
		v='Увеличение интеллекта на %s.'},
		{k="^Time Pressure$",v='Давление времени'},
		{k="^Increases the casting speed by (.+).$",
		v='Увеличивает скорость произнесения заклинаний на %s.'},
		{k="^Improved Arcane Power$",v='Улучшенная мощь тайной магии'},
		{k="^Reduces the cooldown of your Arcane Power by (.+) min and increases duration by (.+) secs.$",
		v='"Мощь тайной магии" восстанавливается на %s мин. быстрее и длится на %s сек. дольше.'},
		{k="^Mind Mastery$",v='Владыка разума'},
		{k="^Increases spell damage by up to (.+) of your total Intellect and increases the effect of your Arcane Intellect by (.+).$",
		v='Повышение урона от заклинаний на %s от суммарного интеллекта и усиление эффекта "Чародейского интеллекта" на %s.'},
		{k="^Brilliance Aura$",v='Аура великолепия'},
		{k="^Generates (.+) of total Mana every (.+) sec to all party members within (.+) yds.$",
		v='Восполняет %s от общего количества маны каждые %s сек. всем членам группы в радиусе %s м.'},
		{k="^Fire Warding$",v='Защита от огня'},
		{k="^Increases your Fire resistance by (.+). In addition, causes your Fire Ward to have a (.+) chance to reflect Fire spells while active.$",
		v='Повышает сопротивление огню на %s ед. Активная "Защита от магии огня" с вероятностью %s отражает огненные заклинания.'},
		{k="^Improved Fireball$",v='Улучшенный огненный шар'},
		{k="^Reduces the casting time of your Fireball spell by (.+) sec.$",
		v='Сокращает время применения "Огненного шара" на %s сек.'},
		{k="^Improved Fire Blast$",v='Улучшенный огненный взрыв'},
		{k="^Reduces the cooldown of your Fire Blast spell by (.+) sec.$",
		v='Уменьшает время восстановления "Огненного взрыва" на %s сек.'},
		{k="^Pyroblast$",v='Огненная глыба'},
		{k="^Hurls an immense fiery boulder that causes (.+) to (.+) Fire damage and an additional (.+) Fire damage over (.+) sec.$",
		v='Бросок огромной огненной глыбы, которая наносит от %s до %s ед. урона от огня единовременно и %s ед. урона от огня в течение %s сек.'},
		{k="^Flame Throwing$",v='Метание пламени'},
		{k="^Increases the range and the radius of your Fire spells by (.+).$",
		v='Увеличивает дальность действия заклинаний огня на %s.'},
		{k="^Burning Soul$",v='Пылающая душа'},
		{k="^Gives your Fire spells a (.+) chance to not lose casting time when you take damage and reduces the threat caused by your Fire spells by (.+).$",
		v='С вероятностью %s применение заклинаний огня не останавливается при получении урона. Снижает уровень угрозы от заклинаний огня на %s.'},
		{k="^Impact$",v='Сотрясение'},
		{k="^Gives your Fire spells a (.+) chance to stun the target for (.+) sec.$",
		v='С вероятностью %s заклинания огня оглушают цель на %s сек.'},
		{k="^Critical Mass$",v='Критическая масса'},
		{k="^Increases the critical strike chance of your Fire spells by (.+).$",
		v='Повышает вероятность критического эффекта заклинаний огня на %s.'},
		{k="^Blast Wave$",v='Взрывная волна'},
		{k="^A wave of flame radiates outward from the caster, damaging all enemies caught within the blast for (.+) to (.+) Fire damage and dazing them for (.+) sec.$",
		v='Выпускает волну пламени, нанося противникам в области действия от %s до %s ед. урона от огня и вызывая головокружение на %s сек.'},
		{k="^Incinerate$",v='Испепеление'},
		{k="^Increases the critical strike chance of your Fire Blast, Scorch, Flamestrike and Blast Wave spells by (.+).$",
		v='Повышает вероятность критического эффекта "Огненного взрыва", "Огненного столба", "Ожога" и "Взрывной волны" на %s.'},
		{k="^Blazing Speed$",v='Молниеносная скорость'},
		{k="^Increases movement and mounted movement speed by (.+).  This does not stack with other movement speed increasing effects.\nIn addition, gives you a (.+) chance when hit by a melee or ranged attack to increase your movement and casting speed by (.+) for (.+) sec and dispel all movement impairing effects.$",
		v='Увеличивает скорость передвижения и скорость передвижения верхом на %s (не суммируется с другими эффектами).|nДает %s-й шанс при получении удара в ближнем или дальнем бою увеличить скорость передвижения и произнесения заклинаний на %s и рассеять все воздействия, сковывающие движения. Время действия - %s сек.'},
		{k="^Hot Streak$",v='Горячая полоса'},
		{k="^Your Fire damage spell crits have an (.+) chance to make your next Scorch or Pyroblast spell cast instantly and cost no mana.$",
		v='Критические заклинания огня, с вероятностью %s позволяют применить следующее заклинание "Ожог" или "Огненная глыба" мгновенно и без затрат маны.'},
		{k="^Chain Reaction$",v='Цепная реакция'},
		{k="^While active, your Fireball spells strike an additional nearby target. Maintaining this effect may harm your body and soul.$",
		v='Во время действия заклинания, "Огненный шар" поражает дополнительную ближайшую цель. Поддержание этого эффекта может нанести вред Вашему телу и душе.'},
		{k="^Overheat$",v='Перегрев'},
		{k="^Improves your chance to get a critical strike with spells by (.+), but increases the threat generated by your critical hits by (.+).$",
		v='Повышает шанс нанести критический удар заклинаниями на %s, но увеличивает угрозу, создаваемую критическими ударами, на %s.'},
		{k="^Thermal Expansion$",v='Термическое расширение'},
		{k="^Generates mana equal to your level every (.+) sec.$",
		v='Восполняет значение маны, равное вашему уровню, каждые %s сек.'},
		{k="^Improved Scorch$",v='Улучшенный ожог'},
		{k="^Your Scorch spells have a (.+) chance to cause your target to be vulnerable to Fire damage.  This vulnerability increases the Fire damage dealt to your target by (.+) and lasts (.+) sec.  Stacks up to (.+) times.$",
		v='"Ожог" с вероятностью %s делает цель на %s более уязвимой к урону от огня в течение %s сек. Суммируется до %s раз.'},
		{k="^Ignite$",v='Поджигание'},
		{k="^Your critical strikes from Fire damage spells cause the target to burn for an additional (.+) of your spell's damage over (.+) sec.$",
		v='Критические удары заклинаний огня поджигают цель, нанося дополнительно %s урона от заклинания в течение %s сек.'},
		{k="^Fire Power$",v='Сила огня'},
		{k="^Increases the damage done by your Fire spells by (.+).$",
		v='Увеличивает урон от ваших заклинаний огня на %s.'},
		{k="^Pyromania$",v='Пироманьяк'},
		{k="^Reduces the casting time of your Fireball and Pyroblast spells by (.+), and your Flamestrike spell by (.+).\nIn addition, reduces the cooldown of your Blast Wave spell by (.+) sec.$",
		v='Сокращает время произнесения заклинаний "Огненный шар" и "Огненная глыба" на %s, а заклинания "Огненный столб" - на %s.|nУменьшает время восстановления заклинания "Взрывная волна" на %s сек.'},
		{k="^Combustion$",v='Возгорание'},
		{k="^When activated, this spell causes each of your Fire damage spell hits to increase your critical strike chance with Fire damage spells by (.+).  This effect lasts until you have caused (.+) critical strikes with Fire spells.$",
		v='При использовании каждое атакующее заклинание огня, достигшее цели, увеличивает вероятность нанесения критического урона огнем на %s. Этот эффект длится, пока %s заклинания огня не нанесут критический урон.'},
		{k="^Frost Warding$",v='Защита от льда'},
		{k="^Increases the armor and resistances given by your Frost Armor and Ice Armor spells by (.+).  In addition, gives your Frost Ward a (.+) chance to reflect Frost spells and effects while active.$",
		v='Увеличивает на %s бонусы к броне и сопротивлению от "Морозного доспеха" и "Ледяного доспеха". Активная "Защита от магии льда" с вероятностью %s отражает заклинания и эффекты магии льда.'},
		{k="^Improved Frostbolt$",v='Улучшенная ледяная стрела'},
		{k="^Reduces the casting time of your Frostbolt spell by (.+) sec.$",
		v='Сокращает время применения "Ледяной стрелы" на %s сек.'},
		{k="^Permafrost$",v='Вечная мерзлота'},
		{k="^Increases the duration of your Chill effects by (.+) sec and reduces the target's speed by an additional (.+).$",
		v='Продлевает действие эффектов окоченения на %s сек. и снижает скорость передвижения цели ещё на %s.'},
		{k="^Cryo Core$",v='Застывшее ядро'},
		{k="^Reduces all spell damage taken by (.+), but increases physical damage taken by (.+).$",
		v='Снижает весь получаемый урон от заклинаний на %s, но увеличивает получаемый физический урон на %s.'},
		{k="^Frostbite$",v='Обморожение'},
		{k="^Gives your Chill effects a (.+) chance to freeze the target for (.+) sec.$",
		v='Эффекты окоченения с вероятностью %s замораживают цель на %s сек.'},
		{k="^Improved Frost Nova$",v='Улучшенное кольцо льда'},
		{k="^Reduces the cooldown of your Frost Nova spell by (.+) sec.$",
		v='Уменьшает время восстановления "Кольца льда" на %s сек.'},
		{k="^Frost Channeling$",v='Ледяное наполнение'},
		{k="^Reduces the mana cost of your Frost spells by (.+) and reduces the threat caused by your Frost spells by (.+).$",
		v='Снижает затраты маны на заклинания льда на %s и снижает угрозу, создаваемую заклинаниями льда, на %s.'},
		{k="^Ice Block$",v='Ледяная глыба'},
		{k="^You become encased in a block of ice, protecting you from all physical attacks and spells for (.+) sec, but during that time you cannot attack, move or cast spells.$",
		v='Вы становитесь заключенным в глыбу льда, которая защищает вас от всех физических атак и заклинаний в течение %s сек., но в течение этого времени вы не можете атаковать, двигаться или применять заклинания.'},
		{k="^Arctic Reach$",v='Предел льда'},
		{k="^Increases the range of your Frostbolt and Blizzard spells and the radius of your Frost Nova and Cone of Cold spells by (.+).$",
		v='Увеличивает дальность действия "Ледяной стрелы" и "Снежной бури", а также радиус действия "Кольца льда" и "Конуса холода" на %s.'},
		{k="^Improved Blizzard$",v='Улучшенная снежная буря'},
		{k="^Adds a chill effect to your Blizzard spell.  This effect lowers the target's movement speed by (.+).  Lasts (.+) sec.$",
		v='Позволяет "Снежной буре" замораживать цель, снижая её скорость передвижения на %s на %s сек.'},
		{k="^Ice Shards$",v='Ледяные осколки'},
		{k="^Increases the critical strike damage bonus of your Frost spells by (.+).$",
		v='Увеличение урона от критического поражения вашими заклинаниями льда на %s.'},
		{k="^Shatter$",v='Обледенение'},
		{k="^Increases the critical strike chance of all your spells against frozen targets by (.+).$",
		v='Повышает вероятность критического удара заклинанием льда по замороженным целям на %s.'},
		{k="^Improved Cone of Cold$",v='Улучшенный конус холода'},
		{k="^Increases the damage dealt by your Cone of Cold spell by (.+) and reduces it's cooldown by (.+) sec.$",
		v='Увеличение урона, наносимого заклинанием "Конус холода", на %s и снижение его восстановления на %s сек.'},
		{k="^Ice Mirror$",v='Ледяное зеркало'},
		{k="^Protects the friendly target with a mirror of ice. The mirror reflects spells casts for (.+) sec.$",
		v='Защищает дружественную цель ледяным зеркалом. Зеркало отражает заклинания в течениии %s сек.'},
		{k="^Cold Snap$",v='Холодная хватка'},
		{k="^When activated, this spell finishes the cooldown on all of your Frost spells.$",
		v='При использовании завершает время восстановления всех недавно примененных заклинаний магии льда.'},
		{k="^Icing$",v='Глазурь'},
		{k="^Regenerates (.+) of your health and mana every (.+) sec if you’ve been standing still for (.+) sec.$",
		v='Восстанавливает %s здоровья и маны каждые %s сек, если Вы стоите на месте %s сек.'},
		{k="^Lord of the North Wind$",v='Владыка Северного Ветра'},
		{k="^Increases the critical strike chance of your Frost spells by (.+) and the chance you are hit by melee and ranged attacks reduced by (.+).$",
		v='Увеличивает вероятность критического удара заклинаний льда на %s и снижает вероятность получить удар в ближнем и дальнем бою на %s.'},
		{k="^Winter's Chill$",v='Зимняя стужа'},
		{k="^Gives your Frost damage spells a (.+) chance to apply the Winter's Chill effect, which increases the chance a Frost spell will critically hit the target by (.+) for (.+) sec.  Stacks up to (.+) times.$",
		v='Ледяные заклинания получают %s шанс обрести эффект Зимней Стужи, что увеличит их шанс нанести врагу критического урона на %s в течение %s сек. Эффект может суммироваться до %s раз.'},
		{k="^Ice Barrier$",v='Ледяная преграда'},
		{k="^Instantly shields a friendly target, absorbing (.+) damage.  Lasts (.+) min.  While the shield holds, spells will not be interrupted.$",
		v='Создаёт на дружественной цели защитный барьер, поглощающий %s ед. урона. Время действия - %s мин. Во время существования щита невозможно прервать произношение заклинаний.'},
		{k="^Advanced Ice Shielding$",v='Усовершенствованная ледяная защита'},
		{k="^Reduces the cooldown of your Ice Barrier, Ice Block and Ice Mirror spells by (.+), reduces their Mana cost by (.+) and reduces the chance your Ice Barrier will be dispelled by (.+).$",
		v='Сокращает время восстановления заклинаний "Ледяная преграда", "Ледяная глыба" и "Ледяное зеркало" на %s, снижает их стоимость маны на %s и снижает вероятность рассеивания "Ледяной преграды" на %s.'},
	},
}

local DBT={ -- Talents Tabs
	['Warrior']={['Arms']         ='Мастер оружия', ['Fury']        ='Неистовство',  ['Protection'] ='Оборона'},
	['Paladin']={['Holy']         ='Праведность',   ['Protection']  ='Опека',        ['Retribution']='Воздаяние'},
	['Warlock']={['Affliction']   ='Проклятья',     ['Demonology']  ='Демонология',  ['Destruction']='Разрушение'},
	['Hunter'] ={['Beast Mastery']='Приручение',    ['Marksmanship']='Стрельба',     ['Survival']   ='Выживание'},
	['Shaman'] ={['Elemental']    ='Мастер стихий', ['Enhancement'] ='Совершенство', ['Restoration']='Восстановление'},
	['Priest'] ={['Discipline']   ='Порядок',       ['Holy']        ='Сила Света',   ['Shadow']     ='Сила Тьмы'},
	['Rogue']  ={['Assassination']='Ликвидация',    ['Combat']      ='Мастер боя',   ['Subtlety']   ='Скрытность'},
	['Druid']  ={['Balance']      ='Баланс',        ['Feral Combat']='Обращение',    ['Restoration']='Исцеление'},
	['Mage']   ={['Arcane']       ='Аркан',         ['Fire']        ='Огонь',        ['Frost']      ='Лёд'},
}

local DBL={ -- information lines
	{k='^Rank (.+)$',v='|nРанг %s'},
	{k='^Next rank:$',v='|nСледующий ранг:'},
	{k='^Click to learn$',v='Нажмите, чтобы изучить'},
	{k='^Requires (%d+) points in (.+) Talents$',v='Требуется %s очков в талантах %s'},
	{k='^Requires (%d+) points in (.+)$',v='Требуется %s очков в %s'},
	{k='^Requires (.+)$',v='Требуется: %s'},
	{k='^(%d+) Mana$',v='Мана: %s'},
	{k='^(%d+) Rage$',v='Ярость: %s'},
	{k='^(%d+) Energy$',v='Энергия: %s'},
	{k='^Instant$',v='Мгновенно'}, -- Мгновенное действие
	{k='^Instant cast$',v='Мгновенно'}, -- Мгновенное действие
	{k='^(%d+) sec cast$',v='Каст: %s сек.'},
	--{k='^Attack speed$',v=''},
	--{k='^$',v=''},
}

local DBR={ -- right side information lines
	{k='^(.+) yd range$',v='Дистанция: %s м.'}, -- Радиус действия
	{k='^(.+) sec cooldown$',v='Перезарядка: %s сек.'}, -- Восстановление
	{k='^(.+) min cooldown$',v='Перезарядка: %s мин.'}, -- Восстановление
}

local _G = getfenv(0)

local class = UnitClass('player')

local function math_round(num, idp)
	local mult = 10 ^ (idp or 0)
	return math.floor(num * mult + 0.5) / mult
end

local function TranslateTalentTab(tabName)
	return DBT[class][tabName] or tabName
end

-- num - TempTooltip right line number
local function TranslateRightLine(num)
	for _, line in pairs(DBR) do
		local res = {string.find(_G['TempTooltipTextRight'..num]:GetText(), line.k)}
		if res[1] then
			--DEFAULT_CHAT_FRAME:AddMessage(string.format(line.v, res[3])) -- DEBUG
			return string.format(line.v, res[3])
		end
	end
	--DEFAULT_CHAT_FRAME:AddMessage(_G['TempTooltipTextRight'..num]:GetText()) -- DEBUG
	return _G['TempTooltipTextRight'..num]:GetText()
end

-- num - TempTooltip line number
local function TranslateLine(num)
	local r, g, b = _G['TempTooltipTextLeft'..num]:GetTextColor()
	r = math_round(r, 2)
	g = math_round(g, 2)
	b = math_round(b, 2)

	if r == 1 and g == 0.82 and b == 0 then -- talent description
		for _, talent in pairs(DB[class]) do
			local res = {string.find(_G['TempTooltipTextLeft'..num]:GetText(), talent.k)}
			if res[1] then
				GameTooltip:AddLine(string.format(talent.v, res[3] or '', res[4] or '', res[5] or '', res[6] or ''), r, g, b, 1) -- пока 4 параметра
				return true
			end
		end
		GameTooltip:AddLine(_G['TempTooltipTextLeft'..num]:GetText(), r, g, b, 1)
		return false
	else -- information lines
		if _G['TempTooltipTextRight'..num]:IsVisible() and _G['TempTooltipTextRight'..num]:GetText() then
			for _, line in pairs(DBL) do
				local res = {string.find(_G['TempTooltipTextLeft'..num]:GetText(), line.k)}
				if res[1] then
					GameTooltip:AddDoubleLine(string.format(line.v, res[3]), TranslateRightLine(num), r, g, b, r, g, b)
					return true
				end
			end
			GameTooltip:AddDoubleLine(_G['TempTooltipTextLeft'..num]:GetText(), TranslateRightLine(num), r, g, b, r, g, b)
			return false
		else
			for _, line in pairs(DBL) do
				local res = {string.find(_G['TempTooltipTextLeft'..num]:GetText(), line.k)}
				if res[1] then
					GameTooltip:AddLine(string.format(line.v, res[3], TranslateTalentTab(res[4])), r, g, b)
					return true
				end
			end
			GameTooltip:AddLine(_G['TempTooltipTextLeft'..num]:GetText(), r, g, b)
			return false
		end
	end
end

CreateFrame('GAMETOOLTIP', 'TempTooltip', nil, 'GameTooltipTemplate')

local HookSetTalent = GameTooltip.SetTalent
function GameTooltip.SetTalent(self, tabIndex, talentIndex)
	if IsAltKeyDown() then
		TempTooltip:SetOwner(UIParent, 'ANCHOR_NONE')
		TempTooltip:SetTalent(tabIndex, talentIndex)

		GameTooltip:ClearLines()

		local f = 0 -- find flag
		for _, talent in pairs(DB[class]) do
			--if _G['TempTooltipTextLeft1']:GetText() == talent.k then
			local res = {string.find(_G['TempTooltipTextLeft1']:GetText(), talent.k)}
			if res[1] then
				GameTooltip:AddLine(talent.v .. '|n[' .. _G['TempTooltipTextLeft1']:GetText() .. ']', 1, 1, 1)
				f = 1
			end
		end
		if f == 0 then
			GameTooltip:AddLine(_G['TempTooltipTextLeft1']:GetText(), 1, 1, 1)
		end

		for i = 2, TempTooltip:NumLines() do
			TranslateLine(i)
		end

		TempTooltip:Hide()
		GameTooltip:Show()
	else
		HookSetTalent(self, tabIndex, talentIndex)
	end
end
