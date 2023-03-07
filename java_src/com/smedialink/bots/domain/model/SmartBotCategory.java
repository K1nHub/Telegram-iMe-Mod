package com.smedialink.bots.domain.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SmartBotCategory.kt */
/* loaded from: classes3.dex */
public final class SmartBotCategory {

    /* renamed from: id */
    private final String f253id;
    private final int priority;
    private final List<String> tags;
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SmartBotCategory copy$default(SmartBotCategory smartBotCategory, String str, String str2, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = smartBotCategory.f253id;
        }
        if ((i2 & 2) != 0) {
            str2 = smartBotCategory.title;
        }
        if ((i2 & 4) != 0) {
            i = smartBotCategory.priority;
        }
        if ((i2 & 8) != 0) {
            list = smartBotCategory.tags;
        }
        return smartBotCategory.copy(str, str2, i, list);
    }

    public final String component1() {
        return this.f253id;
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

    public final SmartBotCategory copy(String id, String title, int i, List<String> tags) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new SmartBotCategory(id, title, i, tags);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SmartBotCategory) {
            SmartBotCategory smartBotCategory = (SmartBotCategory) obj;
            return Intrinsics.areEqual(this.f253id, smartBotCategory.f253id) && Intrinsics.areEqual(this.title, smartBotCategory.title) && this.priority == smartBotCategory.priority && Intrinsics.areEqual(this.tags, smartBotCategory.tags);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f253id.hashCode() * 31) + this.title.hashCode()) * 31) + this.priority) * 31) + this.tags.hashCode();
    }

    public String toString() {
        return "SmartBotCategory(id=" + this.f253id + ", title=" + this.title + ", priority=" + this.priority + ", tags=" + this.tags + ')';
    }

    public SmartBotCategory(String id, String title, int i, List<String> tags) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.f253id = id;
        this.title = title;
        this.priority = i;
        this.tags = tags;
    }

    public final String getId() {
        return this.f253id;
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
}
