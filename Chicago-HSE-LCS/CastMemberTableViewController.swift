//
//  ActorsTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Edited by Maxwell Lu on 2019-11-21.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

extension CastMemberTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
    
}

class CastMemberTableViewController: UITableViewController {
    
    // List of sections
    var sections: [String] = [
        "Leads",
        "Ensemble AND Cell Block Dancers"
    ]
    
    //MARK: Properties
    var filteredLeads: [CastMember] = []
    var filteredEnsemble: [CastMember] = []

    // Computed property to determine whether the search bar is empty
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    // Computed property to determine whether we are currently filtering results
    var isFiltering: Bool {
        let searchBarScopeIsFiltering =
            searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive &&
            (!isSearchBarEmpty || searchBarScopeIsFiltering)
    }

    // List of lead cast members
    var leads: [CastMember] = [
        
        CastMember(name: "Kate Bemrose", character: "Velma Kelly", imageId: "kateBemrose", bio: """
            Kate is super excited to perform in this year’s fall musical, Chicago, as the one and only Velma Kelly. After an amazing Grade 9 year packed with Lakefield Arts experiences, she has decided to come back for more in Grade 10. Coming from an intense competitive dance background at Premiere Studio of Dance, television commercial work, and local theatre involvement (Young Cosette in Les Miserables, Sophie in Mamma Mia), Kate cannot wait to star as a wicked Vaudeville murderer. She gives thanks to everyone involved in this magical production – it makes her Lakefield difference truly like no other!
            """),
        
        CastMember(name: "Catherine Kim", character: "Roxie Hart", imageId: "catherineKim", bio: """
            Catherine Kim is a Grade 11 Scholar with Distinction from Ojai, California. Originally from Nassau, Bahamas, she has been performing for large audiences since the age of three. Catherine has performed with Napa Regional Ballet as well as The State Street Ballet in Santa Barbara. She has sung with VOENA World Choir and participated in the Performance Project in Ft. Lauderdale doing music outreach performances for the underprivileged in Broward County. Most recently, she played Donna in the LCS production of Mamma Mia and Gloria Thorpe in Damn Yankees. This past summer, along with hundreds of musical theatre students worldwide, she applied to participate in the Rutgers Summer Acting Conservatory in New Jersey – and was one of only nine students selected. Catherine is so thankful to work with the amazing cast, crew, and directors of Chicago.
            """),
        
        CastMember(name: "Liam Davidson", character: "Amos Hart", imageId: "liamDavidson", bio: """
            After taking part in four other shows at Lakefield, Liam is proud to cap off his high school career by participating in Chicago. Playing the lonely loser once more, Liam takes on the role of Amos Hart, married to Catherine Kim's character – for the second year in a row!
            """),
        
        CastMember(name: "Lily Bowman", character: "Mama Morton", imageId: "lilyBowman", bio: """
            Lily is thrilled to be in her first LCS production! A dual Canadian-American citizen, she just moved back to Canada from New York City – and is still adjusting to the very "hectic" pace of Lakefield village! Lily has been involved in musical theater since age 5, and began performing professionally at age 9 as Gavroche in Les Miserables, directed by Lisa Capps and Don Brewer (both from the Broadway cast). Lily later performed the lead role in 30+ productions of TaDa Theater’s Drama Desk Award-winning original musical production. Most recently, Lily has been performing with Kidz Theater, home of stars such as Ben Platt (Dear Evan Hansen) and Micaela Diamond (The Cher Show). Some previous favorite roles include Eponine in Les Miserables (for the second time), Lindsay in Godspell, and Brooke Wyndham in Legally Blonde. She is so thankful for her new LCS family, and for the incredibly talented cast, crew, and creative team that has worked so hard to make Chicago come to life!
            """),
        
        CastMember(name: "Emile Biosjoly", character: "Billy Flynn", imageId: "emileBoisjoly", bio: """
            Emile is excited to perform in this fall's production of Chicago! This is Emile's second and last year here at LCS so he finally decided to give the musical a go. Thinking he would get the role of "tree number three", he was surprised to find out that he would be playing Billy Flynn in his first ever high school production. Emile has been described as a "gentle giant", so, at first, it was hard for him to play the role of a narcissistic lawyer. Nevertheless, he pushed on, and is now very excited and proud to be playing the role. Emile thanks his friends and family for their ongoing support and the cast and crew for their stellar work on Chicago. Emile hopes you enjoy the show.
            """),
        
        CastMember(name: "Cam Eatmon", character: "Mary Sunshine", imageId: "camEatmon", bio: """
            Cam has been in multiple theatre productions back in her hometown Austin, Texas. She is a published singer on Apple and Spotify. Her special talent is making three minute Kraft mac'n'cheese in two minutes.
            """),
        
        CastMember(name: "Liam Cole", character: "Fred Casely", imageId: "liamCole", bio: """
            Liam is excited to appear in this year's production of Chicago in the role of Fred Casely. His fourth appearance on stage, Liam is once again thrilled to have the chance to perform on stage. Liam thanks all the teachers and student volunteers who have worked tirelessly behind the scenes to make the show a reality.
            """),
        
        CastMember(name: "Will Hicks", character: "Narrator", imageId: "willHicks", bio: """
            Will is delighted to play the role of narrator in this year's production, Chicago. The younger brother of LCS acting prodigy Meg Hicks, Class of 2017, Will is taking part in his first show in four years at the school. He didn't believe he could live up to the exceptionally high standards set by his awesome sister. However, Will believed that it was time to try something new and follow in her footsteps – and so, here he is. Outside the theatre, Will can be found playing ultimate frisbee, soccer, and jamming to music with his roommate, Julio. He hopes you enjoy the show!
            """),
        
    ]
    
