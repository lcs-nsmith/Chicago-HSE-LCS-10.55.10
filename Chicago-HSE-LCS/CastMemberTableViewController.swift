//
//  ActorsTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CastMemberTableViewController: UITableViewController {

    //MARK: Properties
    var castMembers: [CastMember] = [
        
        CastMember(name: "Catherine Kim", character: "Roxie Hart", bio: """
    Catherine Kim is a grade 11 scholar with distinction from Ojai, California. Originally from Nassau, Bahamas, she has been performing for large audiences since the age of 3. Catherine has performed with Napa Regional Ballet as well as The State Street Ballet in Santa Barbara. She has sung with VOENA World Choir and participated in the Performance Project in Ft. Lauderdale doing Music Outreach performances for the underprivileged in Broward County. Most recently, she played Donna in LCS’s production of Mamma Mia and Gloria Thorpe in Damn Yankees. This past summer she was selected out of hundreds of students worldwide to participate in Rutgers Summer Acting Conservatory in New Jersey were only 9 Musical Theater students were selected. Catherine is so thankful to work with such an amazing cast, crew and directors.
    """),
        
        CastMember(name: "Kate Bemrose", character: "Velma Kelly", bio: """
        Kate is super excited to perform in this year’s fall musical Chicago, as the one and only Velma Kelly. After an amazing year packed with Lakefield arts experiences last year, she has decided to come back for more. Coming from an intense competitive dance background at Premiere Studio of Dance, television commercial work and local theatre involvement (Young Cosette in Les Miserables, Sophie in Mamma Mia) , she can’t wait to star as a wicked Vaudeville murderer. She would like to give thanks to everyone involved in this magical production, that makes her Lakefield difference truly like no other!
"""),
        
        CastMember(name: "Lily Bowman", character: "Mama Morton", bio: """
        Lily is thrilled to be in her first LCS production! A dual-citizen, she just moved back to Canada from New York City (and is still adjusting to the very hectic pace of Lakefield village!). Lily has been involved in musical theater since age 5, and began performing professionally at age 9 as Gavroche in Les Miserables, directed by Lisa Capps and Don Brewer (both from the Broadway cast). Lily later performed the lead role in 30+ productions of TaDa Theater’s Drama Desk Award-winning original musical production. Most recently, Lily has been performing with Kidz Theater, home of stars such as Ben Platt (Dear Evan Hansen) and Micaela Diamond (The Cher Show). Some previous favorite roles include Eponine in Les Miserables (for the 2nd time!), Lindsay in Godspell, and Brooke Wyndham in Legally Blonde. She is so thankful for her new LCS family, and for the incredibly talented cast, crew, and creative team that has worked so hard to make Chicago come to life!
"""),
        
        CastMember(name: "Emile Biosjoly", character: "Billy Flynn", bio: """
        Emile is excited to perform in this fall's production of Chicago! this is Emiles second and last year here at LCS so he finally decided to give the musical a go! Thinking he would get the role of "Tree number three", He was surprised to find out that he would be playing "Billy Flynn" in his first ever high school production, as Emile is described as a Gentle Giant it was hard for him at first to play the role of a narcissistic lawyer but never-less he pushed on and is now very excited and proud to be playing the role.  Emile would like to thank the ongoing support of his friends and family, and the amazing work done not only by the cast but the phenomenal crew! Emile hopes you enjoy the show.
"""),
        
        CastMember(name: "Liam Davidson", character: "Amos Hart", bio: """
        I’d write it for him- but he’d kill me.
"""),
        
        CastMember(name: "Liam Cole", character: "Fred Casely", bio: """
        Liam is excited to appear in this year's production of Chicago in the role of Fred Casely. His fourth appearance on stage, Liam is once again very excited to get to get the chance to perform on stage. Liam would like all the teachers and student volunteers who work tirelessly behind the scenes to make this show happen.
"""),
        
        CastMember(name: "Cam Eatmon", character: "Mary Sunshine", bio: """
        Cam has been in multiple theatre productions back in her hometown Austin, Texas. She is a published singer on Apple and Spotify. Her special talent is making a three minute kraft mac n cheese in two minutes.
"""),
        
        CastMember(name: "Ava Mason", character: "Liz", bio: """
        Ava Mason is a grade 9 student that has always  wanted to come to this amazing school and be in the musical.  She followed her dreams and now she is here at LCS doing the musical Chicago and playing Liz featured in Cell Block Tango.  She is  thrilled to be a part of this show and can’t wait to see what the next years bring. She is also very thankful for my parents and all of the amazing teachers for making this wonderful experience happen! :)

"""),
    
        CastMember(name: "Sierra Gibb", character: "Annie", bio: """
        Sierra is thrilled to be playing the role of Annie in this year’s production of Chicago.  She has been involved in many musicals and dance showcases at LCS.  Most recently she played the hilarious role of Rosie in Mamma Mia.  She has been dancing for many years and is so grateful for the support she’s received at LCS. She hopes you enjoy the show!
"""),
        CastMember(name: "Val Torres", character: "June", bio: """
        This is Val’s first year at LCS and she is thrilled to be playing June in Chicago.  Val has grown up performing and dancing and she is having a blast.  She hopes you enjoy the show.
"""),
        CastMember(name: "Isabelle Kim", character: "Mona", bio: """
        Isabelle Kim is a grade 9 student from Ojai, California. She was born in Nassau, Bahamas and began performing in annual music outreach and charitable performances with The Ars Nova Music Club at The Atlantis Resort in The Bahamas since the age of 3. Most recently, she played Grace Farrell in Annie and Fiona in Shrek at Crane Country Day School in Santa Barbara. She has studied ballet with Napa Regional and performed with State Street Ballet. She has also performed with VOENA World Choir in Napa, numerous Theater performances at The Rubicon Theater in Ventura as well as participated in Music Outreach with the Performance Project at the Broward Center for the Performing Arts where she played Sharpay Evans in HS Musical for hundreds of underprivileged students in Broward County. Isabelle is so grateful to have this performance growth opportunity and thrilled to work with such an amazing cast, crew and directors.

"""),
        
        CastMember(name: "Valentina Boren", character: "Hunyak (Delores)", bio: """
        Valentina B. Is very thrilled to be part of this show this year. She was a part of the Mamma Mia performance last year as well and she hopes you truly enjoy the show.
"""),
        
        CastMember(name: "Rori Ash", character: "Veronica", bio: """
        Rori is thrilled to be performing in this year’s musical, Chicago. Rori has been dancing for over ten years and is excited to be dancing as Veronica Kelly and as part of the chorus. Being in the musical was a perfect way for her to continue dancing but to also step outside of her comfort zone and try singing. She would like to thank the directors of the show for being “awesome musical parents.
"""),
        
        CastMember(name: "Mikayla Stoodley", character: "Kitty", bio: """
        Mikayla is so excited to be taking part in this year's production of Chicago, playing the role of Kitty! She is so grateful to be working alongside such a dedicated, energetic and all-around amazing cast and team. Mikayla always enjoys the overall creative process and everything that goes into making the show. Everyone has put so much time and energy into Chicago whether it be the crew, tech team, costume designers, set team, cast or directors. Mikayla is thrilled to be working alongside them and hopes you enjoy what everyone has worked so hard on! :)
        
"""),
        
        CastMember(name: "Will Hicks", character: "arrator/Ensemble", bio: """
        Will is delighted to play the role of the announcer in this year's production, Chicago. The younger brother of LCS acting prodigy Meg Hicks, Class of 2017, Will is taking part in his first show of his 4 years at the school. He didn't believe he could live up to the exceptionally high standards set by his awesome sister. However, Will believed that it was time to try something new and follow in her footsteps. Outside the theatre, Will can be found playing ultimate frisbee, soccer, and jamming to music with his roommate, Julio. He hopes you enjoy the show!

"""),
        
        CastMember(name: "Julio Midence", character: "Judge/Bernie/Harry/Ensemble", bio: """
        Julio has always had an interest in the 1920s. He really enjoys the dancing and music portrayed in the Chicago Musical. The name Midence has played a significant role in the arts of LCS with the older sibling, Raul Midence participating in 4 of the LCS theatre productions. Julio can be often found outside playing frisbee with his great roommate Will Hicks. Julio is excited to be able to participate in such an amazing show!
"""),
        
        CastMember(name: "Ben Freeman", character: "Sgt Fogarty/Ensemble", bio: """
        Ben is a grade 9 student and very excited to be part of his first musical at LCS. He has been in various productions over the years and has played roles including Rumplestiltskin In Princess Whatshername, the Mad Hatter in Dorothy in Wonderland, and Michael in Mary Poppins.

"""),
        
        CastMember(name: "Marlow Florotto-Bickert", character: "Harrison/ Ensemble", bio: """
        Marlow Fiorotto-Bickert has had a hell of a life, but that’s not what you’re here for. He’s been singing since he could crawl, dancing to Michael Jackson songs since he could wear a fedora, and he’s always wanted to act in a production like Chicago. He took ballet just long enough ago that he can’t remember it, and his mum was the closest thing he’s had to vocal training before coming to Lakefield. He plays piano, and has been playing classical and pop for eight years. With a passion for astrophysics and other sciences, an unquenchable thirst for art, and a knack for poetry and writing, he’s excited for whatever is to come in his future.
"""),
        
        CastMember(name: "Maya Katsof", character: "Cell Block Dancer", bio: """
        Maya is very excited to be participating in this year's fall musical; Chicago! She is one of three new students in this years graduating class and she's very glad to have the chance to be in this production. She has been dancing ever since she was young but has never participated in an official production like this and is looking forward to testing her limits. She is very happy that she was able to spend the fall term working on this musical and was able to meet great people along the way. Maya hopes you enjoy the show!

"""),
        
        CastMember(name: "Pia Garcia", character: "Cell Block Dancer", bio: """
        Pia is delighted to be part of this year’s fall musical. After taking part in Mamma Mia! last fall term, she knew she had to perform in Chicago. After many years of dance classes and recitals, the stage has become a huge part of Pia’s life. Keep an eye above you, because chances are, you will be able to spot her while she is mid-air! She would like to give a special thanks to the Production Team for being such great leaders!

"""),
        
        CastMember(name: "Razan Hammoud", character: "Cell Block Dancer", bio: """
        Razan loves to perform. She has been involved in many productions and dance showcases at the school. She hopes you love the show!
"""),
        CastMember(name: "Ximena Meneses", character: "Cell Block Dancer", bio: """
        Ximena is super excited to perform in Chicago. She saw the musical on Broadway during summer and she had no doubt that she wanted to be part of the school production. Although she has been part of the Dance Showcase, its her first time being part of the musical. She’s really excited about it! She has been dancing for a long time and that's what she loves to do the most. Her love for dance is what made her get out of her comfort zone since she had to sing for her audition and it's something she had never done before! Ximena truly enjoyed being part of this amazing group of people. She would like to give a special thank you to all the directors, cast and crew for all the support and time given. She doesn't regret getting out of her comfort zone and she can't wait for everyone to see this amazing show.
"""),
        
        CastMember(name: "Carine Martin", character: "Cell Block Dancer", bio: """
        Carine has never participated in a school musical before. However, for her last year in Lakefield as a grade 12, she decided to put herself out there and try out for the Chicago musical knowing that it would be her last chance to. The musical has allowed her to pursue her passion for singing and dancing as well as help her discover new interests. She is thrilled to be in the cast and part of such a great production surrounded by talent and support.

"""),
        
        CastMember(name: "Olivia Cantelon", character: "Cell Block Dancer", bio: """
        Olivia is so excited to be back on stage for this year's fall musical Chicago, as a featured dancer and chorus member. She has always had a passion for theatre especially when it comes to dancing. She has done 4 years of competitive dance and participated in many theatre productions. Enjoy the show!!

"""),
        
        CastMember(name: "Jayden Julian", character: "Ensemble Member", bio: """
        This is Jayden’s 4th production at LCS. She fell in love with theatre when she auditioned for her very first musical Damn Yankees in grade 10. Jayden has always been apart of the ensemble  and earned a larger role as Augusta Makepeace in last year’s production of The Heart of Robin Hood. Jayden has enjoyed this experience so much and think of this cast as her second family she has developed many new talents and habits as an actress and is striving in this characters position. She is a very talented and beautiful young lady and we can’t wait to see her performance in the show. She is also very excited to show you what she has to offer and her improvement over the span of 2 years in her acting experience.

"""),
        
        CastMember(name: "Alejandra Porcar", character: "Ensemble Member", bio: """
        Alejandra is very excited to be in this year’s musical, CHICAGO! She is part of the girls dance group and is her first time being a part of a musical. She has been in Drama since 10th grade but she is nervous because this is her first time performing in front of so many people. She has always wanted to be part of a musical at LCS, now that this is her last year she had the courage to be a part of it. She has never done dance before but her enthusiasm turns heads and that's when we knew she belonged in the musical. She is always positive, has lots of fun in the rehearsal and tries her best at dancing.

"""),
        CastMember(name: "Sophie Gray", character: "Ensemble Member", bio: """
        Chicago is Sophie’s first musical theatre production at LCS and is honoured to contribute to such an amazing production. Her love of theatre stemmed from doing rhyming couplet Shakespeare productions in Grade 4 & 5 and her passion for theatre has influenced much of her life. When not hibernating in her room, she is often found participating in Safe Space and the D&D club.  Earning a place in the ensemble, Sophie has immensely enjoyed being a part of a wonderful cast and learning new musical theatre skills and dance skills. She looks forward to taking part in future LCS productions.

"""),
      
        CastMember(name: "Cristian Cicardo", character: "Ensemble Member", bio: """
        This is Cris’s first time on the stage at LCS.  He has loved performing and getting to learn so many complicated dance moves and lifts.  Cris loves being on stage and wishes he had taken drama and dance class throughout his time at LCS.  He hopes you enjoy the show.

 """),
        
        CastMember(name: "Vince Dahm", character: "Ensemble Member", bio: """
        Vince is elated to be a member of the musical production of Chicago. When he isn’t driving his teachers crazy, he can be found reading or preparing for English class (his favourite course at LCS, right after OE). He has loved getting to learn so many cool lifts and dance moves. He hopes you enjoy the show.
"""),
        
        CastMember(name: "Kaam Schlagenhauf", character: "Ensemble Member", bio: """
        Kaam is no stranger to the stage. He has performed in numerous dance performances at LCS (including an epic RuPaul performance) and is an active member of drama class.  He loves to dance and is ecstatic to be part of such a wonderful production.
"""),
        
        CastMember(name: "Eric Xia", character: "Ensemble Member", bio: """
        As a loyal follower and one of the last generations of the world famous DSB, Eric Xia has graced the stage once again with his masterful performance of a … whatever he is. With multiple experiences in school performances such as “Damn Yankees”, “Mamma Mia”, “The Heart of Robin Hood”, and his personal favourite, “Lord of the Flies” featuring Nicholas Watts as Jack and the boys, Eric Xia has truly lived in the theatre since his grade 10 year.

"""),
        
        CastMember(name: "Soroosh Siyoofi", character: "Ensemble Member", bio: """
        Soroosh is excited to show his dancing and singing skills (if any). He made a bold decision, stepping out of his comfort zone and joined the cast of the Chicago Musical in this very fall.
""")
        
    
    
    ]
    
    // Set the status bar text to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // Show the navigation item
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        // Get table view to always have black background
        tableView.backgroundColor = .black
        
        // Set the seperator color to always be dark grey
        tableView.separatorColor = .darkGray

        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
