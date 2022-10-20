//
//  Crew.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

// MARK: Definition
struct Crew: Identifiable {
    
    let id = UUID()
    let name: String
    let job: String
    let imageId: String
    let bio: String
    
}

// MARK: Data
var primaryCrewMembers : [Crew] = [
    
    Crew(name: "Faith Dickinson", job: "Dance Captain", imageId: "faithDickinson", bio: """
        Faith is grateful for her position as Assistant Choreographer in the production of Chicago. She has loved dancing since she was three years old. This show has taught her a lot about choreography in the ‘real world’: the demand, focus, and dedication needed. She has learned that choreography is a true passion of hers and feels the need to pursue it in the future. Faith thanks the directors for allowing her to be a part of the team.
        """),
    
    Crew(name: "Emily Schnurr", job: "Stage Manager", imageId: "emilySchnurr", bio: """
        Emily is thrilled to be the stage manager of Chicago! She has always loved theater and started stage managing in grade 7. Last year, Emily was the stage manager for The Heart of Robin Hood. In her spare time, Emily is the Senior in Charge of Photography and a Senior in Charge of Chapel. She has always had a love for fine arts and the performing arts. Emily is traveling to London, England this March with her drama class to deepen her skills as a stage manager. She hopes you enjoy the show!
        """),
    
    Crew(name: "Gabi Thorpe", job: "Stage Manager", imageId: "gabiThorpe", bio: """
        This is Gabi’s first time being a part of an LCS production. She has learned so much throughout the entire experience. Gabi decided to try stage managing to learn more about the technical side of theatre. She thanks the production team for everything they’ve taught her this year!
        """),
    
    Crew(name: "Camila Marcos", job: "Assistant Stage Manager", imageId: "camilaMarcos", bio: """
        Camila is a Grade 9 student at Lakefield. She has been doing theatre since she was seven years old. She has been on stage in acting roles in the past, and this year, wanted to learn more about the magic that happens backstage.
        """),
    
    Crew(name: "Brent Dadds", job: "Props Master", imageId: "brentDadds", bio: ""),
    
    Crew(name: "Rowan Harris-Stoertz", job: "Stage Crew", imageId: "rowanHarris-Stoertz", bio: ""),
    
    Crew(name: "Wulfric Harris-Stoertz", job: "Stage Crew", imageId: "wulfricHarris-Stoertz",  bio: """
        Wulfric Harris-Stoertz is a crucial part of the crew, providing brute force, skill in construction, and bad puns to the set-building effort. Wulfric works backstage to keep the play running smoothly and tries to minimize the destruction of props and the set that is caused by the (well-meaning) actors. This is Wulfric’s fourth play at Lakefield and he looks forward to the final show.
        """),
    
    Crew(name: "Enrica Geloso", job: "Stage Crew", imageId: "enricaGeloso", bio: ""),
    
    Crew(name: "Eric Zang", job: "Stage Crew", imageId: "ericZang", bio: ""),
    
    Crew(name: "Sebastian Tyson", job: "Stage Crew", imageId: "sebastianTyson", bio: ""),
    
    Crew(name: "Matt McCall", job: "Stage Crew", imageId: "mattMccall", bio: ""),
    
    Crew(name: "Paulina Martinez", job: "Stage Crew", imageId: "paulinaMartinez", bio: ""),
    
    Crew(name: "Simon Dutil", job: "Sound Technician", imageId: "simonDutil",  bio: """
        Simon Dutil is from Saint-Georges, Quebec. This is his second year at Lakefield. As a lighting and sound designer, he has now participated in two productions at LCS: one Dance Showcase, and last year's Spring play, The Heart of Robin Hood. This year, he participates in his first musical! He is always there to help: from painting the set to teaching other people how to use the lights. Simon is always looking for new challenges and loves to learn new skills.
        """),
    
    Crew(name: "Dylan Smith", job: "Lighting Technician", imageId: "dylanSmith",  bio: ""),
    
    Crew(name: "Patricio Arnau Young", job: "Projection Design", imageId: "patricioArnauYoung",  bio: ""),
    
    Crew(name: "Amy Shin", job: "Costume Design Assistant", imageId: "amy", bio: ""),
    
    Crew(name: "Eno Chen", job: "Costume Design Assistant", imageId: "eno", bio: ""),
    
    Crew(name: "Judy Yu", job: "Costume Design Assistant", imageId: "judy", bio: ""),
    
    Crew(name: "Quang Bui", job: "Costume Design Assistant", imageId: "quang", bio: ""),
    
]

var specialTeams : [Crew] = [
    
    Crew(name: "Hair and Make-up", job: "", imageId: "", bio: """
        Amy Shin
        Chloe Traviss
        Elizabeth Moody
        Jami Lowry
        Judy Yu
        Rachel Bemrose
        Tori Whitmore
        """),
    
    Crew(name: "Posters", job: "", imageId: "", bio: """
        Stephanie Wilcox
        Drew Antzis
        """),

    Crew(name: "Set Construction", job: "", imageId: "", bio: """
        Curtis Elliot
        Dylan Smith
        Geoff Bemrose
        Jenis Kim
        Joe Huang
        June Saunders
        Matt McCall
        Mike Grant
        Neil Young
        Rob Fleming
        Rowan Harris-Stoertz
        Sebastian Tyson
        Sihan Che
        Simon Dutil
        Tyler Jervis
        Wulfric Harris-Stoertz
        Zach Rubin
        """),
    
    Crew(name: "Set Painting", job: "", imageId: "", bio: """
        Alejandro Rodriguez
        Alexis Pettersen
        Amber Claassen
        Amy Shin
        Catherine Kim
        Chelsea Yue
        Emile Boisjoly
        Eno Chen
        Geoff Bemrose
        Judy Yu
        Julio Midence
        Kelly Wang
        Nancy Lu
        Olivia Cantelon
        Patricio Arnau Young
        Paulina Martinez Reyes
        Pia Garcia
        Rachel Bemrose
        Sarah Young
        Tayler Morencie
        Tina St. John
        """),
    
]

