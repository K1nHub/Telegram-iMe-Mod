package com.iMe.model.twitter;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetsDateItem.kt */
/* loaded from: classes4.dex */
public final class TweetsDateItem extends NoChildNode {
    private final String date;

    public static /* synthetic */ TweetsDateItem copy$default(TweetsDateItem tweetsDateItem, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tweetsDateItem.date;
        }
        return tweetsDateItem.copy(str);
    }

    public final String component1() {
        return this.date;
    }

    public final TweetsDateItem copy(String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return new TweetsDateItem(date);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TweetsDateItem) && Intrinsics.areEqual(this.date, ((TweetsDateItem) obj).date);
    }

    public int hashCode() {
        return this.date.hashCode();
    }

    public String toString() {
        return "TweetsDateItem(date=" + this.date + ')';
    }

    public final String getDate() {
        return this.date;
    }

    public TweetsDateItem(String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        this.date = date;
    }
}
