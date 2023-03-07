package com.smedialink.bots.data.model.database;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TagDbModel.kt */
/* loaded from: classes3.dex */
public final class TagDbModel {
    private final int hidden;

    /* renamed from: id */
    private final String f250id;
    private final Map<String, String> locales;
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TagDbModel copy$default(TagDbModel tagDbModel, String str, String str2, int i, Map map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tagDbModel.f250id;
        }
        if ((i2 & 2) != 0) {
            str2 = tagDbModel.title;
        }
        if ((i2 & 4) != 0) {
            i = tagDbModel.hidden;
        }
        if ((i2 & 8) != 0) {
            map = tagDbModel.locales;
        }
        return tagDbModel.copy(str, str2, i, map);
    }

    public final String component1() {
        return this.f250id;
    }

    public final String component2() {
        return this.title;
    }

    public final int component3() {
        return this.hidden;
    }

    public final Map<String, String> component4() {
        return this.locales;
    }

    public final TagDbModel copy(String id, String title, int i, Map<String, String> locales) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(locales, "locales");
        return new TagDbModel(id, title, i, locales);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TagDbModel) {
            TagDbModel tagDbModel = (TagDbModel) obj;
            return Intrinsics.areEqual(this.f250id, tagDbModel.f250id) && Intrinsics.areEqual(this.title, tagDbModel.title) && this.hidden == tagDbModel.hidden && Intrinsics.areEqual(this.locales, tagDbModel.locales);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f250id.hashCode() * 31) + this.title.hashCode()) * 31) + this.hidden) * 31) + this.locales.hashCode();
    }

    public String toString() {
        return "TagDbModel(id=" + this.f250id + ", title=" + this.title + ", hidden=" + this.hidden + ", locales=" + this.locales + ')';
    }

    public TagDbModel(String id, String title, int i, Map<String, String> locales) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(locales, "locales");
        this.f250id = id;
        this.title = title;
        this.hidden = i;
        this.locales = locales;
    }

    public /* synthetic */ TagDbModel(String str, String str2, int i, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? 0 : i, map);
    }

    public final String getId() {
        return this.f250id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getHidden() {
        return this.hidden;
    }

    public final Map<String, String> getLocales() {
        return this.locales;
    }
}
