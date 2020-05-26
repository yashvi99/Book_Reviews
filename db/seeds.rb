
Book.destroy_all

Book.create!(name: "The Little Prince" , author: "Antoine de Saint-Exupéry")
Book.create!(name: "The Lord of the Rings" , author: "J. R. R. Tolkien")
Book.create!(name: "The Alchemist " , author: "Paulo Coelho")
Book.create!(name: "The Master and Margarita" , author: "Mikhail Bulgakov")
Book.create!(name: "Alice's Adventures in Wonderland" , author: "Lewis Carroll")
Book.create!(name: "And Then There Were None" , author: "Agatha Christie")
Book.create!(name: "Dream of the Red Chamber" , author: "Cao Xueqin")
Book.create!(name: "The Lion, the Witch and the Wardrobe" , author: "C. S. Lewis")
Book.create!(name: "The Da Vinci Code" , author: "Dan Brown")
Book.create!(name: "The Eagle Has Landed" , author: "Jack Higgins")


Reviewer.destroy_all

Reviewer.create!(name: "Ansh Mehta" , password: "ansh123")
Reviewer.create!(name: "Kunj Patel" , password: "@patel")
Reviewer.create!(name: "Nilay Patel" , password: "Nilu98")
Reviewer.create!(name: "Himadree Panchal" , password: "_dinky_")
Reviewer.create!(name: "Dhara Patel" , password: "penn@dhara")
Reviewer.create!(name: "Dhairya Shah" ,password: "maitz")


book1 = Book.find(1)
book1.reviewers << Reviewer.find(1)
book1.reviewers << Reviewer.find(2)
book1.reviewers << Reviewer.find(3)

book2 = Book.find(2)
book2.reviewers << Reviewer.find(4)
book2.reviewers << Reviewer.find(5)
book2.reviewers << Reviewer.find(6)

book3 = Book.find(3)
book3.reviewers << Reviewer.find(1)
book3.reviewers << Reviewer.find(5)
book3.reviewers << Reviewer.find(3)

book4 = Book.find(4)
book4.reviewers << Reviewer.find(4)
book4.reviewers << Reviewer.find(2)
book4.reviewers << Reviewer.find(6)

book5 = Book.find(5)
book5.reviewers << Reviewer.find(1)
book5.reviewers << Reviewer.find(6)
book5.reviewers << Reviewer.find(3)

book6 = Book.find(6)
book6.reviewers << Reviewer.find(4)
book6.reviewers << Reviewer.find(2)
book6.reviewers << Reviewer.find(5)

book7 = Book.find(7)
book7.reviewers << Reviewer.find(1)
book7.reviewers << Reviewer.find(4)
book7.reviewers << Reviewer.find(3)

book8 = Book.find(8)
book8.reviewers << Reviewer.find(5)
book8.reviewers << Reviewer.find(2)
book8.reviewers << Reviewer.find(6)

book9 = Book.find(9)
book9.reviewers << Reviewer.find(1)
book9.reviewers << Reviewer.find(2)
book9.reviewers << Reviewer.find(4)

book10 = Book.find(10)
book10.reviewers << Reviewer.find(5)
book10.reviewers << Reviewer.find(6)
book10.reviewers << Reviewer.find(3)
