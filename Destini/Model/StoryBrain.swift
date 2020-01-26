//
//  StoryBrain.swift
//  Destini
//
//  Created by 🧔🏻Alikhan Batchaev on 25.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "Ваша машина взорвала шину на извилистой дороге в пустом месте без приема сотового телефона. Вы решаете поехать автостопом. Ржавый пикап грохочет рядом с вами, чтобы остановиться. Человек с широкой полевой шляпой с бездушными глазами открывает пассажирскую дверь для вас и спрашивает: «Нужно подвезти, мальчик?",
            choice1: "Да, было бы не плохо, спасибо, я прыгну в машину", choice1Destination: 2,
            choice2: "Лучше будет сразу спросить, не убийца ли он?", choice2Destination: 1
        ),
        Story(
            title: "Он медленно кивает, не обеспокоенный вопросом.",
            choice1: "По крайней мере, он честен. Я залезу в машину", choice1Destination: 2,
            choice2: "Подождите, я знаю, как сменить шину.", choice2Destination: 3
        ),
        Story(
            title: "Когда вы начинаете водить машину, незнакомец начинает говорить о своих отношениях с матерью. Он становится злее и злее с каждой минутой. Он просит вас открыть бардачок. Внутри вы найдете кровавый нож, два отрубленных пальца и кассету Элтона Джона. Он тянется к бардачку.",
            choice1: "Я люблю Элтона Джона! Вручите ему кассету.", choice1Destination: 5,
            choice2: "Он или я! Вы берете нож и наносите ему удар.", choice2Destination: 4
        ),
        Story(
            title: "Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастного случая для большинства взрослых возрастных групп?",
            choice1: "КО", choice1Destination: 0,
            choice2: "НЕЦ", choice2Destination: 0
        ),
        Story(
            title: "Когда вы пробиваетесь через ограждение и приближаетесь к зазубренным камням внизу, вы размышляете о сомнительной мудрости нанести удар кому-то, пока он ведет машину, в которой вы находитесь.",
            choice1: "КО", choice1Destination: 0,
            choice2: "НЕЦ", choice2Destination: 0
        ),
        Story(
            title: "Вы связываетесь с убийцей, напевая стихи «Можете ли вы почувствовать любовь сегодня вечером». Он высадит тебя в следующем городе. Перед тем как уйти, он спрашивает вас, знаете ли вы какие-нибудь хорошие места для захоронения тел. Вы отвечаете: «Попробуйте пирс.'",
            choice1: "КО", choice1Destination: 0,
            choice2: "НЕЦ", choice2Destination: 0
        )
    ]
    
    
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else {
            storyNumber = currentStory.choice2Destination
        }
    }
}
