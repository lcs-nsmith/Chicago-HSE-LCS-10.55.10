//
//  CharactersTableTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Maxwell Lu on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CharactersTableViewController: UITableViewController {
    
    //MARK: Properties
    
    
    // List of sections
    var sections: [String] = [
        "Leads",
        
        "Ensemble and Cell Block Dancers"
        
        
    ]

    
    var leads : [Characters] = [
        Characters(characterName: "Velma Kelly", playedBy: "Kate Bemrose", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "velmaKelly"),
        
        Characters(characterName: "Roxie Hart", playedBy: "Catherine Kim", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "roxieHart"),
        
        Characters(characterName: "Amos Hart", playedBy: "Liam Davidson", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "amosHart"),
        
        Characters(characterName: "Mama Morton", playedBy: "Lily Bowman", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "mamaMorton"),
        
        Characters(characterName: "Billy Flynn", playedBy: "Emile Boisjoly", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "billyFlynn"),
        
        Characters(characterName: "Mary Sunshine", playedBy: "Cam Eatmon", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "marySunshine"),
        
        Characters(characterName: "Fred Casely", playedBy: "Liam Cole", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "fredCasely"),

        Characters(characterName: "Narrator", playedBy: "Will Hicks", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "wilbur"),

    ]
    
    var ensemble: [Characters] = [

        Characters(characterName: "Liz", playedBy: "Ava Mason", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "liz"),

        Characters(characterName: "Annie", playedBy: "Sierra Gibb", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "annie"),

        Characters(characterName: "June", playedBy: "Valentina Torres", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "june"),

        Characters(characterName: "Mona", playedBy: "Isabelle Kim", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "mona"),
        
        Characters(characterName: "Dolores", playedBy: "Valentina Boren", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "dolores"),

        
        Characters(characterName: "Kitty", playedBy: "Mikayla Stoodley", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "kitty"),

        Characters(characterName: "Veronica", playedBy: "Rori Ash", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "veronica"),
        
        Characters(characterName: "Sgt. Fogarty", playedBy: "Ben Freeman", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: ""),

        
        Characters(characterName: "Judge", playedBy: "Julio Midence", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "judge"),

        Characters(characterName: "Harrison", playedBy: "Marlow Fiorotto-Bickert", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "harrison"),

        Characters(characterName: "Ezekiel", playedBy: "Cristian Cicardo", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "ezekiel"),

        Characters(characterName: "Alejandro", playedBy: "Vincent Dahm", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "alejandro"),

        Characters(characterName: "Charlie", playedBy: "Kaam Schlagenhauf", description: """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

        Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
        """, imageId: "charlie")
        
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

           // Set a zero-height footer so that no blank cells show after the list of menu items
           tableView.tableFooterView = UIView()

           // Signal need to update the status bar
           self.setNeedsStatusBarAppearanceUpdate()

       }
    
        
    // Return the title for each section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }


    
    // Runs every time the view appears (not just once when initially loaded)
    override func viewWillAppear(_ animated: Bool) {

        // Show the navigation item
        // Fixes bug where slow slide to unwind segue that is cancelled causes navigation bar to disappear
        self.navigationController?.setNavigationBarHidden(false, animated: false)

    }

    // MARK: - Table view data source
    
      // How many sections are in the table view
      override func numberOfSections(in tableView: UITableView) -> Int {
          return sections.count
      }

      // How many rows to show in that one section
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

          // On the first section, return the count of menu items
          // For any other section, return 0
          if section == 0 {
              return leads.count
          } else if section == 1 {
              return ensemble.count
          } else {
              return 0
          }

      }

    // Configure the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

      // Create an object of the dynamic cell "FacultyCell"
      let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath)

      // Depending on the section, fill the textLabel with the relevant text
      switch indexPath.section {
      case 0:
          cell.textLabel?.text = leads[indexPath.row].characterName
      case 1:
          cell.textLabel?.text = ensemble[indexPath.row].characterName
      default:
          break
      }

      // Configure cell color
      cell.textLabel?.textColor = .white

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

      // Return the configured cell
      return cell

  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get a reference to the destination view controller using segue.destination
        guard let detailViewController = segue.destination as? CharactersDetailViewController else {
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

        // Now set the faculty member to be displayed
        // Depending on the section, fill the textLabel with the relevant text
         switch section {
         case 0:
             detailViewController.characterToDisplay = leads[index]
         case 1:
             detailViewController.characterToDisplay = ensemble[index]
         default:
             break
         }
    }


   
}

