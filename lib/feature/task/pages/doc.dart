// import 'package:lender_invest/core/ui/_ui.dart';
// import 'package:lender_invest/features/projects/data/models/response/apply_for_bond.dart';
// import 'package:lender_invest/features/projects/state/project_page/project_page_bloc.dart';

// class EmissionDocument extends StatelessWidget {
//   const EmissionDocument({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ExpandableController emissionController = ExpandableController(
//       initialExpanded: true,
//     );
//     return BlocBuilder<ProjectPageBloc, ProjectPageState>(
//       builder: (context, state) {
//         if (state is ProjectBondPageSuccess) {
//           final ApplyForBond modelList = state.applyForBond;
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: ASizes.p20),
//             child: buildDescriptionExpandableCard(
//               title: S.of(context).title_emission_document,
//               expanded: CustomScrollView(
//                 shrinkWrap: true,
//                 slivers: [
//                   SliverList(
//                     delegate: SliverChildBuilderDelegate(
//                         childCount: modelList.data!.bondEmissionDocs!.links!
//                             .length, (context, index) {
//                       return Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '${S.of(context).title_nomination}:',
//                             style: AFonts.b2s14
//                                 .copyWith(fontWeight: FontWeight.w300),
//                           ),
//                           const SizedBox(height: ASizes.p8),
//                           GestureDetector(
//                             onTap: () async {
//                               final Uri url = Uri.parse(
//                                 modelList.data!.bondEmissionDocs!.links![index],
//                               );
//                               if (!await launchUrl(
//                                 url,
//                                 mode: LaunchMode.externalApplication,
//                               )) {
//                                 throw Exception('Could not launch $url');
//                               }
//                             },
//                             child: Text(
//                               modelList.data!.bondEmissionDocs!.titles![index],
//                               style:
//                                   AFonts.b2s14.copyWith(color: AColors.primary),
//                             ),
//                           ),
//                           //             const SizedBox(height: ASizes.p12),
//                         ],
//                       );
//                     }),
//                   ),
//                 ],
//               ),
//               expandableController: emissionController,
//             ),
//           );
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(horizontal: ASizes.p20),
//           //   child: buildDescriptionExpandableCard(
//           //     title: S.of(context).title_emission_document,
//           //     expanded: ListView.builder(
//           //       itemCount: modelList.data!.bondEmissionDocs!.links!.length,
//           //       shrinkWrap: true,
//           //       physics: const NeverScrollableScrollPhysics(),
//           //       itemBuilder: (BuildContext context, int index) {
//           //         return Column(
//           //           crossAxisAlignment: CrossAxisAlignment.start,
//           //           children: [
//           //             Text(
//           //               '${S.of(context).title_nomination}:',
//           //               style:
//           //                   AFonts.b2s14.copyWith(fontWeight: FontWeight.w300),
//           //             ),
//           //             const SizedBox(height: ASizes.p8),
//           //             GestureDetector(
//           //               onTap: () async {
//           //                 final Uri url = Uri.parse(
//           //                     modelList.data!.bondEmissionDocs!.links![index]);
//           //                 if (!await launchUrl(
//           //                   url,
//           //                   mode: LaunchMode.externalApplication,
//           //                 )) {
//           //                   throw Exception('Could not launch $url');
//           //                 }
//           //               },
//           //               child: Text(
//           //                 modelList.data!.bondEmissionDocs!.titles![index],
//           //                 style: AFonts.b2s14.copyWith(color: AColors.primary),
//           //               ),
//           //             ),
//           // //             const SizedBox(height: ASizes.p12),
//           //           ],
//           //         );
//           // },
//           // ),
//           //     expandableController: emissionController,
//           //   ),
//           // );
//         }
//         return buildEmissionDocumentLoading(context, emissionController);
//       },
//     );
//   }

//   static Widget buildEmissionDocumentLoading(
//     BuildContext context,
//     ExpandableController expandableController,
//   ) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: ASizes.p20),
//       child: buildDescriptionExpandableCard(
//         title: S.of(context).title_release_information,
//         expanded: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: ASizes.p12),
//             LoadingTextCard(height: ASizes.b1, width: 90),
//             SizedBox(height: ASizes.p12),
//             LoadingTextCard(height: ASizes.b1, width: 200),
//             SizedBox(height: ASizes.p12),
//             LoadingTextCard(height: ASizes.b1, width: 90),
//             SizedBox(height: ASizes.p12),
//             LoadingTextCard(height: ASizes.b1, width: 200),
//           ],
//         ),
//         expandableController: expandableController,
//       ),
//     );
//   }

//   static Widget buildDescriptionExpandableCard({
//     required String title,
//     required Widget expanded,
//     required ExpandableController expandableController,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: ASizes.p16),
//       child: ACard(
//         onTap: () => expandableController.expanded = true,
//         child: ExpandablePanel(
//           controller: expandableController,
//           header: SizedBox(
//             height: 40,
//             child: Align(
//               alignment: AlignmentDirectional.centerStart,
//               child: Text(
//                 title,
//                 textAlign: TextAlign.start,
//                 overflow: TextOverflow.ellipsis,
//                 style: AFonts.ts20.copyWith(fontWeight: FontWeight.w300),
//               ),
//             ),
//           ),
//           collapsed: const SizedBox.shrink(),
//           expanded: expanded,
//           theme: AppMainThemeExstension.expandableThemeData,
//         ),
//       ),
//     );
//   }
// }
