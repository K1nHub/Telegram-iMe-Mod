package com.iMe.bots.data.model.database;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: HolidaysDbModel.kt */
/* loaded from: classes4.dex */
public final class HolidaysDbModel {
    private final String tags;
    private final long userId;

    public static /* synthetic */ HolidaysDbModel copy$default(HolidaysDbModel holidaysDbModel, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = holidaysDbModel.userId;
        }
        if ((i & 2) != 0) {
            str = holidaysDbModel.tags;
        }
        return holidaysDbModel.copy(j, str);
    }

    public final long component1() {
        return this.userId;
    }

    public final String component2() {
        return this.tags;
    }

    public final HolidaysDbModel copy(long j, String tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new HolidaysDbModel(j, tags);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HolidaysDbModel) {
            HolidaysDbModel holidaysDbModel = (HolidaysDbModel) obj;
            return this.userId == holidaysDbModel.userId && Intrinsics.areEqual(this.tags, holidaysDbModel.tags);
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m724m(this.userId) * 31) + this.tags.hashCode();
    }

    public String toString() {
        return "HolidaysDbModel(userId=" + this.userId + ", tags=" + this.tags + ')';
    }

    public HolidaysDbModel(long j, String tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.userId = j;
        this.tags = tags;
    }

    public final long getUserId() {
        return this.userId;
    }

    public final String getTags() {
        return this.tags;
    }
}
