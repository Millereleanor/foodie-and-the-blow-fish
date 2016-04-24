USE [FoodieAndTheBlowFish]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

GO
INSERT [dbo].[Categories] ([CategoryId], [Category]) VALUES (1, N'Recipes')
GO
INSERT [dbo].[Categories] ([CategoryId], [Category]) VALUES (2, N'Reviews')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (1, 1, N'Breakfast')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (3, 1, N'Lunch')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (4, 1, N'Dinner')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (5, 1, N'Dessert')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (6, 1, N'Drinks')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (7, 2, N'NorthAmerica')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (8, 2, N'SouthAmerica')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (9, 2, N'Asia')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (10, 2, N'Europe')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (11, 2, N'Australia')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (12, 2, N'Africa')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (13, 2, N'Antarctica')
GO
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (1, N'Pending')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (2, N'Active')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (3, N'Inactive')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (4, N'Denied')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (5, N'Featured')
GO
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogPosts] ON 

GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (1, N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 7, 1, N'https://grubamericana.files.wordpress.com/2012/08/hamburger_love-normal.jpg', N'Best Burger Ever!', N'<p>Best Hamburger Evar!&nbsp;</p>
<p><img src="https://grubamericana.files.wordpress.com/2012/08/hamburger_love-normal.jpg" alt="" width="650" height="551" /></p>
<p>Bacon ipsum dolor amet consectetur ex ullamco tail. Turducken duis shankle, pork belly fugiat culpa cow dolore pork loin tri-tip quis short ribs doner. Aliquip ribeye capicola, in short ribs irure rump cupidatat. Bacon jerky tongue pork chop incididunt reprehenderit. Proident exercitation beef frankfurter.</p>
<p>Chicken voluptate pancetta, in reprehenderit dolore dolore aute tenderloin occaecat deserunt. Boudin drumstick capicola, elit ex voluptate culpa. Sint tongue salami, occaecat filet mignon irure ground round labore ball tip. Duis cupidatat pig aute biltong chicken. Swine est consectetur venison, pig salami mollit porchetta adipisicing officia pariatur kevin ex. Esse deserunt bacon ut labore sed, magna adipisicing picanha pork loin. Ball tip tri-tip ut chicken nisi.</p>
<p>&nbsp;</p>
<p><img src="http://www.gannett-cdn.com/-mm-/de0a34e464f1c8b5b0737ec2a91519fc37e97b79/c=1-0-767-1022&amp;r=537&amp;c=0-0-534-712/local/-/media/2016/01/07/Livonia/B9320422051Z.1_20160107223802_000_GFAD3CS9I.1-0.jpg" alt="" width="400" height="533" /></p>
<p>Fugiat nulla sint ut alcatra, beef ribs adipisicing. Venison dolor incididunt irure. Capicola laborum venison, officia boudin sint sunt est kielbasa fatback cillum pastrami. Ea et andouille, landjaeger reprehenderit t-bone esse. Exercitation cow magna, turkey adipisicing id mollit proident. Alcatra ea dolore pancetta aliquip.</p>
<p>Rump short ribs jowl dolor ad laborum alcatra biltong beef ribs nulla pastrami. Swine short ribs venison cupim ad. Anim deserunt cupidatat tempor. Rump cupidatat pork belly sirloin voluptate ut doner venison shank dolore beef ribs picanha andouille. Jowl anim deserunt magna velit meatloaf. Tail aliqua in pork capicola picanha.</p>
<p>Drumstick chuck fatback eu bacon, chicken aliquip ad irure venison turducken laborum tempor. Porchetta nulla ipsum veniam, pork chop cupim drumstick quis jerky in aliqua cupidatat ball tip andouille nostrud. Chicken in aute short ribs beef ribs. Bacon brisket mollit, tempor pig qui commodo drumstick dolore laboris pork chop chuck landjaeger doner. Biltong kevin prosciutto, sirloin chuck laboris tempor mollit dolore pork belly nulla quis velit ut sausage. Nisi non qui rump venison reprehenderit est.</p>', N'Best Hamburger in the world!', CAST(N'2016-04-23' AS Date), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[BlogPosts] OFF
GO
INSERT [dbo].[IdentityRole] ([RoleId], [Name]) VALUES (1, N'Admin')
GO
INSERT [dbo].[IdentityRole] ([RoleId], [Name]) VALUES (2, N'Contributor')
GO
INSERT [dbo].[IdentityRole] ([RoleId], [Name]) VALUES (3, N'User')
GO
INSERT [dbo].[IdentityUser] ([UserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'87e8fca7-c2fa-40d6-b9de-b226056455ac', N'hisuida@me.com', 0, N'APtZMtSev5OwwVfhdNNbdY5sCXxkX0/gS+sXxzfmW8+6TLpzzUzok+kp6j3rrmB3uw==', N'7387b2ca-32f6-4b70-90dd-60a3ab7ad4cc', NULL, 0, 0, CAST(N'1753-01-01 00:00:00.000' AS DateTime), 1, 0, N'hisuida@me.com', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityProfile] ([UserId], [FirstName], [MiddleName], [LastName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'87e8fca7-c2fa-40d6-b9de-b226056455ac', N'Jeane', NULL, N'Hong', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime))
GO
