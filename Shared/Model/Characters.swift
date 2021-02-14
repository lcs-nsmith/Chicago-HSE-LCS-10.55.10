//
//  Characters.swift
//  Chicago-HSE-LCS
//
//  Created by Maxwell Lu on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

// MARK: Definition
struct Characters {
    
    var characterName: String
    var playedBy: String
    var description: String
    var imageId: String
    var actionImageId: String = ""
    
}

// MARK: Data
var characterLeads : [Characters] = [
    Characters(characterName: "Velma Kelly", playedBy: "Kate Bemrose", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "velmaKelly", actionImageId: "Velma"),
    
    Characters(characterName: "Roxie Hart", playedBy: "Catherine Kim", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "roxieHart", actionImageId: "RoxieHart-1"),
    
    Characters(characterName: "Amos Hart", playedBy: "Liam Davidson", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "amosHart", actionImageId: "Amos Hart"),
    
    Characters(characterName: "Mama Morton", playedBy: "Lily Bowman", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "mamaMorton",actionImageId: "Mama Morton"),
    
    Characters(characterName: "Billy Flynn", playedBy: "Emile Boisjoly", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "billyFlynn",actionImageId: "Billy Flynn"),
    
    Characters(characterName: "Mary Sunshine", playedBy: "Cam Eatmon", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "marySunshine",actionImageId: "MarySunshine-1"),
    
    Characters(characterName: "Fred Casely", playedBy: "Liam Cole", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "fredCasely", actionImageId: "fredCaselyAction"),
    
    Characters(characterName: "Narrator", playedBy: "Will Hicks", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "wilbur", actionImageId: "wilburAction"),
    
]

var characterEnsemble: [Characters] = [
    
    Characters(characterName: "Liz", playedBy: "Ava Mason", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "liz",actionImageId: "Liz-1"),
    
    Characters(characterName: "Annie", playedBy: "Sierra Gibb", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "annie", actionImageId: "Annie-2"),
    
    Characters(characterName: "June", playedBy: "Valentina Torres", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "june", actionImageId: "June-1"),
    
    Characters(characterName: "Mona", playedBy: "Isabelle Kim", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "mona", actionImageId: "Mona2"),
    
    Characters(characterName: "Dolores", playedBy: "Valentina Boren", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "dolores", actionImageId: "Dolores-1"),
    
    Characters(characterName: "Kitty", playedBy: "Mikayla Stoodley", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "kitty", actionImageId: "Kitty-1"),
    
    Characters(characterName: "Veronica", playedBy: "Rori Ash", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "veronica", actionImageId: "Veronica2"),
    
    Characters(characterName: "Sgt. Fogarty", playedBy: "Ben Freeman", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "sgtFogarty", actionImageId: "sgtFogartyAction"),
    
    Characters(characterName: "Judge", playedBy: "Julio Midence", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "judge", actionImageId: "Judge-1"),
    
    Characters(characterName: "Harrison", playedBy: "Marlow Fiorotto-Bickert", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "harrison", actionImageId: "Harrison-1"),
    
    Characters(characterName: "Ezekiel", playedBy: "Cristian Cicardo", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "ezekiel", actionImageId: "Ezekiel-1"),
    
    Characters(characterName: "Alejandro", playedBy: "Vincent Dahm", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "alejandro", actionImageId: "Alejandro-1"),
    
    Characters(characterName: "Charlie", playedBy: "Kaam Schlagenhauf", description: """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu libero elit. In accumsan tristique eleifend. Cras luctus elit a accumsan interdum. Donec commodo felis augue, a fringilla nulla pretium sit amet. Etiam sed nisi in felis facilisis posuere. Sed ullamcorper eleifend maximus. Fusce dictum vel quam sollicitudin finibus. Duis venenatis arcu quis mi efficitur viverra. Cras a dolor at turpis vehicula elementum eget eu ligula. Integer maximus augue dolor, non interdum tellus rutrum eu. Curabitur facilisis est nec tellus venenatis convallis. Ut porttitor, enim quis rutrum consequat, leo arcu tristique neque, nec faucibus urna tortor in lacus.

    Sed eu interdum diam. Maecenas id nisl non turpis varius pulvinar in tincidunt sapien. Maecenas sed odio ut turpis sodales luctus ac in urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque in congue risus, vel sodales tellus. Donec elementum eu orci ac ultrices. Praesent facilisis, dolor vel sodales porttitor, mauris quam bibendum ipsum, et venenatis lectus augue in elit.
    """, imageId: "charlie", actionImageId: "Charlie-1")
    
]

