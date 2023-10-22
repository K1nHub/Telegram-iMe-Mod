package com.iMe.model.wallet.transfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.iMe.model.wallet.crypto.TokenItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferScreenArgs.kt */
/* loaded from: classes3.dex */
public final class TransferScreenArgs implements Parcelable {
    public static final Parcelable.Creator<TransferScreenArgs> CREATOR = new Creator();
    private final String address;
    private final Long chatId;
    private final String networkId;
    private final TokenItem tokenItem;
    private final Long userId;

    /* compiled from: TransferScreenArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<TransferScreenArgs> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TransferScreenArgs createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new TransferScreenArgs(parcel.readInt() == 0 ? null : TokenItem.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TransferScreenArgs[] newArray(int i) {
            return new TransferScreenArgs[i];
        }
    }

    public TransferScreenArgs() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ TransferScreenArgs copy$default(TransferScreenArgs transferScreenArgs, TokenItem tokenItem, String str, Long l, Long l2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenItem = transferScreenArgs.tokenItem;
        }
        if ((i & 2) != 0) {
            str = transferScreenArgs.address;
        }
        String str3 = str;
        if ((i & 4) != 0) {
            l = transferScreenArgs.userId;
        }
        Long l3 = l;
        if ((i & 8) != 0) {
            l2 = transferScreenArgs.chatId;
        }
        Long l4 = l2;
        if ((i & 16) != 0) {
            str2 = transferScreenArgs.networkId;
        }
        return transferScreenArgs.copy(tokenItem, str3, l3, l4, str2);
    }

    public final TokenItem component1() {
        return this.tokenItem;
    }

    public final String component2() {
        return this.address;
    }

    public final Long component3() {
        return this.userId;
    }

    public final Long component4() {
        return this.chatId;
    }

    public final String component5() {
        return this.networkId;
    }

    public final TransferScreenArgs copy(TokenItem tokenItem, String address, Long l, Long l2, String str) {
        Intrinsics.checkNotNullParameter(address, "address");
        return new TransferScreenArgs(tokenItem, address, l, l2, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransferScreenArgs) {
            TransferScreenArgs transferScreenArgs = (TransferScreenArgs) obj;
            return Intrinsics.areEqual(this.tokenItem, transferScreenArgs.tokenItem) && Intrinsics.areEqual(this.address, transferScreenArgs.address) && Intrinsics.areEqual(this.userId, transferScreenArgs.userId) && Intrinsics.areEqual(this.chatId, transferScreenArgs.chatId) && Intrinsics.areEqual(this.networkId, transferScreenArgs.networkId);
        }
        return false;
    }

    public int hashCode() {
        TokenItem tokenItem = this.tokenItem;
        int hashCode = (((tokenItem == null ? 0 : tokenItem.hashCode()) * 31) + this.address.hashCode()) * 31;
        Long l = this.userId;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.chatId;
        int hashCode3 = (hashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.networkId;
        return hashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "TransferScreenArgs(tokenItem=" + this.tokenItem + ", address=" + this.address + ", userId=" + this.userId + ", chatId=" + this.chatId + ", networkId=" + this.networkId + ')';
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
        out.writeString(this.address);
        Long l = this.userId;
        if (l == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l.longValue());
        }
        Long l2 = this.chatId;
        if (l2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l2.longValue());
        }
        out.writeString(this.networkId);
    }

    public TransferScreenArgs(TokenItem tokenItem, String address, Long l, Long l2, String str) {
        Intrinsics.checkNotNullParameter(address, "address");
        this.tokenItem = tokenItem;
        this.address = address;
        this.userId = l;
        this.chatId = l2;
        this.networkId = str;
    }

    public /* synthetic */ TransferScreenArgs(TokenItem tokenItem, String str, Long l, Long l2, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tokenItem, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : str2);
    }

    public final TokenItem getTokenItem() {
        return this.tokenItem;
    }

    public final String getAddress() {
        return this.address;
    }

    public final Long getUserId() {
        return this.userId;
    }

    public final Long getChatId() {
        return this.chatId;
    }

    public final String getNetworkId() {
        return this.networkId;
    }
}
