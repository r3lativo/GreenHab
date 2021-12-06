//
//  ListaRifiuti.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 03/12/21.
//

import Foundation

struct Rifiuto: Hashable, Identifiable {
    let nomeRifiuto: String
    let id = UUID()
}
struct ClasseRifiuti: Identifiable {
    let nomeTipo: String
    let rifiuti: [Rifiuto]
    let id = UUID()
}
private let tipoRifiuti: [ClasseRifiuti]  = [
    
    ClasseRifiuti(nomeTipo: "Carta",
                  rifiuti: [Rifiuto(nomeRifiuto: "Carta regalo"),
                            Rifiuto(nomeRifiuto: "Carta stagnola"),
                            Rifiuto(nomeRifiuto: "Cartoncino"),
                            Rifiuto(nomeRifiuto: "Cartone da imballaggio"),
                            Rifiuto(nomeRifiuto: "Cartone per latte e bevande (tetrapak)"),
                            Rifiuto(nomeRifiuto: "Cartone della pizza senza residui di cibo"),
                            Rifiuto(nomeRifiuto: "Confezioni (abbigliamento e giocattoli)"),
                            Rifiuto(nomeRifiuto: "Etichette di indumenti (se in carta)"),
                            Rifiuto(nomeRifiuto: "Fogli di carta"),
                            Rifiuto(nomeRifiuto: "Giornali"),
                            Rifiuto(nomeRifiuto: "Imballaggi di carta o cartone"),
                            Rifiuto(nomeRifiuto: "Libri"),
                            Rifiuto(nomeRifiuto: "Portauova in carta"),
                            Rifiuto(nomeRifiuto: "Quaderni"),
                            Rifiuto(nomeRifiuto: "Riviste"),
                            Rifiuto(nomeRifiuto: "Sacchetti di carta"),
                            Rifiuto(nomeRifiuto: "Scatole in cartone"),
                            Rifiuto(nomeRifiuto: "Scatole per alimenti (anche se contengono finestre di plastica)")
                           ]),
    
    ClasseRifiuti(nomeTipo: "Indifferenziato",
                  rifiuti: [Rifiuto(nomeRifiuto: "Accendini"),
                            Rifiuto(nomeRifiuto: "Addobbi natalizi"),
                            Rifiuto(nomeRifiuto: "Assorbenti"),
                            Rifiuto(nomeRifiuto: "Bambole"),
                            Rifiuto(nomeRifiuto: "Bicchieri e stoviglie di plastica"),
                            Rifiuto(nomeRifiuto: "Bottoni"),
                            Rifiuto(nomeRifiuto: "Calze"),
                            Rifiuto(nomeRifiuto: "Carta carbone"),
                            Rifiuto(nomeRifiuto: "Carta per affettati"),
                            Rifiuto(nomeRifiuto: "Carta plastificata"),
                            Rifiuto(nomeRifiuto: "Carta sporca"),
                            Rifiuto(nomeRifiuto: "Carta vetrata"),
                            Rifiuto(nomeRifiuto: "Cassette audio e video"),
                            Rifiuto(nomeRifiuto: "CD e Cd-rom"),
                            Rifiuto(nomeRifiuto: "Cenere spenta di sigarette"),
                            Rifiuto(nomeRifiuto: "Cera"),
                            Rifiuto(nomeRifiuto: "Cerotti"),
                            Rifiuto(nomeRifiuto: "Cover di cellulari"),
                            Rifiuto(nomeRifiuto: "Cucchiai di legno"),
                            Rifiuto(nomeRifiuto: "Cuscini"),
                            Rifiuto(nomeRifiuto: "Custodie CD e videocassette"),
                            Rifiuto(nomeRifiuto: "Dentiere"),
                            Rifiuto(nomeRifiuto: "Dischetti per computer"),
                            Rifiuto(nomeRifiuto: "Dischi in vinile"),
                            Rifiuto(nomeRifiuto: "DVD"),
                            Rifiuto(nomeRifiuto: "Elastici"),
                            Rifiuto(nomeRifiuto: "Etichette adesive"),
                            Rifiuto(nomeRifiuto: "Evidenziatore"),
                            Rifiuto(nomeRifiuto: "Fazzoletti per il naso"),
                            Rifiuto(nomeRifiuto: "Feltrini"),
                            Rifiuto(nomeRifiuto: "Fiammiferi"),
                            Rifiuto(nomeRifiuto: "Filo interdentale"),
                            Rifiuto(nomeRifiuto: "Fiori finti"),
                            Rifiuto(nomeRifiuto: "Fiori secchi e recisi"),
                            Rifiuto(nomeRifiuto: "Floppy disk"),
                            Rifiuto(nomeRifiuto: "Fotografie"),
                            Rifiuto(nomeRifiuto: "Gadget in plastica"),
                            Rifiuto(nomeRifiuto: "Gancetti in plastica per chiudere sacchetti"),
                            Rifiuto(nomeRifiuto: "Giocattoli di piccole dimensioni, non elettrici"),
                            Rifiuto(nomeRifiuto: "Gomma (per cancellare e da masticare)"),
                            Rifiuto(nomeRifiuto: "Gommapiuma"),
                            Rifiuto(nomeRifiuto: "Goniometro in plastica"),
                            Rifiuto(nomeRifiuto: "Grucce appendiabiti in plastica"),
                            Rifiuto(nomeRifiuto: "Guanti in lattice"),
                            Rifiuto(nomeRifiuto: "Incensi"),
                            Rifiuto(nomeRifiuto: "Lacci"),
                            Rifiuto(nomeRifiuto: "Lametta usa e getta"),
                            Rifiuto(nomeRifiuto: "Lenti degli occhiali"),
                            Rifiuto(nomeRifiuto: "Lettiere"),
                            Rifiuto(nomeRifiuto: "Lucidascarpe"),
                            Rifiuto(nomeRifiuto: "Matite"),
                            Rifiuto(nomeRifiuto: "Mozziconi di sigaretta"),
                            Rifiuto(nomeRifiuto: "Nastro per regali"),
                            Rifiuto(nomeRifiuto: "Nastro adesivo"),
                            Rifiuto(nomeRifiuto: "Nylon (se non imballaggio)"),
                            Rifiuto(nomeRifiuto: "Occhiali"),
                            Rifiuto(nomeRifiuto: "Ossi (avanzi di cibo)"),
                            Rifiuto(nomeRifiuto: "Ovatta e dischetti struccanti"),
                            Rifiuto(nomeRifiuto: "Paglia (se in piccole quantità)"),
                            Rifiuto(nomeRifiuto: "Palloni da gioco"),
                            Rifiuto(nomeRifiuto: "Pannolini e pannoloni"),
                            Rifiuto(nomeRifiuto: "Pasta alimentare cruda"),
                            Rifiuto(nomeRifiuto: "Paste abrasive (contenitore vuoto)"),
                            Rifiuto(nomeRifiuto: "Peluche"),
                            Rifiuto(nomeRifiuto: "Pennarelli"),
                            Rifiuto(nomeRifiuto: "Penne"),
                            Rifiuto(nomeRifiuto: "Pennelli"),
                            Rifiuto(nomeRifiuto: "Pettini in plastica"),
                            Rifiuto(nomeRifiuto: "Piastrine per zanzare"),
                            Rifiuto(nomeRifiuto: "Polistirolo imballaggi con residui di alimenti"),
                            Rifiuto(nomeRifiuto: "Profilattici"),
                            Rifiuto(nomeRifiuto: "Radiografie"),
                            Rifiuto(nomeRifiuto: "Righello"),
                            Rifiuto(nomeRifiuto: "Rullino Fotografico"),
                            Rifiuto(nomeRifiuto: "Sacchetto dell'aspirapolvere"),
                            Rifiuto(nomeRifiuto: "Sacchetto di carta con interno plastificato (non tetrapak"),
                            Rifiuto(nomeRifiuto: "Sapone in pezzi e saponette"),
                            Rifiuto(nomeRifiuto: "Siringhe ben chiuse (piccole quantità)"),
                            Rifiuto(nomeRifiuto: "Spazzole"),
                            Rifiuto(nomeRifiuto: "Spazzolini"),
                            Rifiuto(nomeRifiuto: "Spugne"),
                            Rifiuto(nomeRifiuto: "Stoviglie in plastica, ceramica o materiali misti"),
                            Rifiuto(nomeRifiuto: "Stuzzicadenti"),
                            Rifiuto(nomeRifiuto: "Suole per scarpe"),
                            Rifiuto(nomeRifiuto: "Taglieri in plastica"),
                            Rifiuto(nomeRifiuto: "Tappo di sughero"),
                            Rifiuto(nomeRifiuto: "Tintura per abiti o scarpe (vuoto)"),
                            Rifiuto(nomeRifiuto: "Trucchi"),
                            Rifiuto(nomeRifiuto: "Tubetti di colore"),
                            Rifiuto(nomeRifiuto: "Vasi in terracotta"),
                            Rifiuto(nomeRifiuto: "Zerbini"),
                            Rifiuto(nomeRifiuto: "Zoccoli")
                           ]),
    
    ClasseRifiuti(nomeTipo: "Isola Ecologica o Raccoglitori preposti",
                  rifiuti: [Rifiuto(nomeRifiuto: "Abiti Usati"),
                            Rifiuto(nomeRifiuto: "Acquaragia (contenitore pieno o con tracce)"),
                            Rifiuto(nomeRifiuto: "Alberi di Natale finti"),
                            Rifiuto(nomeRifiuto: "Antiparassitari (contenitore pieno o con tracce)"),
                            Rifiuto(nomeRifiuto: "Antitarme (contenitore pieno o con tracce)"),
                            Rifiuto(nomeRifiuto: "Apparecchiature elettriche ed elettroniche"),
                            Rifiuto(nomeRifiuto: "Armadi"),
                            Rifiuto(nomeRifiuto: "Aspirapolvere"),
                            Rifiuto(nomeRifiuto: "Assi da stiro"),
                            Rifiuto(nomeRifiuto: "Attaccapanni"),
                            Rifiuto(nomeRifiuto: "Bacinelle in plastica"),
                            Rifiuto(nomeRifiuto: "Batterie"),
                            Rifiuto(nomeRifiuto: "Bauli"),
                            Rifiuto(nomeRifiuto: "Biciclette"),
                            Rifiuto(nomeRifiuto: "Binari in alluminio per tendine"),
                            Rifiuto(nomeRifiuto: "Bistecchiere elettriche"),
                            Rifiuto(nomeRifiuto: "Bombole del gas (vuote)"),
                            Rifiuto(nomeRifiuto: "Bombolette spray piene"),
                            Rifiuto(nomeRifiuto: "Borse in cuoio"),
                            Rifiuto(nomeRifiuto: "Box per bambini"),
                            Rifiuto(nomeRifiuto: "Calcolatrice"),
                            Rifiuto(nomeRifiuto: "Canne per irrigazione"),
                            Rifiuto(nomeRifiuto: "Cappelli"),
                            Rifiuto(nomeRifiuto: "Caricabatterie"),
                            Rifiuto(nomeRifiuto: "Carrozzine"),
                            Rifiuto(nomeRifiuto: "Cartucce per stampanti"),
                            Rifiuto(nomeRifiuto: "Cassette di legno"),
                            Rifiuto(nomeRifiuto: "Cinture"),
                            Rifiuto(nomeRifiuto: "Colla"),
                            Rifiuto(nomeRifiuto: "Computer"),
                            Rifiuto(nomeRifiuto: "Condizionatori"),
                            Rifiuto(nomeRifiuto: "Congelatori"),
                            Rifiuto(nomeRifiuto: "Contenitori grandi in plastica"),
                            Rifiuto(nomeRifiuto: "Cornici in legno"),
                            Rifiuto(nomeRifiuto: "Elettrodomestici"),
                            Rifiuto(nomeRifiuto: "Farmaci"),
                            Rifiuto(nomeRifiuto: "Fili elettrici"),
                            Rifiuto(nomeRifiuto: "Giocattoli di grandi dimensioni, elettrici"),
                            Rifiuto(nomeRifiuto: "Grucce appendiabiti di legno"),
                            Rifiuto(nomeRifiuto: "Guanti in pelle o lana"),
                            Rifiuto(nomeRifiuto: "Lampadine, lampadari"),
                            Rifiuto(nomeRifiuto: "Materassi"),
                            Rifiuto(nomeRifiuto: "Mensole in legno"),
                            Rifiuto(nomeRifiuto: "Monitor"),
                            Rifiuto(nomeRifiuto: "Mobili"),
                            Rifiuto(nomeRifiuto: "Mouse"),
                            Rifiuto(nomeRifiuto: "Neon"),
                            Rifiuto(nomeRifiuto: "Olio esausto"),
                            Rifiuto(nomeRifiuto: "Ombrelli e ombrelloni"),
                            Rifiuto(nomeRifiuto: "Pentole in metalli misti (teflon, bachelite, ecc)"),
                            Rifiuto(nomeRifiuto: "Poltrone"),
                            Rifiuto(nomeRifiuto: "Radio (apparecchi radio)"),
                            Rifiuto(nomeRifiuto: "Sacchi in rafia naturale"),
                            Rifiuto(nomeRifiuto: "Specchi"),
                            Rifiuto(nomeRifiuto: "Stereo"),
                            Rifiuto(nomeRifiuto: "Sveglie"),
                            Rifiuto(nomeRifiuto: "Tagliere in legno"),
                            Rifiuto(nomeRifiuto: "Tastiere"),
                            Rifiuto(nomeRifiuto: "Telefoni"),
                            Rifiuto(nomeRifiuto: "Televisori"),
                            Rifiuto(nomeRifiuto: "Termometri"),
                            Rifiuto(nomeRifiuto: "Toner"),
                            Rifiuto(nomeRifiuto: "Triciclo"),
                            Rifiuto(nomeRifiuto: "Trielina"),
                            Rifiuto(nomeRifiuto: "Valigie"),
                            Rifiuto(nomeRifiuto: "Zaini in stoffa"),
                            Rifiuto(nomeRifiuto: "Zanzariere")
                           ]),
                  
    ClasseRifiuti(nomeTipo: "Organico",
                  rifiuti: [Rifiuto(nomeRifiuto: "Avanzi di cibo"),
                            Rifiuto(nomeRifiuto: "Batuffoli e bastoncini di cotone biodegradabili"),
                            Rifiuto(nomeRifiuto: "Buste e sacchetti per alimenti in carta sporca"),
                            Rifiuto(nomeRifiuto: "Bustina del tè e della camomilla"),
                            Rifiuto(nomeRifiuto: "Capelli"),
                            Rifiuto(nomeRifiuto: "Carbone spento"),
                            Rifiuto(nomeRifiuto: "Carta unta per alimenti"),
                            Rifiuto(nomeRifiuto: "Cenere spenta di legna"),
                            Rifiuto(nomeRifiuto: "Fazzoletto di carta sporco"),
                            Rifiuto(nomeRifiuto: "Pettini in legno"),
                            Rifiuto(nomeRifiuto: "Piante"),
                            Rifiuto(nomeRifiuto: "Piume di animali (non sintetiche)"),
                            Rifiuto(nomeRifiuto: "Ramaglie"),
                            Rifiuto(nomeRifiuto: "Terriccio per piante")
                           ]),
    
    ClasseRifiuti(nomeTipo: "Multimateriale (plastica/metalli)",
                  rifiuti: [Rifiuto(nomeRifiuto: "Acetone (contenitore vuoto"),
                            Rifiuto(nomeRifiuto: "Alluminio"),
                            Rifiuto(nomeRifiuto: "Ammoniaca (contenitore vuoto)"),
                            Rifiuto(nomeRifiuto: "Attrezzi metallici"),
                            Rifiuto(nomeRifiuto: "Barattoli in plastica o metallo"),
                            Rifiuto(nomeRifiuto: "Blister in plastica"),
                            Rifiuto(nomeRifiuto: "Bombolette spray (contenitore vuoto)"),
                            Rifiuto(nomeRifiuto: "Bottiglia di alcol vuota"),
                            Rifiuto(nomeRifiuto: "Bottiglie in plastica per acqua, olio, succhi"),
                            Rifiuto(nomeRifiuto: "Buste e sacchetti di plastica"),
                            Rifiuto(nomeRifiuto: "Caffettiere (parti in metallo)"),
                            Rifiuto(nomeRifiuto: "Candeggina (contenitore vuoto)"),
                            Rifiuto(nomeRifiuto: "Cellophane"),
                            Rifiuto(nomeRifiuto: "Chiavi"),
                            Rifiuto(nomeRifiuto: "Confezioni in plastica"),
                            Rifiuto(nomeRifiuto: "Contenitori in alluminio e acciaio"),
                            Rifiuto(nomeRifiuto: "Detersivi"),
                            Rifiuto(nomeRifiuto: "Ferro"),
                            Rifiuto(nomeRifiuto: "Ferro da uncinetto"),
                            Rifiuto(nomeRifiuto: "Fiale in plastica per uso alimentare"),
                            Rifiuto(nomeRifiuto: "Film e pellicole da imballaggio in plastica"),
                            Rifiuto(nomeRifiuto: "Flaconi in plastica vuoti"),
                            Rifiuto(nomeRifiuto: "Fogli in alluminio"),
                            Rifiuto(nomeRifiuto: "Ganci in metallo"),
                            Rifiuto(nomeRifiuto: "Goniometro in metallo"),
                            Rifiuto(nomeRifiuto: "Grucce appendibiabiti in metallo"),
                            Rifiuto(nomeRifiuto: "Guanti in gomma, lattice o usa e getta"),
                            Rifiuto(nomeRifiuto: "Guarnizioni"),
                            Rifiuto(nomeRifiuto: "Gusci di molluschi"),
                            Rifiuto(nomeRifiuto: "Imballaggi in metallo e plastica"),
                            Rifiuto(nomeRifiuto: "Lacca (contenitore vuoto)"),
                            Rifiuto(nomeRifiuto: "Latta"),
                            Rifiuto(nomeRifiuto: "Lattine"),
                            Rifiuto(nomeRifiuto: "Pellicole"),
                            Rifiuto(nomeRifiuto: "Pentole"),
                            Rifiuto(nomeRifiuto: "Polistirolo imballaggi"),
                            Rifiuto(nomeRifiuto: "Reggette per legatura pacchi"),
                            Rifiuto(nomeRifiuto: "Reti in plastica per frutta e verdura"),
                            Rifiuto(nomeRifiuto: "Sacchi e sacchetti di plastica (alimenti, detersivi, giardinaggio)"),
                            Rifiuto(nomeRifiuto: "Sacchi di rafia sintetici"),
                            Rifiuto(nomeRifiuto: "Scatole di plastica, acciaio"),
                            Rifiuto(nomeRifiuto: "Scatolette di tonno e altri alimenti (vuote e sciacquate)"),
                            Rifiuto(nomeRifiuto: "Secchielli di plastica"),
                            Rifiuto(nomeRifiuto: "Stagnola"),
                            Rifiuto(nomeRifiuto: "Stoviglie in metallo"),
                            Rifiuto(nomeRifiuto: "Tappi (a corona, di barattoli e in plastica)"),
                            Rifiuto(nomeRifiuto: "Tintura per capelli (vuoto)"),
                            Rifiuto(nomeRifiuto: "Tubetti di dentifricio o uso alimentare"),
                            Rifiuto(nomeRifiuto: "Vaschette e barattoli per gelati, alimenti, uova"),
                            Rifiuto(nomeRifiuto: "Zaini in plastica"),
                           ]),
    
    ClasseRifiuti(nomeTipo: "Vetro",
                  rifiuti: [Rifiuto(nomeRifiuto: "Bicchieri in vetro"),
                            Rifiuto(nomeRifiuto: "Biglie in vetro"),
                            Rifiuto(nomeRifiuto: "Bottiglie in vetro"),
                            Rifiuto(nomeRifiuto: "Contenitori per alimenti in vetro"),
                            Rifiuto(nomeRifiuto: "Profumi (contenitori vuoti in vetro)"),
                            Rifiuto(nomeRifiuto: "Fiale in vetro per uso alimentare")
                           ]),
    
    
]