    // List of ensemble cast
    var ensemble: [CastMember] = [
        
        CastMember(name: "Ava Mason", character: "Liz", imageId: "avaMason", bio: """
            Ava Mason is a Grade 9 student that has always wanted to come to LCS and be in the musical. She followed her dreams and now she is here, in Chicago, playing Liz – featured in the Cell Block Tango. She is thrilled to be a part of the show and can’t wait to see what the next few years bring. Liz is very thankful for the support of her parents and all her teachers for making this wonderful experience a reality!
            """),
        
        CastMember(name: "Sierra Gibb", character: "Annie", imageId: "sierraGibb", bio: """
            Sierra is delighted to be playing the role of Annie in this year’s production, Chicago. She has been involved in many musicals and dance showcases at LCS. Most recently she played the hilarious role of Rosie in Mamma Mia. She has been dancing for many years and is so grateful for the support she has received at LCS. Sierra hopes you enjoy the show!
            """),
        
        CastMember(name: "Valentina Torres", character: "June", imageId: "valentinaTorres", bio: """
            This is Val’s first year at LCS and she is thrilled to be playing June in Chicago. Val has grown up performing and dancing and she is having a blast this year. She hopes you enjoy the show.
            """),
        
        CastMember(name: "Isabelle Kim", character: "Mona", imageId: "isabelleKim", bio: """
            Isabelle Kim is a Grade 9 student from Ojai, California, born in Nassau, Bahamas. At the age of three, she began performing in annual music outreach performances with The Ars Nova Music Club at The Atlantis Resort in the Bahamas. More recently, she has played Grace Farrell in Annie; also, Fiona in Shrek at Crane Country Day School in Santa Barbara. Isabelle has studied ballet with Napa Regional and performed with State Street Ballet. She has performed with VOENA World Choir in Napa, and in numerous theater performances at The Rubicon Theater in Ventura. Isabelle additionally participated in music outreach with the Performance Project at the Broward Center for the Performing Arts. There she played Sharpay Evans in High School Musical for hundreds of underprivileged students in Broward County. Isabelle is  grateful to have this performance growth opportunity and thrilled to work with such an amazing cast, crew, and directing team.

            """),
        
        CastMember(name: "Valentina Boren", character: "Dolores)", imageId: "valentinaBoren", bio: """
            Valentina is delighted to be part of the Chicago cast. She performed in Mamma Mia last year at LCS and hopes that you truly enjoy this year's production.
            """),
        
        CastMember(name: "Mikayla Stoodley", character: "Kitty", imageId: "mikaylaStoodley", bio: """
            Mikayla is excited to be taking part in Chicago, playing the role of Kitty. She is grateful to be working alongside a dedicated and energetic cast and crew. Mikayla enjoys the creative process and everything that goes into making a show come to life. She is awed at the amount of time and energy that has been poured into this production: whether that be the crew, the tech team, the costume designers, set decorators, the cast, or the directors. Mikayla is thrilled to be working alongside all of them and hopes you enjoy the fruits of their labour!
            """),
        
        CastMember(name: "Rori Ash", character: "Veronica", imageId: "roriAsh", bio: """
            Rori is excited to perform in this year’s musical at LCS. Rori has been dancing for more than ten years and is excited to be performing as Veronica Kelly and as part of the chorus. Being in the musical was a perfect way for her to continue dancing but to also step outside of her comfort zone to try singing. She thanks the directors of the show for being "awesome musical parents".
            """),
        
        CastMember(name: "Ben Freeman", character: "Sgt. Fogarty", imageId: "benFreeman", bio: """
            Ben is a Grade 9 student and excited to be part of his first musical. Ben has performed in various productions over the years and played roles including Rumpelstiltskin in Princess Whatshername, the Mad Hatter in Dorothy in Wonderland, and Michael in Mary Poppins.
            """),
        
        CastMember(name: "Julio Midence", character: "Judge", imageId: "julioMidence", bio: """
            Julio has always had an interest in the 1920's. He really enjoys the dancing and music portrayed in the Chicago musical. The name Midence has played a significant role in the arts of LCS with the older sibling, Raul Midence participating in four LCS theatre productions. Julio can be often found outside playing frisbee with his great roommate Will Hicks. Julio is excited to be able to participate in such an amazing show!
            """),
        
        CastMember(name: "Marlow Florotto-Bickert", character: "Harrison", imageId: "marlowFiorotto-Bickert", bio: """
            Marlow Fiorotto-Bickert has had a heck of a life, but that’s not what you’re here for. He’s been singing since he could crawl, dancing to Michael Jackson songs since he could wear a fedora, and has always wanted to perform in a production like Chicago. He took ballet for just enough time, and just so long ago, that he can’t remember any of it. His mum's instruction was the closest thing he’s had to vocal training before coming to Lakefield. He plays piano and has been performing classical and pop songs for eight years. With a passion for astrophysics and other sciences, an unquenchable thirst for art, and a knack for poetry and writing, Marlow is excited for whatever the future may bring.
            """),
        
        CastMember(name: "Cristian Cicardo", character: "Ezekiel", imageId: "chrisCicardo", bio: """
            This is Cris' first time on stage at LCS. He loves the rehearsal process and learning how to execute so many complicated dance moves and lifts. Cris enjoys being on stage and wishes he had taken drama and dance class throughout his time at the school. He hopes you enjoy the show.
            """),
        
        CastMember(name: "Vincent Dahm", character: "Alejandro", imageId: "vincentDahm", bio: """
            Vincent is elated to be a member of the musical production of Chicago. When he isn’t driving his teachers crazy, he can be found reading or preparing for English class (his favourite course at LCS, right after Outdoor Education). He has loved getting to learn so many cool lifts and dance moves. He hopes you enjoy the show.
            """),
        
        CastMember(name: "Kaam Schlagenhauf", character: "Charlie", imageId: "kaamSchlagenhauf", bio: """
            Kaam is no stranger to the stage. He has performed in numerous dance productions at LCS (including an epic RuPaul performance) and is an active member of drama class. He loves to dance and is ecstatic to be part of such a wonderful production.
            """),
        
        CastMember(name: "Pia Garcia", character: "Cell Block Dancer", imageId: "piaGarcia", bio: """
            Pia is delighted to be part of this year’s fall musical. After taking part in Mamma Mia! last year, she knew she had to try out for Chicago. After many years of dance classes and recitals, the stage has become a huge part of Pia’s life. Keep an eye above you, because chances are, you will be able to spot her while she is mid-air! Pia gives special thanks to the Production Team for being such great leaders!
            """),
        
        CastMember(name: "Maya Katsof", character: "Cell Block Dancer", imageId: "mayaKatsof", bio: """
            Maya is excited to be participating in this year's fall musical: Chicago! She is one of three new students in this year's graduating class at LCS and she's very glad to have had the chance to be in this production. Maya has been dancing since she was young but has never participated in an official production like this. She looks forward to testing her limits and is grateful to have had the opportunity to meet so many fine individuals along the way. She hopes you enjoy the show!
            """),
        
        CastMember(name: "Olivia Cantelon", character: "Cell Block Dancer", imageId: "oliviaCantelon", bio: """
            Olivia is excited to be back on stage for Chicago as a featured dancer and chorus member. She has always had a passion for theatre – especially when it comes to dancing. She has completed four years of competitive dance training and participated in many theatre productions. Olivia hopes you enjoy the show!
            """),
        
        CastMember(name: "Razan Hammoud", character: "Cell Block Dancer", imageId: "razanHammoud", bio: """
            Razan loves to perform. She has been involved in many productions and dance showcases at Lakefield College School. She hopes you love the show!
            """),
        
        CastMember(name: "Ximena Meneses", character: "Cell Block Dancer", imageId: "ximenaMeneses", bio: """
            This past summer, Ximena saw a performance of Chicago on Broadway. Ximena immediately knew that she wanted to be part of the LCS production of Chicago during the fall term. While she has performed in the Dance Showcase in years past, this is her first time in the musical – and she is very excited! Ximena has been dancing for a long time – it's what she loves to do the most. Ximena's love for dance is what prompted her to get out of her comfort zone and complete an audition that required her to sing. Ximena has truly enjoyed being a member of the cast. Ximena gives a special thank you to all of the directors, cast, and crew for their support and hard work. She does not regret the challenge of auditioning for Chicago and cannot wait for everyone to see this amazing show.
            """),
        
        CastMember(name: "Jayden Julian", character: "Ensemble Member", imageId: "jaydenJulian", bio: """
            This is Jayden’s fourth production at LCS. She fell in love with theatre when she auditioned for her very first musical, Damn Yankees, two years ago. Jayden had been a part of the ensemble in earlier productions but earned a larger role as Augusta Makepeace in last year’s Spring play, The Heart of Robin Hood. Jayden has enjoyed the Chicago experience very much and thinks of this cast as her second family. She cannot wait to see what you think of the show!
            """),
        
        CastMember(name: "Sophie Gray", character: "Ensemble Member", imageId: "sophieGray", bio: """
            Chicago is Sophie’s first musical theatre production at LCS. She is honoured to contribute to such an ambitious production. Her love of theatre stemmed from doing "rhyming couplet" Shakespeare productions in Grades 4 and 5. Sophie's passion for theatre has influenced much of her life. When not hibernating in her room, she is often found participating in Safe Space and the D&D club. Sophie has immensely enjoyed being a part of the cast and learning new musical theatre and dance skills. She looks forward to taking part in future LCS productions.
            """),
        
        CastMember(name: "Alejandra Porcar", character: "Ensemble Member", imageId: "alejandraPorcar", bio: """
            Alejandra is very excited to be a part of the Chicago musical! A member of the Girl's Dance Group at LCS, this is her first time in the musical. Alejandra has been in Drama since Grade 10 but is a bit nervous about performing in front of so many people for the first time. In her last year at LCS, Alejandra worked up the courage to audition and is proud to be a part of the production. Alejandra, always positive and enthusiastic, has had lots of fun in rehearsal and tries her very best to be a good dancer.
            """),
            
        CastMember(name: "Eric Xia", character: "Ensemble Member", imageId: "ericXia", bio: """
            A loyal and longstanding member of the DSB, Eric Xia graces the stage once again with his masterful performance of... well, whatever he is in Chicago. With prior participation in school productions such as “Damn Yankees”, “Mamma Mia”, “The Heart of Robin Hood”, and his personal favourite, “Lord of the Flies”, Eric Xia has truly lived in the theatre since his grade 10 year.
            """),
        
        CastMember(name: "Soroosh Siyoofi", character: "Ensemble Member", imageId: "sorooshSiyoofi", bio: """
            Soroosh is excited to show off his dancing and "prodigious" singing skills. Stepping way out of his comfort zone, he made the bold decision to audition for and participate in Chicago. He hopes you enjoy the show.
            """),
        
        CastMember(name: "Carine Martin", character: "Cell Block Dancer", imageId: "carineMartin", bio: """
            Carine has never participated in a school musical before. However, in her final year in Lakefield, she decided to put herself out there and try out for the Chicago musical. The experience has allowed her to pursue her passion for singing and dancing as well as help her discover new interests. She is thrilled to be in the cast and part of such a great production, surrounded by so much talent and support.
            """),
        
    ]
    
