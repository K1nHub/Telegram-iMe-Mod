package com.smedialink.model.wallet.home.pay;

import android.os.Parcel;
import android.os.Parcelable;
import com.smedialink.model.wallet.select.SelectableToken;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayScreenArgs.kt */
/* loaded from: classes3.dex */
public final class BinancePayScreenArgs implements Parcelable {
    public static final Parcelable.Creator<BinancePayScreenArgs> CREATOR = new Creator();
    private final SelectableToken token;
    private final Long userId;

    /* compiled from: BinancePayScreenArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<BinancePayScreenArgs> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BinancePayScreenArgs createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new BinancePayScreenArgs((SelectableToken) parcel.readParcelable(BinancePayScreenArgs.class.getClassLoader()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BinancePayScreenArgs[] newArray(int i) {
            return new BinancePayScreenArgs[i];
        }
    }

    public BinancePayScreenArgs() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ BinancePayScreenArgs copy$default(BinancePayScreenArgs binancePayScreenArgs, SelectableToken selectableToken, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            selectableToken = binancePayScreenArgs.token;
        }
        if ((i & 2) != 0) {
            l = binancePayScreenArgs.userId;
        }
        return binancePayScreenArgs.copy(selectableToken, l);
    }

    public final SelectableToken component1() {
        return this.token;
    }

    public final Long component2() {
        return this.userId;
    }

    public final BinancePayScreenArgs copy(SelectableToken selectableToken, Long l) {
        return new BinancePayScreenArgs(selectableToken, l);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayScreenArgs) {
            BinancePayScreenArgs binancePayScreenArgs = (BinancePayScreenArgs) obj;
            return Intrinsics.areEqual(this.token, binancePayScreenArgs.token) && Intrinsics.areEqual(this.userId, binancePayScreenArgs.userId);
        }
        return false;
    }

    public int hashCode() {
        SelectableToken selectableToken = this.token;
        int hashCode = (selectableToken == null ? 0 : selectableToken.hashCode()) * 31;
        Long l = this.userId;
        return hashCode + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "BinancePayScreenArgs(token=" + this.token + ", userId=" + this.userId + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeParcelable(this.token, i);
        Long l = this.userId;
        if (l == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeLong(l.longValue());
    }

    public BinancePayScreenArgs(SelectableToken selectableToken, Long l) {
        this.token = selectableToken;
        this.userId = l;
    }

    public /* synthetic */ BinancePayScreenArgs(SelectableToken selectableToken, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : selectableToken, (i & 2) != 0 ? null : l);
    }

    public final SelectableToken getToken() {
        return this.token;
    }

    public final Long getUserId() {
        return this.userId;
    }
}
