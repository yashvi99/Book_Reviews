=begin

Reviewer.destroy_all

Reviewer.create! [
{name: "Ansh Mehta" , password: "ansh123"},
{name: "Kunj Patel" , password: "@patel"},
{name: "Nilay Patel" , password: "Nilu98"},
{name: "Himadree Panchal" , password: "_dinky_"},
{name: "Dhara Patel" , password: "penn@dhara"}
{name: "Dhairya Shah" ,password: "maitz"}
]

Book.destroy_all

Book.create! [
{name: "The Little Prince" , author: "Antoine de Saint-Exupéry"},
{name: "The Lord of the Rings" , author: "J. R. R. Tolkien"},
{name: "The Alchemist " , author: "Paulo Coelho"},
{name: "The Master and Margarita" , author: "Mikhail Bulgakov"},
{name: "Alice's Adventures in Wonderland" , author: "Lewis Carroll"},
{name: "And Then There Were None" , author: "Agatha Christie"},
{name: "Dream of the Red Chamber" , author: "Cao Xueqin"},
{name: "The Lion, the Witch and the Wardrobe" , author: "C. S. Lewis"},
{name: "The Da Vinci Code" , author: "Dan Brown"},
{name: "The Eagle Has Landed" , author: "Jack Higgins"}
]

book1 = Book.find_by name: "Dream of the Red Chamber"

book1.notes.create! [
{title: "WOWWWW!!" ,note: "What an amazing book. Totally worth the time."},
{title: "Not Bad :)", note: "It is a good read. But there is nothing extraordinary about htis book."}
]
=end