    // Create a search controller instance
    let searchController = UISearchController(searchResultsController: nil)
    
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
        
        // Get table view to always have black background
        tableView.backgroundColor = .black
        
        // Set the seperator color to always be dark grey
        tableView.separatorColor = .darkGray
        
        // Set a zero-height footer so that no blank cells show after the list of menu items
        tableView.tableFooterView = UIView()
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
                
        // 1
        searchController.searchResultsUpdater = self
        // 2
        searchController.obscuresBackgroundDuringPresentation = false
        // 3
        searchController.searchBar.placeholder = "Search Cast Members"
        
        // 4
        navigationItem.searchController = searchController
        // 5
        definesPresentationContext = true
                
    }
    
    // Runs every time the view appears (not just once when initially loaded)
    override func viewWillAppear(_ animated: Bool) {
        
        // Show the navigation item
        // Fixes bug where slow slide to unwind segue that is cancelled causes navigation bar to disappear
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    // Return count of table cells in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
        // When searching, return number of matches in filtered list
        if isFiltering {

            if section == 0 {
                return filteredLeads.count
            } else if section == 1 {
                return filteredEnsemble.count
            } else {
                return 0
            }

        } else {

            if section == 0 {
                return leads.count
            } else if section == 1 {
                return ensemble.count
            } else {
                return 0
            }

        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "FacultyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "CastMemberCell", for: indexPath)
                
        // Configure cell color
        cell.textLabel?.textColor = .white
        
        // Depending on the section, fill the textLabel with the relevant text
        // If searching, return result from filtered list based on search
        if isFiltering {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = filteredLeads[indexPath.row].name
            case 1:
                cell.textLabel?.text = filteredEnsemble[indexPath.row].name
            default:
                break
            }

        } else {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = leads[indexPath.row].name
            case 1:
                cell.textLabel?.text = ensemble[indexPath.row].name
            default:
                break
            }
            
        }
        
        // Make the cell have a black background colour
        cell.backgroundColor = .black
        
        // Make the cell always select as dark gray
        let backgroundColorView = UIView()
        backgroundColorView.backgroundColor = UIColor.darkGray
        cell.selectedBackgroundView = backgroundColorView
        
        // Set a custom disclosure indicator (white) so it is visible on dark background
        let chevron = UIImage(named: "chevron.png")
        cell.accessoryType = .disclosureIndicator
        cell.accessoryView = UIImageView(image: chevron!)
        
        // Make text in the search bar be white, always
        if #available(iOS 13.0, *) {
            // Change search field text color in iOS 13
            searchController.searchBar.searchTextField.textColor = .white
        } else {
            // Change search field text color in iOS 12
            let textFieldInsideSearchBar = searchController.searchBar.value(forKey: "searchField") as? UITextField
            textFieldInsideSearchBar?.textColor = .white
        }
        
        // Return the configured cell
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get a reference to the destination view controller using segue.destination
        guard let detailViewController = segue.destination as? CastMemberDetailViewController else {
            return
        }
        
        // Get the currently selected section of the table view
        guard let section = tableView.indexPathForSelectedRow?.section else {
            return
        }
        
        // Get the currently selected row of the table view
        guard let index = tableView.indexPathForSelectedRow?.row else {
            return
        }
        
        // Now set the cast member to be displayed
        // If searching, present from filtered results
        if isFiltering {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.castMemberToDisplay = filteredLeads[index]
            case 1:
                detailViewController.castMemberToDisplay = filteredEnsemble[index]
            default:
                break
            }
        } else {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.castMemberToDisplay = leads[index]
            case 1:
                detailViewController.castMemberToDisplay = ensemble[index]
            default:
                break
            }
        }

        // Deselect the cell after segue unwind
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        self.tableView.deselectRow(at: indexPath, animated: true)


    }
    
    func filterContentForSearchText(_ searchText: String) {
                
        // Filter the cast members based on the search string
        filteredLeads = leads.filter { (cast: CastMember) -> Bool in
            return cast.name.lowercased().contains(searchText.lowercased())
        }

        // Filter the cast members based on the search string
        filteredEnsemble = ensemble.filter { (cast: CastMember) -> Bool in
            return cast.name.lowercased().contains(searchText.lowercased())
        }

        // Change the data shown in the table view
        self.tableView.reloadData()
    }
    
    
}


