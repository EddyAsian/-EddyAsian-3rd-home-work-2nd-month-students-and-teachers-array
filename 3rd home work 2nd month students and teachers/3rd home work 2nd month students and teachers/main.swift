
import Foundation

//2 месяц. ДЗ #2
//
//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
//
//В каждом из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

import Foundation

class Students {
    var name: String
    var surname: String
    var age: Int
    var yearEducation: Int
    var average: Int
    var id: Int
    
    init(name: String, surname: String, age: Int, yearEducation: Int, average: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.yearEducation = yearEducation
        self.average = average
        self.id = id
    }
}

class Teachers {
    var name: String
    var surname: String
    var age: Int
    var id: Int
    
    init(name: String, surname: String, age: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.id = id
    }
}


class DataBase {
    
    private var studentsArray: [Students] = []
    private var studentsCount: Int = 0
    private var teachersArray: [Teachers] = []
    private var teachersCount: Int = 0
    
    
    
    //  функция добавления студента
    func addStudent(student: Students) {
        studentsArray.append(student)
        studentsCount += 1
    }
    
    
    //    функция удаления студента по имени и фамилии
    func deleteStudentName (name: String, surname: String) {
        for (index, item) in studentsArray.enumerated() {
            if item.name == name && item.surname == surname {
                studentsArray.remove(at: index)
                print("Студент \(item.surname) \(item.name)  был(а) удален(а) из базы данных (используя имя и фамилию)")
                break
            }
        }
    }
    
    
    
    
    //    функция удаления студента по индексу ID
    func deleteStudentId(id: Int) {
        for (index, item) in studentsArray.enumerated() {
            if item.id == id {
                studentsArray.remove(at: index)
                print("Студент \(item.surname) \(item.name)  был(а) удален(а) из базы данных (используя ID)")
                break
            }
            
        }
        
    }
    
    func studentsInfo() {
        print("Список студентов:")
        for (index,item) in studentsArray.enumerated() {
            print("Студент №\(index+1)\nФамилия - \(item.surname)\nИмя - \(item.name)\nВозраст - \(item.age)\nГод обучения - \(item.yearEducation)\nID: \(item.id)")
            print("-----------------")
        }
    }
    
    
    // функция добавления учителя
    func addTeacher(teacher: Teachers) {
        teachersArray.append(teacher)
        teachersCount += 1
    }
    
    
    //    функция удаления учителя по индексу ID
    func deleteTeacherId(id: Int) {
        for (index,item) in teachersArray.enumerated() {
            if item.id == id {
                teachersArray.remove(at: index)
                print("Учитель \(item.surname) \(item.name)  был(а) удален(а) из базы данных (используя ID)")
            }
        }
    }
    //    функция удаления учителя по имени и фамилии
    func deleteTeacherName (name: String, surname: String) {
        for (index, item) in teachersArray.enumerated() {
            if item.name == name && item.surname == surname {
                teachersArray.remove(at: index)
                print("Учитель \(item.surname) \(item.name)  был(а) удален(а) из базы данных (используя имя и фамилию)")
                break
            }
        }
    }
    
    func teachersInfo() {
        print("Список учителей:")
        for (index,item) in teachersArray.enumerated() {
            print("Учитель №\(index+1)\nФамилия - \(item.surname)\nИмя - \(item.name)\nВозраст - \(item.age)\nID: \(item.id)")
            print("----------------")
        }
    }
}


var dataBase = DataBase()
//введем данные для каждого класса
dataBase.addStudent(student: Students(name: "Анара", surname: "Асан кызы", age: 17, yearEducation: 10, average: 4, id: 3455221))
dataBase.addStudent(student: Students(name: "Самат", surname: "Дастан уулу", age: 17 , yearEducation: 10, average: 5, id: 1345))
dataBase.addStudent(student: Students(name: "Наргиза", surname: "Шаршенова", age: 15, yearEducation: 8, average: 3, id: 3535))
print("")

dataBase.studentsInfo()
print("")

//удаление студента
dataBase.deleteStudentId(id: 3535)
dataBase.deleteStudentName(name: "Самат", surname: "Дастан уулу")
dataBase.studentsInfo()

print("-------------------------------")

dataBase.addTeacher(teacher: Teachers(name: "Ирина", surname: "Олеговна", age: 36, id: 25626))
dataBase.addTeacher(teacher: Teachers(name: "Мурат", surname: "Аменов", age: 45, id: 14563463))
dataBase.addTeacher(teacher: Teachers(name: "Владимир", surname: "Веринов", age: 39, id: 246478))

dataBase.teachersInfo()
print("")

//удаление учителя
//dataBase.deleteTeacherId(id: 14563463)
//dataBase.teachersInfo()


