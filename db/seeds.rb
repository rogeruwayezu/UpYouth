PublicActivity::ORM::ActiveRecord::Activity.create!([
  {trackable_type: "Application", trackable_id: 10, owner_type: "User", owner_id: 2, key: "application.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 8, owner_type: "User", owner_id: 2, key: "application.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 9, owner_type: "User", owner_id: 2, key: "application.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 9, owner_type: "User", owner_id: 2, key: "application.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 10, owner_type: "User", owner_id: 2, key: "application.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 11, owner_type: "User", owner_id: 1, key: "application.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 12, owner_type: "User", owner_id: 1, key: "application.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 12, owner_type: "User", owner_id: 2, key: "application.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 8, owner_type: nil, owner_id: nil, key: "application.destroy", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 10, owner_type: nil, owner_id: nil, key: "application.destroy", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 9, owner_type: nil, owner_id: nil, key: "application.destroy", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Application", trackable_id: 11, owner_type: nil, owner_id: nil, key: "application.destroy", parameters: {}, recipient_type: nil, recipient_id: nil}
])
Application.create!([
  {post_id: 14, cover_letter: "<p>Dear Kepler,</p>\r\n\r\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;.</p>\r\n\r\n<p>Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\r\n\r\n<p>Best,</p>\r\n", user_id: 1, duration: "3 weeks", hired: true}
])
Category.create!([
  {name: "Web Development"},
  {name: "Marketing"},
  {name: "Agriculture"},
  {name: "Education"}
])
Education.create!([
  {school: "Kepler Kigali", date_attended: "2017-12-30", degree: "Bachelor's degree in Management", user_id: 41}
])
EmploymentHistory.create!([
  {company: "Kepler", location: "Kigali", position: "IT Technician", role: "intern", period: "2017-09-29", responsibilities: nil, user_id: 1},
  {company: "Bank of Kigali", location: "Kigali", position: "IT Technician", role: "manager", period: "2017-09-28", responsibilities: nil, user_id: 1}
])
Portfolio.create!([
  {title: "Water Shortage Project", overview: "It was about researching water shortage.", category_id: 1, file: "Gedeon_Ntwali_CV.pdf", user_id: 1},
  {title: "Intern at Kasha", overview: "Working on putting something on categories.", category_id: 2, file: "Gedeon_Ntwali.pdf", user_id: 1},
  {title: "Keep Up Kepler", overview: "I twas about doing things as I wanted", category_id: 2, file: nil, user_id: 23}
])
Post.create!([
  {title: "Rails Developer", description: "Akunda kury amata na inds ibitestes nesza kand ai raur slerisejh", budget: 234, user_id: 2, deadline: "2017-12-03"},
  {title: "Chef Evangelist Officer", description: "<p>Kepler is looking for a CEO</p>\r\n", budget: 400, user_id: 2, deadline: "2017-11-16"},
  {title: "Website Developer at Kepler", description: "<p>The position is all about creating new website for Kepler Kigali</p>\r\n", budget: 200, user_id: 2, deadline: "2017-11-08"},
  {title: "Android App Developer", description: "<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me. L&#39;avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme &#39;Du texte. Du texte. Du texte.&#39; est qu&#39;il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du fran&ccedil;ais standard. De nombreuses suites logicielles de mise en page ou &eacute;diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, et une recherche pour &#39;Lorem Ipsum&#39; vous conduira vers de nombreux sites qui n&#39;en sont encore qu&#39;&agrave; leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d&#39;y rajouter de petits clins d&#39;oeil, voire des phrases embarassantes).</p>\r\n", budget: 500, user_id: 2, deadline: "2017-11-15"}
])
PostCategory.create!([
  {category_id: 1, post_id: 13},
  {category_id: 1, post_id: 14}
])
PostSkill.create!([
  {post_id: 11, skill_id: 2},
  {post_id: 11, skill_id: 4},
  {post_id: 11, skill_id: 6},
  {post_id: 12, skill_id: 32},
  {post_id: 12, skill_id: 34},
  {post_id: 12, skill_id: 35},
  {post_id: 13, skill_id: 2},
  {post_id: 13, skill_id: 3},
  {post_id: 14, skill_id: 1},
  {post_id: 14, skill_id: 3},
  {post_id: 14, skill_id: 4}
])
Profile.create!([
  {overview: "hey", user_id: 2, profile_picture: nil},
  {overview: "I am a full-stack developer", user_id: 3, profile_picture: "giddd.jpg"},
  {overview: "I am a little brother of Gideon the Programmer", user_id: 1, profile_picture: "IMG_20150819_213423.jpg"},
  {overview: "I am a developer", user_id: 23, profile_picture: nil},
  {overview: "I am a professional singer", user_id: 24, profile_picture: nil},
  {overview: nil, user_id: 12, profile_picture: nil},
  {overview: nil, user_id: 12, profile_picture: nil},
  {overview: nil, user_id: 12, profile_picture: nil},
  {overview: nil, user_id: 12, profile_picture: nil},
  {overview: nil, user_id: 23, profile_picture: nil},
  {overview: "Messi", user_id: 23, profile_picture: "Screenshot_from_2017-08-20_21-24-25.png"},
  {overview: "I am a Burundian", user_id: 39, profile_picture: "Gyoung.png"},
  {overview: "New shit", user_id: 39, profile_picture: "Screenshot_from_2017-08-20_21-24-25.png"},
  {overview: "TRY", user_id: 39, profile_picture: "Gyoung.png"},
  {overview: "TUGERAGEZE", user_id: 39, profile_picture: "Gyoung.png"},
  {overview: "Roger and Laura", user_id: 39, profile_picture: "Gyoung.png"},
  {overview: "OOOh My Gosh", user_id: 39, profile_picture: "Gyoung.png"},
  {overview: "I am a web developer who working currently at UpYouth web application.", user_id: 40, profile_picture: "Screenshot_from_2017-08-20_21-24-25.png"},
  {overview: "I am a web developer who working currently at UpYouth web application.", user_id: 39, profile_picture: "Gyoung.png"},
  {overview: "I am a professional Footabller", user_id: 41, profile_picture: "Gyoung.png"},
  {overview: "I am a strong Rwandan", user_id: 79, profile_picture: "Gyoung.png"}
])
ProfileCategory.create!([
  {profile_id: 21, category_id: 1},
  {profile_id: 21, category_id: 3}
])
ProfileSkill.create!([
  {profile_id: 20, skill_id: 2},
  {profile_id: 20, skill_id: 3},
  {profile_id: 20, skill_id: 5},
  {profile_id: 21, skill_id: 2},
  {profile_id: 21, skill_id: 3},
  {profile_id: 21, skill_id: 4},
  {profile_id: 22, skill_id: 3},
  {profile_id: 22, skill_id: 4},
  {profile_id: 21, skill_id: 5}
])
Role.create!([
  {name: "employer"},
  {name: "freelancer"}
])
Skill.create!([
  {name: "Ruby on Rails"},
  {name: "JavaScript"},
  {name: "HTML"},
  {name: "CSS"},
  {name: "PHP"},
  {name: "Graphic Design"},
  {name: "MySQL"},
  {name: "Postgresql"},
  {name: "AngularJS"},
  {name: "Microsoft Office"},
  {name: "Microsoft Excel"},
  {name: "Microsoft PowerPoint"},
  {name: "Microsoft Publisher"},
  {name: "NodeJS"},
  {name: "JQuery"},
  {name: "ReactJS"},
  {name: "SPSS"},
  {name: "QuickBooks"},
  {name: "Blogging"},
  {name: "Problem Solving"},
  {name: "Planning"},
  {name: "C++"},
  {name: "Python"},
  {name: "News Writing"},
  {name: "Business Writing"},
  {name: "Public Speaking"},
  {name: "Conflict Management"},
  {name: "Time Management"},
  {name: "Academic Writing"},
  {name: "Proofreading"},
  {name: "Translation"},
  {name: "Research"},
  {name: "Data Analysis"},
  {name: "Bootstrap"},
  {name: "Risk Assessment"},
  {name: "Legal Assistance"}
])
Submission.create!([
  {file: "fantasy.PNG", title: "Roger Works", description: "So hard", completed: true, user_id: 1, post_id: 8},
  {file: "medication-errors-their-consequences.pdf", title: "The website", description: "I am done with the website you asked me to do", completed: nil, user_id: 1, post_id: 14}
])
User.create!([
  {first_name: "Isaac", last_name: "Rams", role_id: 2, password_digest: "$2a$10$vLgFCtqx6zlvqlPGtdf0lePKRj/IC866sDyua1dsbN82gn9xC6FCC", email: "rams@gmail.com"},
  {first_name: "Roger", last_name: "Federer", role_id: 1, password_digest: "$2a$10$Pe0cgT6Rpe.YMI34QcjlnuIdXAAoty5YWgXDlgcsPLVyYQ6KMN8Je", email: "roger@gmail.com"},
  {first_name: "Francis", last_name: "Babou", role_id: 2, password_digest: "$2a$10$F/wUqpUejK682nkGh/CJTuBpXn/P./6EkICjEUqmVyIok/7MMPIe2", email: "francis@gmail.com"},
  {first_name: "Gedeon ", last_name: "Ntwali", role_id: 2, password_digest: "$2a$10$0CYXT/jOxnB44a9vHHCwnuNFje6caUEKBTVA14eOhCClQFYubEK9G", email: "gedeon@gmail.com"},
  {first_name: "Messi", last_name: "Lionel", role_id: 2, password_digest: "$2a$10$HPVZC0vS58W3LVRPvN6M0uXB/45Tuj4olZORXa6tu/oDAZS3hWoHS", email: "messi@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$xKdXboTY.wcKW.edqnoBwul0aoeREPyuieG9H9EeHBDS/BQAj92iW", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$/qizsIYlvNlTHq1Zt9kKmesE/.YoHooNAIPp5Urp4wgsQyictBYmW", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$KuIfbrCZOuPSBOLtUbdOTOFORrRSW/ofKUF8WqM0ujCuQBLJhEfYq", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$vTnX.SZLPcRl/ZTDa3HQdOeU5qB/va1risnIM/gmc.LvgSDekXuU6", email: "jacky@gmail.com"},
  {first_name: "Ronaldo", last_name: "Chris", role_id: 2, password_digest: "$2a$10$K4u6/gy1XqfB4AAJf9ki2OfVXdm1IaLCG7Ph9Qk4r.GM6XdYH2PI.", email: "ronaldo@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$O0YG4leRZRTEFGsmKeyQwO9obPtLQqNtlY2H.2Zl7.GIQzNNrWDSi", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$/Jf2Cgns4d1edg/Q.Qd5PON7ao8RH0ABy3Zo.aH/c1tQQ4mBlnWdW", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$JiBvbpKhTKgATvGLeW4S6uHTMJJEd42ONgIGSEwGF8PrxfZOtL5AO", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$s7H.mOA1FTf9nyVIfg3Miewd7FYgv2Isd67PHfWIPNmmN/u2OlM36", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$UbifQcGTGrAweB29zzZFM.WcbnJc/02nCefs9ohousV9j6rLffMRG", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$TN9lSr4lsm9LOIzDiipDPehoP.EpvXjJ6M2iaAM1hdWo1Ua9pzs.y", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$WvAjpsIyFTrzw3rNRnfblOTh//CdmZbiCbgqzyCmSuwNcuaMVHt.W", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$MiGdCF83YWD1kYDcfn5vTOTUAl7UGIeh76P2ErW.Z8IJpFG.85dHa", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$pGiXdIL0OVwTdVq4xQRF4OyqgWaYKExA96Iy2q80SqC9KMxAc/P.W", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$u9Ot2iPR2Ln0FTFXex1TF.7WUbgsq3Ptw6w8kF4uEaIbLFy.cVUg.", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$sOJ/2SnWNqgn1OI5BFXXkOcYm/Eg3oV4EFVz5TwMu9gil9lU639by", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$AuCV6sNTNNlwLJEK.AEnhe3zvreRLQMLn/1S4BIpa7vDP9Dy0eZHe", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$TvCGsi2CTK/bBW7uZ.ErXedFzpEs1fc1LxMHJ4DhMzVzYZLujdSo.", email: "jacky@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$PDFiua8RpaTEvVQRxOA0eO.8PjXWZIjc04oAXzAmvknKR7Zm/RuIO", email: "jacky@gmail.com"},
  {first_name: "Ronaldo", last_name: "Chris", role_id: 2, password_digest: "$2a$10$PSFkdftsCnx0czHSSTvc2.LDZUlRoMgt0MPtzyAEgKwaSiXnEoU2m", email: "ronaldo@gmail.com"},
  {first_name: "Ronaldo", last_name: "Chris", role_id: 2, password_digest: "$2a$10$HyWH6du.nwWVGGsR3D59U.oSYplp4Y1Ydmo1tx6zXVY9abdbEHjiC", email: "ronaldo@gmail.com"},
  {first_name: "Ronaldo", last_name: "Chris", role_id: 2, password_digest: "$2a$10$JkPT42eyGSVi/uD7MzcqEuSuy/k4RfH7uJ7DPQ1AIemrRtBqc3gQG", email: "ronaldo@gmail.com"},
  {first_name: "Israel", last_name: "Nani", role_id: 2, password_digest: "$2a$10$IxjzeAgN0j90ul.6pu9KE.fJ.ielzk5S6DC4Bdbj4pOt6RLjwnuFy", email: "nani@gmail.com"},
  {first_name: "Kaze", last_name: "Olivia", role_id: 2, password_digest: "$2a$10$IZxeCAFhYCINW96MTrKB/uvDfY1n4lKiJNvOC5M79.eJi9th5shQy", email: "olivia@gmail.com"},
  {first_name: "Kaze", last_name: "Olivia", role_id: 2, password_digest: "$2a$10$KjUvMBCrj9cNGYLP0RHe2ujJOyCxGYGYJgt10QIc7Hl34o6fMQeJ.", email: "olivia@gmail.com"},
  {first_name: "Zoro", last_name: "Zi", role_id: 1, password_digest: "$2a$10$Ba/3z/RjH3nU5HpSlSeJCOoCLeZHkaIDE25dqHNsWbf.U6nSbhJZi", email: "zoro@gmail.com"},
  {first_name: "Zoro", last_name: "Zi", role_id: 1, password_digest: "$2a$10$OzBx46J6fD9YHYcIHfNxY.qlekE4Rx44kDfNtTpytFS2lA7w1AOoO", email: "zoro@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$5om5yIqMEnJA/R0/ZRHMJeRt9g5iQDcfHjFpfj0WH1K20newoVwTS", email: "jacky@gmail.com"},
  {first_name: "Ronaldo", last_name: "Chris", role_id: 2, password_digest: "$2a$10$pQnLh72kdWb3mC1SdgUsau9RwF2KCkOu3uNI.Q89rKiqRGlxpkJsC", email: "ronaldo@gmail.com"},
  {first_name: "Ronaldo", last_name: "Chris", role_id: 2, password_digest: "$2a$10$ogbi4QmvI4eeJBt/1WovfuhmeUqbKl18iyViFkWmNCXwHsMdElGXe", email: "ronaldo@gmail.com"},
  {first_name: "Israel", last_name: "Nani", role_id: 2, password_digest: "$2a$10$xR/TWn1jFbWmR/VOxxqPu.ZSxSKQrrwZt1SYiV0EazfPkotMnxbNu", email: "nani@gmail.com"},
  {first_name: "Kaze", last_name: "Olivia", role_id: 2, password_digest: "$2a$10$nHYoD2FCSJugqz7FZf5/e.XCbE7AyyeRCv0AALBhldCDKuvUX8upa", email: "olivia@gmail.com"},
  {first_name: "Taylor", last_name: "Swift", role_id: 1, password_digest: "$2a$10$5aFDPYjwkDqfyvH55tL.xeOcqFUihOD0gKZA3KcCJHclqhd9qCPui", email: "taylor@gmail.com"},
  {first_name: "Taylor", last_name: "Swift", role_id: 1, password_digest: "$2a$10$KlntIZNJgaOPaE8Pz.no9./YeZdEEoJquGb1a3k3CaIeHeuiuuudS", email: "taylor@gmail.com"},
  {first_name: "Taylor", last_name: "Swift", role_id: 1, password_digest: "$2a$10$9bE0lrg1XrbLNv59pKv9y.TVmQM5i7bSh80sGq4v2LbzVtbO.bpye", email: "taylor@gmail.com"},
  {first_name: "Taylor", last_name: "Swift", role_id: 1, password_digest: "$2a$10$VmooxOWAKrpf4I2YnRV2vunorNOqGjhoTftnzmv1u8di/kv6MIPvm", email: "taylor@gmail.com"},
  {first_name: "Taylor", last_name: "Swift", role_id: 1, password_digest: "$2a$10$09Y4f//7K8YxYApcK0uSSus5sW3si1ucGUWFnwAXwKptoMXRgI.0i", email: "taylor@gmail.com"},
  {first_name: "Zoro", last_name: "Zi", role_id: 2, password_digest: "$2a$10$60yEtOCzXC.xqoL9g5BzseGg6qUR3CdhOayrDY6D09t8Gjw4C3RUu", email: "zoro@gmail.com"},
  {first_name: "Jacky", last_name: "Ma", role_id: 1, password_digest: "$2a$10$Xn.Itia2gY5C1wrSbIsSjOO2GiTHXKUBOxlrhxhapCk7aRi9ft.9.", email: "jacky@gmail.com"},
  {first_name: "Kagame", last_name: "Paul", role_id: 1, password_digest: "$2a$10$Vmu/BaXyltEP5CPDaYYpU.O7OpcTQ8OkgIzQqGPzQUcmQ4tV.biIG", email: "paul@gmail.com"}
])
