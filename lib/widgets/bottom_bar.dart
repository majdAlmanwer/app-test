//  BottomBarCreative(
//         items: [
//           TabItem(
//             icon: Icons.home,
//             title: 'Home',
//           ),
//           TabItem(
//             icon: Icons.search_sharp,
//             title: 'Shop',
//           ),
//           TabItem(
//             icon: Icons.favorite_border,
//             title: 'Wishlist',
//           ),
//           TabItem(
//             icon: Icons.shopping_cart_outlined,
//             title: 'Cart',
//           ),
//           TabItem(
//             icon: Icons.account_box,
//             title: 'profile',
//           ),
//         ],
//         backgroundColor: Colors.blue,
//         color: Colors.white,
//         colorSelected: Colors.red,
       

//         indexSelected: tab,

//         onTap: (int index) => setState(() {
//           tab = index;
//         }),
//         backgroundSelected: Colors.blue,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(42.5), topRight: Radius.circular(42.5)),
//         iconSize: 38,
//         isFloating: true,
//         pad: 10,

//         // chipStyle: const ChipStyle(isHexagon: false, convexBridge: true),
//       ),
//  AnimatedBottomNavigationBar(
//               bottomBarItems: [
//                 BottomBarItemsModel(
//                   icon: const Icon(Icons.home, size: example.Dimens.iconNormal),
//                   iconSelected: const Icon(Icons.home,
//                       color: AppColors.cherryRed,
//                       size: example.Dimens.iconNormal),
//                   title: example.Strings.home,
//                   dotColor: example.AppColors.cherryRed,
//                   onTap: () {
//                     log('Home');
//                   },
//                 ),
//                 BottomBarItemsModel(
//                   icon:
//                       const Icon(Icons.search, size: example.Dimens.iconNormal),
//                   iconSelected: const Icon(Icons.search,
//                       color: AppColors.cherryRed,
//                       size: example.Dimens.iconNormal),
//                   title: example.Strings.search,
//                   dotColor: example.AppColors.cherryRed,
//                   onTap: () {
//                     log('Search');
//                   },
//                 ),
//                 BottomBarItemsModel(
//                   icon:
//                       const Icon(Icons.person, size: example.Dimens.iconNormal),
//                   iconSelected: const Icon(Icons.person,
//                       color: AppColors.cherryRed,
//                       size: example.Dimens.iconNormal),
//                   title: example.Strings.person,
//                   dotColor: example.AppColors.cherryRed,
//                   onTap: () {
//                     log('Profile');
//                   },
//                 ),
//                 BottomBarItemsModel(
//                     icon: const Icon(Icons.settings,
//                         size: example.Dimens.iconNormal),
//                     iconSelected: const Icon(Icons.settings,
//                         color: AppColors.cherryRed,
//                         size: example.Dimens.iconNormal),
//                     title: example.Strings.settings,
//                     dotColor: example.AppColors.cherryRed,
//                     onTap: () {
//                       log('Settings');
//                     }),
//               ],
//               bottomBarCenterModel: BottomBarCenterModel(
//                 centerBackgroundColor: example.AppColors.cherryRed,
//                 centerIcon: const FloatingCenterButton(
//                   child: Icon(
//                     Icons.add,
//                     color: AppColors.white,
//                   ),
//                 ),
//                 centerIconChild: [
//                   FloatingCenterButtonChild(
//                     child: const Icon(
//                       Icons.home,
//                       color: AppColors.white,
//                     ),
//                     onTap: () => log('Item1'),
//                   ),
//                   FloatingCenterButtonChild(
//                     child: const Icon(
//                       Icons.home,
//                       color: AppColors.white,
//                     ),
//                     onTap: () => log('Item2'),
//                   ),
//                   FloatingCenterButtonChild(
//                     child: const Icon(
//                       Icons.home,
//                       color: AppColors.white,
//                     ),
//                     onTap: () => log('Item3'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
