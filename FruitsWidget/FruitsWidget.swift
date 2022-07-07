//
//  FruitsWidget.swift
//  FruitsWidget
//
//  Created by Erge Gevher Akova on 7.07.2022.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), fruit: lemon)
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        
        let entry = SimpleEntry(date: Date(), configuration: configuration, fruit: lemon)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
       
        let entry = SimpleEntry(date: Date(), configuration: configuration, fruit: lemon)
        entries.append(entry)

        let timeline = Timeline(entries: entries, policy: .never)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let fruit: Fruit
}

struct FruitsWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        CircularImageView(image: Image(entry.fruit.image)).padding()
    }
}

@main
struct FruitsWidget: Widget {
    let kind: String = "FruitsWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            FruitsWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct FruitsWidget_Previews: PreviewProvider {
    static var previews: some View {
        FruitsWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), fruit: lemon))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
