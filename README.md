# 100 days of Flutter
When starting this project, I've already had experiences with Flutter, so the challenge difficulties will bypass some basic knowledge and the knowledge that I knew it already. 🧑‍💻

## [Day 001](https://github.com/TaiTrien/100-days-of-flutter/tree/main/day001): Scrolling with [DraggableScrollableSheet](https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html) & [ListWheelScrollView](https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html)

1. **DraggableScrollableSheet**
  - Use another sizing widget beside scrolling widget to make sheet affect. Please check demo.
  - ***minChildSize***: is for smallest size that sheet can shrink and then opposite is ***maxChildSize*** from 0 to 1.
  - ***snap:true***: to turn on custom snap, ***snapSizes: List(double)*** to define points to snap when users release their finger.
    

https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/0302aaff-280b-4e25-80d3-38adf91f0bec


2. **ListWheelScrollView**
  - Use for fancy scrolling
  - ***useMagnifier & magnification***: for zoomed-in rate of the magnifier


https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/27f37cdf-b12f-4786-b6b0-899196beea44



## [Day 002](https://github.com/TaiTrien/100-days-of-flutter/tree/main/day002): Fancy scrolling with [Slivers](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html) & scrolling performance
- ***SingleChildScrollView*** is 1 widget, so wrapping another widget with it will cause redundant rebuilds a whole widget tree when scrolling. However, if you have a relatively simple layout and performance isn't a major concern, SingleChildScrollView maybe be more suitable. 
- ***ListView*** => render a whole list, it doesn't implement lazy loading for UIs.
- ***ListView.builder*** => optimize performance better, because of lazy loading UIs (build & render only can-see items). But there is an issue with ListView.builder, it's just able to use for item with the same type.
### How about case that we need ListView in ListView ? 
- Set ***shrinkWrap: true*** & ***physics: const NeverScrollableScrollPhysics()*** for children list view ? => it will back to ListView mechanism => not good for performance
- Solution: Use Slivers with CustomScrollView.


https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/665f6a4b-85c5-4e32-8cc9-5eb8e28a00e4



