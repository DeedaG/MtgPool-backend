# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 # john = User.create(username: "John Doe", password: "secretword")
 #fancyBank = Investor.create(name: "Fancy Bank", fee: "100" )
 jane = User.first
 # jane.investors.create(name: "Fancy Bank", fee: "100")
  fancyBank = Investor.first
 # pool1 = fancyBank.pools.create(name: "pool1", pool_amount: "500,000")
 pool1 = Pool.first
 loan1 = pool1.loans.create(borrower: "Smith", term: "30", amount: "100,000", rate: "5", close_date: "8/15/19")
