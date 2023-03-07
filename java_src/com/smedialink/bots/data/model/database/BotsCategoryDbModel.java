package com.smedialink.bots.data.model.database;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotsCategoryDbModel.kt */
/* loaded from: classes3.dex */
public final class BotsCategoryDbModel {

    /* renamed from: id */
    private final String f248id;
    private final Map<String, String> locales;
    private final int priority;
    private final List<String> tags;
    private final String title;

    public static /* synthetic */ BotsCategoryDbModel copy$default(BotsCategoryDbModel botsCategoryDbModel, String str, String str2, int i, List list, Map map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = botsCategoryDbModel.f248id;
        }
        if ((i2 & 2) != 0) {
            str2 = botsCategoryDbModel.title;
        }
        String str3 = str2;
        if ((i2 & 4) != 0) {
            i = botsCategoryDbModel.priority;
        }
        int i3 = i;
        List<String> list2 = list;
        if ((i2 & 8) != 0) {
            list2 = botsCategoryDbModel.tags;
        }
        List list3 = list2;
        Map<String, String> map2 = map;
        if ((i2 & 16) != 0) {
            map2 = botsCategoryDbModel.locales;
        }
        return botsCategoryDbModel.copy(str, str3, i3, list3, map2);
    }

    public final String component1() {
        return this.f248id;
    }

    public final String component2() {
        return this.title;
    }

    public final int component3() {
        return this.priority;
    }

    public final List<String> component4() {
        return this.tags;
    }

    public final Map<String, String> component5() {
        return this.locales;
    }

    public final BotsCategoryDbModel copy(String id, String title, int i, List<String> tags, Map<String, String> locales) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(locales, "locales");
        return new BotsCategoryDbModel(id, title, i, tags, locales);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BotsCategoryDbModel) {
            BotsCategoryDbModel botsCategoryDbModel = (BotsCategoryDbModel) obj;
            return Intrinsics.areEqual(this.f248id, botsCategoryDbModel.f248id) && Intrinsics.areEqual(this.title, botsCategoryDbModel.title) && this.priority == botsCategoryDbModel.priority && Intrinsics.areEqual(this.tags, botsCategoryDbModel.tags) && Intrinsics.areEqual(this.locales, botsCategoryDbModel.locales);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f248id.hashCode() * 31) + this.title.hashCode()) * 31) + this.priority) * 31) + this.tags.hashCode()) * 31) + this.locales.hashCode();
    }

    public String toString() {
        return "BotsCategoryDbModel(id=" + this.f248id + ", title=" + this.title + ", priority=" + this.priority + ", tags=" + this.tags + ", locales=" + this.locales + ')';
    }

    public BotsCategoryDbModel(String id, String title, int i, List<String> tags, Map<String, String> locales) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(locales, "locales");
        this.f248id = id;
        this.title = title;
        this.priority = i;
        this.tags = tags;
        this.locales = locales;
    }

    public final String getId() {
        return this.f248id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final Map<String, String> getLocales() {
        return this.locales;
    }
}
