package com.iMe.bots.domain.model;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SmartTag.kt */
/* loaded from: classes3.dex */
public final class SmartTag {
    private final boolean hidden;

    /* renamed from: id */
    private final String f337id;
    private final String title;

    public static /* synthetic */ SmartTag copy$default(SmartTag smartTag, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = smartTag.f337id;
        }
        if ((i & 2) != 0) {
            str2 = smartTag.title;
        }
        if ((i & 4) != 0) {
            z = smartTag.hidden;
        }
        return smartTag.copy(str, str2, z);
    }

    public final String component1() {
        return this.f337id;
    }

    public final String component2() {
        return this.title;
    }

    public final boolean component3() {
        return this.hidden;
    }

    public final SmartTag copy(String id, String title, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        return new SmartTag(id, title, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SmartTag) {
            SmartTag smartTag = (SmartTag) obj;
            return Intrinsics.areEqual(this.f337id, smartTag.f337id) && Intrinsics.areEqual(this.title, smartTag.title) && this.hidden == smartTag.hidden;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.f337id.hashCode() * 31) + this.title.hashCode()) * 31;
        boolean z = this.hidden;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SmartTag(id=" + this.f337id + ", title=" + this.title + ", hidden=" + this.hidden + ')';
    }

    public SmartTag(String id, String title, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f337id = id;
        this.title = title;
        this.hidden = z;
    }

    public final String getId() {
        return this.f337id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean getHidden() {
        return this.hidden;
    }
}
