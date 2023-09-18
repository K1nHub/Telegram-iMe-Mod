package com.iMe.bots.data.model.database;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RecentDbModel.kt */
/* loaded from: classes4.dex */
public final class RecentDbModel {
    private final String botId;
    private final int counter;
    private final int position;
    private final String tag;

    public static /* synthetic */ RecentDbModel copy$default(RecentDbModel recentDbModel, String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = recentDbModel.botId;
        }
        if ((i3 & 2) != 0) {
            str2 = recentDbModel.tag;
        }
        if ((i3 & 4) != 0) {
            i = recentDbModel.position;
        }
        if ((i3 & 8) != 0) {
            i2 = recentDbModel.counter;
        }
        return recentDbModel.copy(str, str2, i, i2);
    }

    public final String component1() {
        return this.botId;
    }

    public final String component2() {
        return this.tag;
    }

    public final int component3() {
        return this.position;
    }

    public final int component4() {
        return this.counter;
    }

    public final RecentDbModel copy(String botId, String tag, int i, int i2) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        return new RecentDbModel(botId, tag, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RecentDbModel) {
            RecentDbModel recentDbModel = (RecentDbModel) obj;
            return Intrinsics.areEqual(this.botId, recentDbModel.botId) && Intrinsics.areEqual(this.tag, recentDbModel.tag) && this.position == recentDbModel.position && this.counter == recentDbModel.counter;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.botId.hashCode() * 31) + this.tag.hashCode()) * 31) + this.position) * 31) + this.counter;
    }

    public String toString() {
        return "RecentDbModel(botId=" + this.botId + ", tag=" + this.tag + ", position=" + this.position + ", counter=" + this.counter + ')';
    }

    public RecentDbModel(String botId, String tag, int i, int i2) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.botId = botId;
        this.tag = tag;
        this.position = i;
        this.counter = i2;
    }

    public final String getBotId() {
        return this.botId;
    }

    public final String getTag() {
        return this.tag;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int getCounter() {
        return this.counter;
    }
}
