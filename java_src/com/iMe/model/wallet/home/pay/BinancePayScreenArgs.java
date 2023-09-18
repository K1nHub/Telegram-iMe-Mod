package com.iMe.model.wallet.home.pay;

import android.os.Parcel;
import android.os.Parcelable;
import com.iMe.model.wallet.crypto.TokenItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayScreenArgs.kt */
/* loaded from: classes4.dex */
public final class BinancePayScreenArgs implements Parcelable {
    public static final Parcelable.Creator<BinancePayScreenArgs> CREATOR = new Creator();
    private final TokenItem tokenItem;
    private final Long userId;

    /* compiled from: BinancePayScreenArgs.kt */
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<BinancePayScreenArgs> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BinancePayScreenArgs createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new BinancePayScreenArgs(parcel.readInt() == 0 ? null : TokenItem.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
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

    public static /* synthetic */ BinancePayScreenArgs copy$default(BinancePayScreenArgs binancePayScreenArgs, TokenItem tokenItem, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenItem = binancePayScreenArgs.tokenItem;
        }
        if ((i & 2) != 0) {
            l = binancePayScreenArgs.userId;
        }
        return binancePayScreenArgs.copy(tokenItem, l);
    }

    public final TokenItem component1() {
        return this.tokenItem;
    }

    public final Long component2() {
        return this.userId;
    }

    public final BinancePayScreenArgs copy(TokenItem tokenItem, Long l) {
        return new BinancePayScreenArgs(tokenItem, l);
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
            return Intrinsics.areEqual(this.tokenItem, binancePayScreenArgs.tokenItem) && Intrinsics.areEqual(this.userId, binancePayScreenArgs.userId);
        }
        return false;
    }

    public int hashCode() {
        TokenItem tokenItem = this.tokenItem;
        int hashCode = (tokenItem == null ? 0 : tokenItem.hashCode()) * 31;
        Long l = this.userId;
        return hashCode + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "BinancePayScreenArgs(tokenItem=" + this.tokenItem + ", userId=" + this.userId + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        TokenItem tokenItem = this.tokenItem;
        if (tokenItem == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            tokenItem.writeToParcel(out, i);
        }
        Long l = this.userId;
        if (l == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeLong(l.longValue());
    }

    public BinancePayScreenArgs(TokenItem tokenItem, Long l) {
        this.tokenItem = tokenItem;
        this.userId = l;
    }

    public /* synthetic */ BinancePayScreenArgs(TokenItem tokenItem, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tokenItem, (i & 2) != 0 ? null : l);
    }

    public final TokenItem getTokenItem() {
        return this.tokenItem;
    }

    public final Long getUserId() {
        return this.userId;
    }
}
