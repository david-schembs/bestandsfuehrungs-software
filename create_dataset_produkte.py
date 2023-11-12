import random as r


def create_file():
    file = open("dataset_produkte.sql", "w")
    configure_data(file, 15)
    file.close()


def get_values_for_i(i):
    hersteller = [27, 7, 27, 3, 4, 3, 6, 3, 3, 10, 10, 48, 12, 11, 14]
    kategorie = ['Bad & Sanitär', 'Bad & Sanitär', 'Bad & Sanitär', 'Bau & Renovierung', 'Bau & Renovierung',
                 'Bau & Renovierung', 'Garten & Freizeit', 'Garten & Freizeit', 'Garten & Freizeit',
                 'Werkstatt & Maschinen', 'Werkstatt & Maschinen', 'Werkstatt & Maschinen', 'Wohnen & Haushalt',
                 'Wohnen & Haushalt', 'Wohnen & Haushalt']
    beschreibung = ['AquaLux LED Regenduschkopf', 'Luna Badezimmerschrank mit Spiegeltür',
                    'TouchFree Automatischer Seifenspender', 'ProfiCraft Schlagbohrmaschine inkl. Bohrerset',
                    'DryMate Gipskarton-Schraubendreher', 'AquaCut Präzisions-Fliesenschneider',
                    'GreenMaster Benzin-Rasenmäher mit Mulchfunktion', 'Relaxo Hängematte mit Stahlgestell',
                    'SunGlow Solar-Gartenleuchten-Set', 'PowerMax Präzisions-Stichsäge mit Laserführung',
                    'AirProfi Druckluftkompressor-Set inkl. Zubehör', 'ToolMaster Profi-Werkzeugkiste mit Rollen',
                    'EcoControl Smartes Thermostat', 'CleanBot Smart-Roboterstaubsauger mit Raumkartenfunktion',
                    'FlexiSpace Modulares Regalsystem']
    verkaufspreis = [79.99, 129.99, 39.99, 149.99, 39.99, 89.99, 299.99, 79.99, 49.99, 119.99, 199.99, 89.99, 79.99, 299.99, 129.99]
    artikelnummer = [44995947, 85382787, 19174011, 50747129, 66595483, 56442120, 53611622, 48366987, 11403715, 23662276, 23545982, 47626555, 45268644, 32564187, 79961715]
    bestellt = r.randint(0, 50)
    lager = r.randint(0, 300)
    disponiert = r.randint(0, 10)
    einkaufspreis = round(verkaufspreis[i] * 0.8, 2)
    regalnummer = r.randint(1, 50)
    fachnummer = r.randint(1, 250)

    return [f'"{kategorie[i]}"', hersteller[i], artikelnummer[i], f'"{beschreibung[i]}"', bestellt, lager, disponiert, einkaufspreis, verkaufspreis[i], regalnummer, fachnummer]


def configure_data(file, produktanzahl):

    file.write(
        f'insert into produkt (kategorie, hersteller, artikelnummer, beschreibung, bestellt, '
        f'lager, disponiert, einkaufspreis, verkaufspreis, regalnummer, fachnummer)\n'
        f'values\n'
    )

    for produkt in range(0, produktanzahl):
        file.write("(")
        values = get_values_for_i(produkt)
        for index in range(0, len(values)):
            if index == len(values)-1:
                file.write(str(values[index]))
            else:
                file.write(str(values[index]) + ", ")
        file.write(");\n")

    return file


create_file()
