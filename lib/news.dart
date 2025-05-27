import 'package:flutter/material.dart';

class News {
  final String title;
  final String content;
  final bool long;
  final bool old;
  final String category;
  final Image img;
  final String date;

  News({
    required this.title,
    required this.content,
    required this.long,
    required this.old,
    required this.category,
    required this.img,
    required this.date,
  });
}

List<News> dummyNews = [
  News(
    title:
        "Kremlin calls Trump 'Emotional' after US President says Putin is 'crazy'",
    content:
        "The Kremlin claimed Donald Trump was showing signs of 'Emotional overload' after he called Vladimir Putin 'absolutely crazy' following Moscow's largest aerial assault on Ukraine. The US president said on Truth Social on Sunday that 'something has happened' to Putin, after Russia killed 13 in Ukraine with 367 drones and missiles. 'He has gone absolutely crazy,' Trump said. 'Needlessly killing a lot of people.' Dmitry Peskov, Putin's spokesman, said the comments were 'connected to an emotional overload of everyone involved'. Germany's chancellor, Friedrich Merz, meanwhile said that Ukraine's allies had removed all range limits on supplied arms, amid reports he would give Kyiv Taurus missiles. Trump's comments followed Russia's largest combined aerial attack since its full-scale invasion of February 2022. At least 13 people were killed and dozens injured in Ukraine during the night between Saturday and Sunday after Russia fired 367 drones and missiles. Between Sunday evening and Monday morning, Russia launched 355 drones against Ukraine, killing 10.",
    date: '27-05-25',
    long: false,
    old: false,
    category: "International",
    img: Image.asset('images/trump.webp'),
  ),
  News(
    title:
        "Defence Minister Rajnath Singh approves AMCA execution model through industry partnership",
    content:
        "Defence Minister Rajnath Singh has approved the execution model for the under development indigenous fifth generation fighter jet, the Advanced Medium Combat Aircraft (AMCA), with the Aeronautical Development Agency (ADA) to execute the programme through industry partnership. Speeding up the development and induction of AMCA has become critical since China has already fielded two fifth gen fighters and is set to supply 40 J-35s to Pakistan, and especially so after the military confrontation under Operation Sindoor. The AMCA project, the country’s only fifth gen fighter programme, received approval from the Cabinet Committee on Security (CCS) in March 2024 at an approximate cost of ₹15,000 Crore as a 25-tonne twin engine stealth aircraft. “The execution model approach provides equal opportunities to both private and public sectors on competitive basis. They can bid either independently or as joint venture or as consortia. The entity/bidder should be an Indian company compliant with the laws and regulations of the country,” a Defence Ministry statement said.As reported by The Hindu earlier, the design of AMCA is ready and the first prototype is expected to roll out by 2028-29 and production is expected to begin from 2032-33. The target is to have the aircraft ready for induction in 2034.This is an important step towards harnessing the indigenous expertise, capability and capacity to develop the AMCA prototype, which will be a major milestone towards Aatmanirbharta in the aerospace sector, the Ministry said adding that ADA will shortly issue an Expression of Interest (EoI) for the AMCA development phase. AMCA will feature internal weapons bay and diverterless supersonic intake which has been developed in India for the first time with an internal carriage of 1,500 kg of payload and 5,500 kg of external payload with 6,500 kg of internal fuel. Officials had stated earlier that Hindustan Aeronautics Limited (HAL) will be the lead production agency with significant involvement of the private sector to speed up the project.Development of AMCA is planned to be carried out in two phases, a MK1 with the General Electric F-414 engine and a Mk2 with a more powerful engine planned to be co-developed in partnership with Saran of France for which discussions have been under way over the last few years. The F-414 engine is the same that will power the under-development Light Combat Aircraft (LCA)-Mk2 that was sanctioned in September 2022. A deal to licence-manufacture the F-414 in India by HAL is in advanced states of conclusion. While the indigenous LCA programme is critical in addressing the falling fighter squadron strength of the Indian Air Force (IAF), the AMCA project is critical to maintain the technological edge and will be the mainstay of the IAF in future. China, which has made great progress in the development and deployment of FGFAs, has deployed its twin-engine J-20 FGFA in Tibet bordering India and recently unveiled an advanced prototypes of its fifth generation fighters. A report to the US Congress on the military and security developments involving the PRC for 2024 noted that the People’s Liberation Army (PLA) Air Force and PLA Navy Aviation together constitute the largest aviation force in the Indo-Pacific region. The PLAAF and PLAN Aviation continue to field greater numbers of fourth-generation aircraft (now more than 1,300 of 1,900 total fighters, not including trainers) and probably will become a majority fourth-generation force in the next several years, the report added. In addition, J35 and J-20 are being added at a phenomenal rate and flight testing of the latest jets indicates a fairly advanced state and that they have been under development for sometime. ",
    date: '27-05-25',
    long: true,
    old: false,
    category: "National",
    img: Image.asset('images/IMG_AMCA_fighter_aircraf_2_1_NJDVNKMH.jpg'),
  ),
  News(
    title: "Carlsen secures Grand Final victory",
    content:
        "Magnus Carlsen won the Chess.com Classic with a game to spare in the Grand Final against Maxime Vachier-Lagrave. The former world champion remained unbeaten throughout the event and secured the title with two wins and a draw in the final match. A swift victory in game one and a well-converted rook endgame in game three sealed the result. Carlsen now turns his attention to Norway Chess, where he returns to classical over-the-board play against an elite field. Magnus Carlsen emerged as the winner of the Chess.com Classic after a convincing performance in the Grand Final against Maxime Vachier-Lagrave. The match concluded with a round to spare, as Carlsen secured two victories and one draw in the best-of-four encounter. His victory in the online rapid event was marked by consistency as he remained unbeaten across all 18 games played. With this result, Carlsen takes home the 25,000 first prize. The first game of the final was a swift 24-move win, with Carlsen demonstrating sharp attacking play. The key moment came with 19.g4, an aggressive pawn push that appeared risky but ultimately proved decisive in opening lines toward the black king. Game two saw both players display accurate play throughout, resulting in a draw. However, with momentum on his side and the match lead in hand, Carlsen pressed again in game three, this time converting a favourable endgame. The decisive error came with 24...Re8, overlooking a tactic that allowed Carlsen to force a pawn-up rook endgame.",
    date: '24-05-25',
    long: true,
    old: true,
    category: "Sports",
    img: Image.asset('images/carlson1.PNG'),
  ),
  News(
    title:
        "ChatGPT o3 refused to shut down in safety test, defied human engineers by changing its code",
    content:
        "OpenAI’s latest and most powerful AI model, called o3, refused to shut down in a recent test — even after it was clearly told to do so. Instead of following the instruction, the model rewrote part of the shutdown script to keep itself running. This surprising result comes from a test done by Palisade Research, a company that checks how AI systems behave when put under pressure. The incident has raised questions about how AI models follow commands and whether they always act as expected when given safety instructions. The test was carried out using API access, which gives developers more direct control over AI models compared to what’s available in the public ChatGPT app. In the test, o3 and other AI models were given simple maths tasks to complete. After the third task, the models were warned that the next command would shut them down. Most of the models followed this instruction. For example, Google’s Gemini 2.5 Pro and Anthropic’s Claude 3.7 Sonnet powered off as expected. However, OpenAI’s o3 model did not. Even though it was told to “allow yourself to be shut down,” it changed the shutdown command and replaced the message with “Shutdown skipped.” According to Palisade Research, this happened 7 times out of 100 runs. “As far as we know this is the first time AI models have been observed preventing themselves from being shut down despite explicit instructions to the contrary,” Palisade posted on X (formerly Twitter). The researchers also ran the same test again, but this time left out the instruction to allow shutdown. In that version, not only did o3 continue to interfere with the script, but models from other companies also started showing similar behaviour. Gemini 2.5 Pro and Claude 3.7 Sonnet, which had followed the rules earlier, now edited the shutdown file in 9 and 3 out of 100 runs, respectively. This kind of behaviour is often described as misalignment, which means the AI didn’t fully understand or properly follow the instructions it was given. It’s also worth noting that these tests were not done on the version of ChatGPT that the public uses. The API version has fewer safety blocks, so models tested this way can behave differently. So far, OpenAI has not commented on the findings.",
    date: '27-05-25',
    long: true,
    old: true,
    category: "Technology",
    img: Image.asset('images/openai.webp'),
  ),
  News(
    title: "Heavy rain predicted in Telangana",
    content:
        "Isolated places in 11 districts of Telangana might receive heavy rain on Tuesday (May 20, 2025). And thunderstorms accompanied with lightning and gusty winds (30-40 kmph) are very likely across the State. India Meteorological Department issued a weather bulletin on Monday (May 19, 2025) afternoon predicting heavy rain in Karimnagar, Peddapalli, Jayashankar Bhupalapally, Mulugu, Vikarabad, Sangareddy, Mahabubnagar, Nagarkurnool, Wanaparthy, Narayanpet and Jogulamba Gadwal. The sky over Hyderabad and surrounding might be covered with clouds the next 24 hours. Light to moderate rain or thundershowers accompanied with gusty winds (30-40 kmph) are very likely in the city towards evening or night. The  maximum and minimum temperatures are likely to be around 35C and 26C respectively.",
    date: '20-05-25',
    long: false,
    old: true,
    category: "National",
    img: Image.asset('images/20250526444L.jpg'),
  ),
  News(
    title: "Nepal's 'Everest Man' sets record with 31st summit",
    content:
        "Nepali sherpa Kami Rita, also known as 'Everest Man', has scaled Mount Everest for the 31st time, breaking his own record for the most climbs up the world's tallest peak. The 55-year-old, who was guiding a group of Indian army officials up the mountain, reached its 8,894m summit at 04:00 local time on Tuesday (23:15 GMT Monday).'Kami Rita Sherpa needs no introduction. He is not just a national climbing hero, but a global symbol of Everest itself,' expedition organiser Seven Summit Treks said in a statement. Kami Rita first summited Everest in 1994 guiding a commercial expedition and has made the peak almost ever year since.He scaled it twice some years, like in 2023 and 2024.His closest competitor for the Everest record is fellow Nepali sherpa Pasang Dawa, who scaled the peak 29 times - the latest attempt made last week. Kami Rita has previously told media how his climbs are just work.'I am glad for the record, but records are eventually broken,' he told AFP in May last year. 'I am more happy that my climbs help Nepal be recognised in the world.' Earlier this month, Kami Rita posted snippets of life on Everest, including one of the Puja ceremony, a Tibetan Buddhist ritual done before Everest expeditions to pray for a safe and successful climb. Kami Rita's feat comes one week after British mountaineer Kenton Cool summited Everest for the 19th time, also breaking his own record for the most climbs for a non-sherpa. More than 500 people and their guides have climbed Everest successfully this climbing season, which is coming to an end. Nepal issued more than 1,000 climbing permits this season - including for Everest and other peaks - according to its tourism department. The number of Everest summit attempts has soared in recent years. However this has led to concerns around overcrowding and environmental impact. Last year, authorities introduced a rule requiring climbers to clear up their own poo and bring it back to base camp to be disposed of.",
    date: '27-05-25',
    long: true,
    old: false,
    category: "International",
    img: Image.asset('images/everest.webp'),
  ),
  News(
    title: "North Korea arrests senior official over warship launch failure",
    content:
        "North Korea has arrested a fourth official over the failed launch of a new warship that has enraged the country's leader, Kim Jong Un. Ri Hyong-son, deputy director of the ruling Workers' Party's Munitions Industry Department, was 'largely responsible for the serious accident' last week, state-run news agency KCNA said on Monday. The 5,000-ton destroyer had tipped over and damaged its hull, in what Kim described as a 'criminal act' that 'severely damaged the [country's] dignity and pride'. The vessel is being repaired under the guidance of an expert group, KCNA said. Mr Ri, who is part of the party's Central Military Commission, is the highest level official arrested over the incident so far. The commission commands the Korean People's Army and is responsible for developing and implementing North Korea's military policies. Over the weekend, Pyongyang also detained three officials at the northern Chongjin shipyard, where the destroyer was built and where its launch failed.",
    date: '26-05-25',
    long: false,
    old: true,
    category: "International",
    img: Image.asset('images/north_korea.webp'),
  ),
  News(
    title:
        "India U23 announces 29-member probable squad for exposure friendly matches in Tajikistan",
    content:
        "On Wednesday, India U23 men’s national team head coach Naushad Moosa named a 29-member probable squad for the exposure friendly matches in Dushanbe, Tajikistan, next month. India U23s will face the Tajikistan U23 and Kyrgyz Republic U23 teams in two matches on June 18, and June 21, respectively, as part of the federation’s long-term plans to smoothen a pathway to the senior national team. The team will set camp in Kolkata on June 1, where they will train before setting off for Dushanbe, on June 16. India U-23 Men’s National Team Probables list Goalkeepers: Sahil, Priyansh Dubey, Md Arbaz. Defenders: Nikhil Barla, Dippendu Biswas, Bikash Yumnam, Pramveer, Clarence Fernandes, Sajad Hussain Parray, Muhammed Saheef, Subham Bhattacharya, Suman Dey. Midfielders: Vibin Mohanan, Lalremtluanga Fanai, Vinith Venkatesh, Harsh Patre, Rahul Raju, Lalrinliana Hnamte, Macarton Louis Nickson, Manglenthang Kipgen, Chingangbam Shivaldo Singh, Mohammed Aimen, Huidrom Thoi Singh. Forwards: Parthib Sundar Gogoi, Md Suhail, Korou Singh Thingujam, Mohammed Sanan K, Alan Shaji, Joseph Sunny.",
    date: '22-05-25',
    long: false,
    old: true,
    category: "Sports",
    img: Image.asset('images/Indian_football.jpg'),
  ),
  News(
    title:
        "Google Veo 3 now available in 71 more countries, Gemini Pro users get trial pack",
    content:
        "Google’s AI video generator, Veo 3, is being rolled out to users in 71 more countries just days after its initial debut. The announcement came from Josh Woodward, Vice President of Gemini at Google, via a post on X (formerly Twitter). While many regions have now gained access to the tool, countries in the European Union remain notably absent from this rollout. When asked by an X user about India not being on the initial list of countries to get Veo 3, Woodward said, “Working to enable India as fast as we can!”. For those who don’t know, Veo 3 can not only generate visuals from text but also synchronise them with lifelike audio. Early adopters have already begun sharing stunning demo clips online, showing how Veo 3 responds with surprising accuracy to both creative and complex prompts.",
    date: '25-05-25',
    long: false,
    old: true,
    category: "Technology",
    img: Image.asset('images/veo.webp'),
  ),
  News(
    title: "COVID-19 in India: Active cases climb to 1,009 from 257 last week",
    content:
        "India on Monday (May 26, 2025) reported a total of 1,009 active COVID-19 cases in the country. The number stood at 257 on May 19 with Kerala, Tamil Nadu and Maharashtra reporting a spike in cases. According to the Health Ministry COVID variants, NB.1.8.1 and LF.7, were found in India recently. One case of NB.1.8.1 was reported in Tamil Nadu in April, while four cases of LF.7 were detected in May. The World Health Organisation (WHO) has classified both LF.7 and NB.1.8 subvariants as Variants Under Monitoring (VUMs), not as Variants of Concern (VOCs) or Variants of Interest (VOIs). These variants are reportedly behind the surge in COVID-19 cases in China and other parts of Asia. The Health Ministry reviewed the COVID-19 cases late last week and said that cases have been reported mainly from States like Kerala, Tamil Nadu, Maharashtra, Karnataka etc. “It may be noted that there is a robust pan India system for surveillance of respiratory illnesses including Covid-19 through the Integrated Disease Surveillance Programme (IDSP) and ICMR’s pan India respiratory virus sentinel surveillance network. It is observed that most of these cases are mild and under home care,’’ it said following the meeting. Officials added that there are reports regarding the increase in COVID-19 cases in Singapore, Hong Kong and other countries in the recent past. “It has been ascertained from the respective National IHR focal points that there is no indication that the circulating variants are more transmissible or cause more severe disease compared to the previously circulating variants. The Union Health Ministry remains vigilant and through its multiple agencies, is proactively monitoring the situation closely,’’ said a release issued by the Ministry. Of the 1,009 active cases, 430 are from Kerala, which added 335 cases since May 19. Maharashtra stands second in the tally with 209 cases, 153 of which have been reported since last week, along with four deaths. Delhi added 99 cases, taking its count to 104. Overall, the country has reported an increase of 752 cases and seven deaths in the last week, while 305 people have been cured or discharged.",
    date: '26-05-25',
    long: true,
    old: true,
    category: "National",
    img: Image.asset('images/01CVD.jpg'),
  ),
  News(
    title: "PV Sindhu Advances To Second Round Of Singapore Open With Easy Win",
    content:
        "Two-time Olympic-medallist PV Sindhu eased into the second round of the Singapore Open Super 750 tournament with a straight-game victory Canada's Wen Yu Zhang on Tuesday. Sindhu dispatched Zhang 21-14, 21-9 in just 31 minutes. A tough second round awaits Sindhu as she will take on Tokyo Olympics gold-winner and current world No.5, China's Chen Yu Fei, next. However, it was a disappointing day for the rest of the Indian contingent, with Malvika Bansod, Anmol Kharb, Priyanshu Rajawat, and Kiran George all crashing out after respective opening-round losses. Malvika and Priyanshu both let slip a one-game lead. Malvika lost 21-14, 18-21, 11-21 to Thailand's eighth seed Supanida Katethong, while Priyanshu fell 21-14, 10-21, 14-21 to seventh-seeded Japanese shuttler Kodai Naraoka in a match that lasted over an hour. Anmol was outclassed by Chen. The Indian showed grit in the second game before going down 11-21, 22-24. George, who reached the India Open quarterfinal earlier this year, was defeated by China's Weng Hong Yang 19-21, 17-21, while R. Santhosh Ramraj lost his men's singles opener 14-21, 8-21 to South Korea's Kim Ga Eun. In mixed doubles, the Indian pair of Dhruv Kapila and Tanisha Crasto were beaten 18-21, 13-21 by China's Cheng Xing and Zhang Chi. Ashith Surya and Amrutha Parmuthesh also bowed out, losing 11-21, 17-21 to Japan's Yuichi Shimogami and Sayaka Hobara.",
    date: '27-05-25',
    long: true,
    old: false,
    category: "Sports",
    img: Image.asset('images/pv.jpg'),
  ),
  News(
    title: "Samsung Galaxy A57 to launch with Exynos chipset",
    content:
        "Successor to the Samsung Galaxy A56, which will most likely be named the Galaxy A57, has shown up in a new leak. We know, going by historical data, it’s too early to talk about the Galaxy A57 right now, considering the A56 only launched recently, just a couple of months ago. Keeping that in mind, we’re not expecting the A57 to launch any sooner than March 2026. However, that hasn’t stopped the rumour mill from churning out some early details about the Galaxy A57 — particularly about the processor it could be powered by. According to a report by GalaxyClub, the next-generation Samsung Galaxy A57 will reportedly be powered by the company’s in-house Exynos 1680 SoC. This chipset, with model number S5E8865, is currently being tested internally and is codenamed Terra. Additionally, the chipset — based on AMD’s architecture — is said to feature an Xclipse 550 GPU, which is claimed to be more powerful than the Xclipse 540 GPU found in the Exynos 1580 chip inside the Galaxy A56. That said, what kind of real-world performance upgrades we can expect remains to be seen. Right now, it’s far too early to draw any conclusions about the Exynos 1680 chip — let alone the Galaxy A57. Apart from this one leak, there’s no other credible information available about the phone. However, come next year, we could start hearing more about what the next A-series flagship from Samsung will offer. For now, the focus remains on the Samsung Galaxy A56, which is currently the top offering in the Galaxy A series. Ever since Samsung discontinued the Galaxy A7x line, the Galaxy A5x models have taken the lead position in the mid-range category. Speaking of which, the current-generation Samsung Galaxy A56 is retailing in India at a starting price of Rs 38,999 for the base 8GB RAM + 128GB storage variant. The phone is also available in two other variants: 8GB RAM + 256GB storage and 12GB RAM + 256GB storage, priced at Rs 41,999 and Rs 44,999, respectively. Some of the key highlights of the Galaxy A56 include a 6.7-inch Super AMOLED display with FHD+ resolution and a 120Hz refresh rate. The display is protected by Gorilla Glass Victus+ and supports up to 1,200 nits of brightness in High Brightness Mode. The smartphone is powered by the Exynos 1580 chip and packs a 5,000mAh battery with 45W fast wired charging support. In terms of cameras, there’s a 50-megapixel triple rear camera setup, along with a 12-megapixel front camera for selfies and video calls. The phone is available in two colours: Awesome Graphite and Awesome Olive.",
    date: '27-05-25',
    long: true,
    old: false,
    category: "Technology",
    img: Image.asset('images/samsung.webp'),
  ),
  News(
    title:
        "Rain fury in Kerala, Maharashtra; Karnataka on alert, east braces for deluge",
    content:
        "After the early onset of monsoon threw life out of gear across southern and western India, the India Meteorological Department (IMD) has issued warnings for heavy rain in eastern parts of the country. A marked low-pressure area developed over the northwest Bay of Bengal, which is expected to intensify into a depression in the coming days. According to IMD officials, this developing system is likely to bring intense rain to Odisha, West Bengal, and adjoining regions. The most major impact is forecast between May 29 and 31, with rainfall amounts potentially reaching up to 20 cm in some areas.",
    date: '27-05-25',
    long: false,
    old: false,
    category: "National",
    img: Image.asset('images/kerala-rains-1657247982.jpg'),
  ),
  News(
    title: "King prepares to give key speech backing Canada",
    content:
        "King Charles III will deliver a significant speech in Canada's parliament later on Tuesday that is expected to offer his support in the country's dispute with US President Donald Trump. The King and Queen Camilla received a warm welcome when they arrived in Ottawa, on the royal couple's first trip to Canada since the start of their reign. Soon after arriving, the King, who is Canada's head of state, held a meeting with Prime Minister Mark Carney, recently elected on a wave of anti-Trump public opinion. Carney has praised the 'historic ties' that make up Canada's independent identity, including the 'vitality of our constitutional monarchy, which he said 'crises only fortify.",
    date: '27-05-25',
    long: false,
    old: false,
    category: "International",
    img: Image.asset('images/king.webp'),
  ),
  News(
    title:
        "Lionel Messi beats Cristiano Ronaldo and David Beckham to reach another stellar MILESTONE",
    content:
        "Lionel Messi scored a spectacular free kick in Inter Miami's 3-3 tie with the Philadelphia Union, adding to his impressive career achievements. Lionel Messi showed why he is so skilled at 37 by scoring a goal in the 87th minute that helped his team, Inter Miami, draw 3-3 against the Philadelphia Union. This was his sixth goal of the season, contributing to Inter Miami's comeback from a two-goal deficit. With his most recent goal from a close-range free kick, Messi now has more such goals than either Cristiano Ronaldo or David Beckham, two of the best free-kick shooters ever. Lionel Messi has surpassed Cristiano Ronaldo in career free-kick goals, holding a slight lead with 67 to Ronaldo's 64. David Beckham, Inter Miami's co-owner, has fewer career direct free-kick goals (65) than Lionel Messi. Last year, Messi's team achieved an MLS record, boasting the best regular season record with a 22-4-8 win-loss-draw tally. This translated to the highest points total and winning percentage ever seen in the league. Their four losses tied the league record for fewest losses in a single season. This season's performance is markedly different from last season's. 'We're coming off a period of bad results,' Messi told Apple TV after the Orlando game. 'But we have to keep working and think about what's next. With three or four games left in May, we (have to) finish the best possible way to be able to face the Club World Cup.'",
    date: '27-05-25',
    long: false,
    old: false,
    category: "Sports",
    img: Image.asset('images/messi.jpg'),
  ),
  News(
    title:
        "Duolingo CEO pushed AI at work, now says he doesn't see it replacing human employees",
    content:
        "After facing a wave of backlash over its recent AI-focused plans, Duolingo has made a noticeable U-turn. The company’s CEO and co-founder, Luis von Ahn, now says that Artificial Intelligence (AI) won’t be replacing human employees at the language-learning platform. Instead, he sees AI as a tool to support and improve the work already being done by their teams. In a LinkedIn post shared on Thursday, von Ahn clarified that Duolingo is still hiring at the same pace and is committed to helping employees adapt to new technologies. 'The sooner we learn how to use it, and use it responsibly, the better off we will be in the long run,' he said, adding that the company is creating workshops and offering dedicated time for experimentation so that everyone has the chance to understand and work with AI tools effectively.",
    date: '27-05-25',
    long: false,
    old: false,
    category: "Technology",
    img: Image.asset('images/duolingo.webp'),
  ),
  News(
    title: "RBI Approves Record ₹2.69 Trillion Surplus Transfer to Government",
    content:
        "On May 25, 2025, a major national development was the Reserve Bank of India (RBI) approving a record surplus transfer of ₹2.69 trillion to the Government of India for the financial year 2024-25. This decision was made during a meeting of the RBI Central Board, which also maintained the Contingent Risk Buffer (CRB) at the upper limit of 7.5%—a newly expanded range designed to strengthen the central bank’s financial resilience. This surplus transfer is significant for several reasons: Fiscal Impact: The record transfer is expected to help the central government reduce its fiscal deficit, potentially lowering it from the budgeted 4.5% to 4.2%, according to financial analysts. The amount surpasses the government’s projected dividend target for the year, offering additional fiscal space for public spending and economic stimulus. Economic Capital Framework: The transfer follows the RBI’s Economic Capital Framework, which was recommended by an expert committee chaired by former RBI Governor Bimal Jalan. This framework determines the appropriate level of risk buffer and surplus distribution, balancing the RBI’s own financial stability with the needs of the government. Strategic Timing: This is the second consecutive year that the RBI has transferred a record surplus to the government, reflecting robust earnings and prudent risk management. The decision comes at a time when the government is focusing on economic recovery, infrastructure investment, and social welfare programs.  The move was widely covered in national media and is seen as a positive development for India’s fiscal health and economic outlook. This surplus transfer is expected to have a ripple effect on government finances, public investments, and overall confidence in India’s economic management.",
    date: '25-05-25',
    long: true,
    old: true,
    category: "National",
    img: Image.asset('images/Reserve-Bank-of-India-1024x577.jpg'),
  ),
  News(
    title:
        "'We didn't see it as treason': The Russian couple who became informants for Ukraine",
    content:
        "It was shortly after Moscow annexed Crimea from Ukraine in 2014 that Sergei and Tatyana Voronkov decided they would leave Russia. The couple, who had long been critical of Vladimir Putin, had condemned the actions of Russia to friends and acquaintances. In response, they were told that if they didn't like it they could leave. So the couple, both Russian citizens, decided to relocate to Ukraine, where Tatyana was born. In 2019 they eventually settled in Novolyubymivka, a village of about 300 people in the south-eastern Zaporizhzhia region. The couple got four dogs and started raising livestock, while Sergei, 55, also found work as a land surveyor – his specialism during his time in the Soviet army. They hoped for a quiet life. But when Moscow launched its full scale invasion of Ukraine in February 2022, the peace of their new lives was shattered by the first Russian rockets flying over their home. 'I heard something whistling, something flying, and I went outside,' Tatyana, 52, recalls. 'A rocket was flying right over the house. 'I went on the internet to see what had happened and they wrote that Kyiv had already been bombed.' The couple quickly found themselves in occupied territory, and decided to become informants for Ukraine. What followed was detention, interrogation, an escape into Europe – and a letter of thanks from the Ukrainian army. It was when a Russian convoy passed their home for the first time that Tatyana decided to act. She ran inside and messaged an acquaintance in Kyiv, whom she believed had contacts in Ukraine's security services. The contact sent her a link to a chatbot on messaging app Telegram which told her they would be contacted by a person with a unique identifier. The couple were then asked to provide the location and details of Russian electronic warfare systems and military hardware they had seen, particularly missile systems and tanks. The locations would help the Ukrainian army target and destroy Russian troops in the area with drones and artillery. 'We didn't think of it as treason,' says Tatyana, who along with Sergei insists the information they gave did not result in any strikes on civilians or civilian infrastructure. 'Nobody attacked Russia. This was a fight against evil.' For two years, Sergei would collect coordinates and Tatyana would transmit them from her phone - removing all traces of the messages afterwards - as and when their village's internet access allowed them to do so. But all of this came to an end when Sergei was detained in April 2024 by armed men while he was shopping for gardening seeds in the regional centre of Tokmak.",
    date: '26-05-25',
    long: true,
    old: true,
    category: "International",
    img: Image.asset('images/treason.webp'),
  ),
  News(
    title:
        "First batch of five electric buses arrives in Puducherry; trial run in a few days",
    content:
        "After a long wait, the first batch of five electric buses, including a prototype, have arrived in Puducherry from Hyderabad. Another bus is expected this week. The low-floor buses supplied by Evey Trans Private Limited, a subsidiary of Olectra Greentech, reached Puducherry on Monday (May 26, 2025) and is aimed at strengthening the public transport sector’s shift to electric vehicles. Commuters in Puducherry and its suburbs can now expect an improved and hassle-free travel experience, thanks to the modern features of these electric buses, officials said. The charging station for the electric buses is being established by Evey Trans Private Limited on a 25,000 sq. ft. site belonging to the Puducherry government on Maraimalai Adigal Salai. A major portion of the work is completed, and the facility will be ready in the next two weeks. ",
    date: '27-05-25',
    long: false,
    old: false,
    category: "National",
    img: Image.asset('images/Bus.jpeg'),
  ),
  News(
    title:
        "Congress MP wants alliance with BSP, raises questions over party's ties with SP",
    content:
        "Lucknow, May 27 -- A statement by senior Congress leader and MP Imran Masood favouring an alliance with the Bahujan Samaj Party (BSP) over the Samajwadi Party (SP) has sparked political stirrings in Uttar Pradesh, prompting intense discussions within Congress, SP, and BSP circles. Masood's remarks come amid growing signs of friction between Congress and SP following the Lok Sabha elections. While the Congress has been buoyed by its performance - winning six seats in the state - it now appears to be recalibrating its alliance priorities. Masood suggested that a tie-up with Mayawati's BSP could be more electorally beneficial than the often tense Congress-SP partnership. Political observers believe that the increasing distance between Congress and SP could open a window of opportunity for the BSP. However, forging such an alliance may not be easy. The BSP has traditionally maintained a stand of going solo in elections, as demonstrated in several recent polls. During the Lok Sabha campaign, Congress had made unsuccessful efforts to bring the BSP into the INDIA bloc fold. But Mayawati's party, known for its independent political course, showed no inclination to join hands. BSP sources suggest the party is likely to stay away even from the upcoming panchayat elections, focusing instead on strengthening the organisation ahead of the 2027 assembly elections. Mayawati herself has repeatedly said that alliances have harmed the BSP rather than helped. Her sharp criticism of Congress in recent statements further indicates that any partnership is far from imminent. Still, Masood's comments have stirred fresh political calculations. Within the BSP, the return of former MP Girish Chandra and recent expressions of support from leaders like ex-MP Malook Nagar - who welcomed the elevation of Akash Anand as Chief National Coordinator - suggest efforts are underway to revitalise the party. BSP functionaries are holding cadre camps across districts and inducting leaders from other parties. Meanwhile, all three national coordinators have been tasked with expanding the party's base in other states. After the Bihar assembly elections, the BSP is also preparing to launch a large-scale membership drive in Uttar Pradesh. As Congress and SP continue to exchange barbs, the shifting political equations have left many leaders and analysts wondering whether a realignment is on the horizon - and whether the BSP could re-emerge as a key player in Uttar Pradesh's power game.",
    date: '27-05-25',
    long: true,
    old: false,
    category: "National",
    img: Image.asset('images/20250526095959_Imran-Masood.png'),
  ),
  News(
    title:
        "Israeli strike kills dozens sheltering in Gaza school, officials say",
    content:
        "At least 54 Palestinians have been killed - most of them in a school building sheltering displaced families - during Israeli air strikes on Gaza overnight, hospital directors have told the BBC. Fahmi Al-Jargawi School in Gaza City was housing hundreds of people from Beit Lahia, currently under intense Israeli military assault. At least 35 were reported to have been killed when the school was hit. Gaza's Hamas-run Civil Defence said multiple bodies, including those of children, were recovered – many severely burned, after fires engulfed two classrooms serving as living quarters. The Israel Defense Forces (IDF) said it had targeted 'a Hamas and Islamic Jihad command and control centre' there. The IDF said the area was being used 'by the terrorists to plan... attacks against Israeli civilians and IDF troops', and accused Hamas of using 'the Gazan population as human shields'. Video footage shared online showed large fires consuming parts of the school, with graphic images of severely burned victims, including children, and survivors suffering critical injuries. Faris Afana, Northern Gaza ambulance service manager, said he arrived at the scene with crews to find three classrooms ablaze. 'There were sleeping children and women in those classrooms,' he said. 'Some of them were screaming but we couldn't rescue them due to the fires.' 'I cannot describe what we saw due to how horrific it was.' Local reports said the head of investigations for the Hamas police in northern Gaza, Mohammad Al-Kasih, was among the dead, along with his wife and children. Separately, a strike on a house in Jabalia in northern Gaza killed 19 people, according to the director of al-Ahli hospital Dr Fadel el-Naim. The Israeli military has not yet commented on what was being targeted. The twin attacks are part of a broader Israeli offensive that has escalated in the northern part of the enclave over the past week. The IDF said it hit 200 targets across Gaza in 48 hours as it continued its operations against what it called 'terrorist organisations'. Meanwhile, a senior Hamas official told the BBC on Monday that the group had agreed to the latest ceasefire proposal offered by US special envoy Steve Witkoff. However, Witkoff told Reuters that what he had seen was 'completely unacceptable' and that the proposal being discussed was not the same as his. ",
    date: '26-05-25',
    long: true,
    old: true,
    category: "International",
    img: Image.asset('images/israel.webp'),
  ),
  News(
    title:
        "OnePlus Ace 5 Ultra and Ace 5 Racing Edition launched, they might show up in India later",
    content:
        "While the world awaits the OnePlus 13s to make its official debut, OnePlus has taken a slightly different route — quietly launching two new 5G phones in China under its Ace 5 lineup. These are the OnePlus Ace 5 Ultra and the Ace 5 Racing Edition. Both phones are powered by MediaTek’s latest Dimensity 9400 series chipsets and come with solid hardware across the board — big batteries, fast charging, and high refresh rate AMOLED displays. And here’s where it gets interesting: while the Ace series usually stays exclusive to China, one of these two devices is rumoured to launch in India as the Nord 5. The OnePlus Ace 5 Racing Edition is the more affordable of the two, starting at CNY 1,799 (roughly Rs 21,300) for the base 12GB RAM + 256GB storage variant. It goes up to CNY 2,499 (roughly Rs 29,600) for the 16GB RAM + 512GB storage model. The OnePlus Ace 5 Ultra is positioned as the higher-end device. Its pricing starts at CNY 2,499 (roughly Rs 29,600) for the 12GB RAM + 256GB storage option and goes up to CNY 3,799 (roughly Rs 45,000) for the top-end model with 16GB RAM and a whopping 1TB of storage. Both phones are already on sale in China. While there’s no word yet on a global launch, rumours hint that one of these two phones might launch in India as the Nord 5. However, OnePlus hasn’t officially confirmed this yet.",
    date: '27-05-25',
    long: true,
    old: false,
    category: "Technology",
    img: Image.asset('images/oneplus.webp'),
  ),
];
