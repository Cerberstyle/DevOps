### Task 1

Вопрос 4. 1-ая ошибка: main.tf, 17 строка - platform_id = "standart-v4" - в документации нет такого стандарта, есть standard-v1 (1-3).  2-ая ошибка: main.tf, 19 строка - cores = 1.  Недопустимое значение для указанной платформы. Допустимые значения: 2, 4.
Вопрос 6. В процессе обучения параметр preemptible = true может быть полезен, так как с данным параметром создаваемая ВМ может быть прерываемой будучи без уведомления. Используется для оптимизации использования ресурсов и снижения стоимости. Параметр можно применять для временных задач, а также во время обучения, чтобы ВМ не тратила выделяемые ресурсы.
core_fraction=5 - гарантированная доля vCPU в процентах. Параметр может быть полезен, в двух случаях: 
1) Ограничение для уменьшение стоимости аренды ресурсов во время обучения, что поможет снизить расходы, если забыть выключить ВМ.
2) При взломе ВМ злоумышленники не смогут сильно нагрузить систему, что защитит от повышенных расходов на ВМ.


![httpsubuntu compro](https://github.com/Cerberstyle/DevOps/assets/89096235/287b7c75-ee4b-4671-8789-12de471c7f96)

![Pasted Graphic 1](https://github.com/Cerberstyle/DevOps/assets/89096235/52d38c51-adb5-4355-81ef-27ef9138473a)

### Task 3

![Pasted Graphic](https://github.com/Cerberstyle/DevOps/assets/89096235/6d9154e0-4be5-48b4-9d1f-0be0aa535a7c)

### Task 4
```
cerberus@Mac-mini-ILYA src % terraform output
external_ip = "178.154.207.200"
external_ip_db = "158.160.29.154"
fqdn = "fhmfju1m3rpve1u517ci.auto.internal"
fqdn_db = "epdp1tdt72v673jdhpo6.auto.internal"
instance_name = "netology-develop-platform-web"
instance_name_db = "netology-develop-platform-db"
```
