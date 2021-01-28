//
//  MicData.swift
//  Mics
//
//  Created by Christopher Hicks on 12/19/20.
//

import SwiftUI

let micsData: [Mic] = [
    Mic(
        title: "Dynamic",
        headline: "This microphone is most often used to record loud instruments and vocal and sounds that come from amplifiers.",
        image: "dynamic",
        gradientColors: [Color("GoldLeaf"), Color("Silver")],
        description: "If you're looking for something reliable and versatile, then you ought to start with dynamic mics. Thanks to their moving coil magnetic diaphragm, these mics reliably capture sound and can do so even at high sound pressure levels. As such, you can use them for miking loud sound sources like bass and guitar amplifiers, and even drum kits without worrying about unwanted distortion or damage. Finally, they are not just for high SPL (Sound Pressure Level) applications because they work quite well in quieter settings.",
        bestUsed: ["Stage Vocals", "Drums: Snare", "Electric Guitar", "Keyboard", "Percussion"]
        
    ),
    Mic(
        title: "Condenser",
        headline: "These microphones are best used to capture vocals and high frequencies. They are also the preferred type of microphone for most studio applications. ",
        image: "condenser",
        gradientColors: [Color("GoldLeaf"), Color("Silver")],
        description: "Condenser mics have a thin conductive diaphragm that sits close to a metal backplate. This configuration works like a capacitor wherein sound pressure vibrates the diaphragm which in turn changes the capacitance to produce the audio signal. Since they use capacitance instead of actual moving coils, fidelity and sound quality is improved, making these mics ideal for precision recording in the studio. Note that this method of sound capture requires power, so you'll need a mixer or direct box with phantom power (except in cases where batteries are used). Whatever instrument you are trying to record, condenser mics will get the job done so long as the sound pressure levels aren't too high. Just remember to handle them with care as they are not as sturdy as dynamic mics.",
        bestUsed: ["Piano", "Recording Vocals", "Acoustic Guitar", "Drum: Cymbals", "Strings"]
        ),
    Mic(
        title: "Ribbon",
        headline: "These microphones are the most natural mics that you can use to capture the sound of an instrument, a voice, and even the ambience of a room.",
        image: "ribbon",
        gradientColors: [Color("GoldLeaf"), Color("Silver")],
        description: "While these mics are no longer as popular, Ribbon mics were once very successful particularly in the radio industry. The light metal ribbon used in these mics allows it to pickup the velocity of the air and not just air displacement. This allows for improved sensitive to higher frequencies, capturing higher notes without the harshness while retaining a warm vintage voicing. These days, interest for Ribbon mics have returned, especially since modern production ribbon mics are now sturdier and more reliable than their old counterparts, making them viable for live multi-instrument recording on venues where noise level is manageable. You can also use them for recording if you're looking for vintage vibe, or you can set it up in combination with dynamic or condenser mics for a more open sounding track.",
        bestUsed: ["Piano", "Vocals", "Acoustic Guitar", "Drum: Cymbals", "Upright Bass"]
    ),
    Mic(
        title: "Small Diaphragm",
        headline: "These condeser are your best choice when you want to capture the pure and natural sound, without added flavors.",
        image: "smDiaphragm",
        gradientColors: [Color("Paper"), Color("Silver")],
        description: "Mics with small diaphragms are commonly called pencil mics because of their thin cylindrical shapes. Their compact design makes them lighter and easier to position, and interestingly, they are designed to be stiffer, to handle higher sound pressure levels and have wider dynamic range. You can use them on acoustic guitars, hi-hats, cymbals, and other instruments. Known limitations of this particular diaphragm type are increased internal noise, and low sensitivity.",
        bestUsed: ["Brass", "Strings", "Drum: Cymbals", "Bass", "Brass"]
    ),
    Mic(
        title: "Large Diaphragm",
        headline: "These condenser microphones shape the sound in a pleasing way; it just feels great to hear your own voice on your headphones.",
        image: "lgDiaphragm",
        gradientColors: [Color("Paper"), Color("Silver")],
        description: "The bigger the diaphragm, the more it can sense air vibrations, and the more vibrations are captured, more of the sonic details are faithfully reproduced. Unlike small diaphragms that are stiff, large diaphragms move easily, allowing them to detect even faint differences in sound pressure levels which result in a more transparent and natural sound. This affinity to fidelity has made large diaphragm mics a staple in recording studios, and they are now the most common configuration used on modern USB mics. You can use them to record just about anything, from vocals to guitars and other instruments, just make sure that you keep the volume in check because they can distort when the sound pressure level is increased.",
        bestUsed: ["Piano", "Acoustic Instruments", "Vocals", "Lead Instruments", "Keyboard"]
    ),
    Mic(
        title: "Medium Diaphragm",
        headline: "These microphones are typically used for piano, acoustic guitar and other stringed instruments as well as drums and percussion.",
        image: "mdDiaphragm",
        gradientColors: [Color("Paper"), Color("Silver")],
        description: "Medium Diaphragm mics are sometimes called hybrid because they combine the characteristics of small and large diaphragms. They tend to have a slightly fuller and warm sound similar to large diaphragms while retaining some of the high frequency content that small diaphragms could. These are modern microphones that are gaining reputation in both live and recording situations, but essentially, you can skip on these mics if you're setting up a small home studio or a small venue, especially if you already have large and small diaphragm mics to work with.",
        bestUsed: ["Brass", "Vocals", "Hi Hats", "Drum: Cymbals", "Piano"]
    ),
    Mic(
        title: "Vocals",
        headline: "The Best Mics for Vocals",
        image: "vocalMic",
        gradientColors: [Color("Silver"), Color("GoldLeaf")],
        description: "For live vocal performances where stage volume can get loud and feedback suppression is important, the best choice is to use cardioid mics - see our guide to the best microphones for singing live. Recording vocals on the other hand is a different undertaking that requires more attention to the singer's nuances, as such large diaphragm condensers work best. If you are going for a more vintage sounding vocal recording, use ribbon mics or go for good old dynamic mics instead. In addition, small diaphragm omnidirectional mics and shotgun mics can be used for capturing choirs and singing groups, and are especially useful when choirs perform in venues with great acoustics, like churches.",
        bestUsed: ["Shure SM 58", "Rode NT1A", "Shure SM7B", " sE Electronics sE2200a II", "Sennheiser MD421"]
    ),
    Mic(
        title: "Drums",
        headline: "The Best Mics for Drums",
        image: "drumMics",
        gradientColors: [Color("Silver"), Color("GoldLeaf")],
        description: "Because acoustic drum kits are naturally loud and punchy, you'll want to go with dynamic cardioid mics for the snare, bass and toms. Small diaphragm microphones can then be used to capture the nuances of the hi-hat, ride and cymbals. For best results, there are specialized mics that are fine tuned to handle the different frequencies and SPLs of each part of a drum kit, you can either get them one by one or go for convenient drum kit mic bundles. In the studio, you can setup an Omnidirection or ribbon mic to blend in some ambience into your drum tracks.",
        bestUsed: ["Shure SM57-LC", "Sennheiser E604", "Beyerdynamic TG-D58C", "Miktek PM10", "Shure BETA 52A",]
    ),
    Mic(
        title: "Electric Guitar",
        headline: "The Best Mics for Electric Guitars",
        image: "eGuitarMic",
        gradientColors: [Color("Silver"), Color("GoldLeaf")],
        description: "Close mic'd guitar amplifiers are as loud, sometimes louder than drum kits, and as such they require mics that can handle high SPL. Your best bet is a cardioid or hyper cardioid dynamic mic that is well positioned in front of the amp speaker. Again a second condenser mic or ribbon mic, set back at a distance, can be used in case you are using multiple amps or if you want a warmer more classic sounding output, or in combination with a close mic to capture some of the room ambience.",
        bestUsed: ["Shure SM57", "Sennheiser MD421", "Sennheiser e609", "AKG C414", "Beyerdynamic M160"]
    ),
    Mic(
        title: "Acoustic Guitar",
        headline: "The Best Mics for Acoustic Guitars",
        image: "aGuitarMic",
        gradientColors: [Color("Silver"), Color("GoldLeaf")],
        description: "Acoustic guitars when not amplified have a softer sound with immersive nuances. These type of instruments require the fidelity and quality of large diaphragm condenser mics. You can also go for a well placed Cardioid condenser mic or Figure-8 pattern ribbons depending on the situation and noise level. Finally, setting up an extra small diaphragm mic will work wonders in capturing the higher frequencies that sometimes get lost when acoustics are plugged in or miked directly up front.",
        bestUsed: ["Audio-Technica ATM450", "Shure SM81", "Neumann KM 184", "Royer R-121 Ribbon Microphone", "Shure KSM44A",]
    )
    
]
    

