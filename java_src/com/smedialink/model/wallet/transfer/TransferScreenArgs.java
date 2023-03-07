package com.smedialink.model.wallet.transfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferScreenArgs.kt */
/* loaded from: classes3.dex */
public final class TransferScreenArgs implements Parcelable {
    public static final Parcelable.Creator<TransferScreenArgs> CREATOR = new Creator();
    private final String address;
    private final Long chatId;
    private final TokenCode code;
    private final NetworkType networkType;
    private final Long userId;

    /* compiled from: TransferScreenArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<TransferScreenArgs> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TransferScreenArgs createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new TransferScreenArgs(parcel.readInt() == 0 ? null : TokenCode.valueOf(parcel.readString()), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : NetworkType.valueOf(parcel.readString()));
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

    public static /* synthetic */ TransferScreenArgs copy$default(TransferScreenArgs transferScreenArgs, TokenCode tokenCode, String str, Long l, Long l2, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenCode = transferScreenArgs.code;
        }
        if ((i & 2) != 0) {
            str = transferScreenArgs.address;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            l = transferScreenArgs.userId;
        }
        Long l3 = l;
        if ((i & 8) != 0) {
            l2 = transferScreenArgs.chatId;
        }
        Long l4 = l2;
        if ((i & 16) != 0) {
            networkType = transferScreenArgs.networkType;
        }
        return transferScreenArgs.copy(tokenCode, str2, l3, l4, networkType);
    }

    public final TokenCode component1() {
        return this.code;
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

    public final NetworkType component5() {
        return this.networkType;
    }

    public final TransferScreenArgs copy(TokenCode tokenCode, String address, Long l, Long l2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(address, "address");
        return new TransferScreenArgs(tokenCode, address, l, l2, networkType);
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
            return this.code == transferScreenArgs.code && Intrinsics.areEqual(this.address, transferScreenArgs.address) && Intrinsics.areEqual(this.userId, transferScreenArgs.userId) && Intrinsics.areEqual(this.chatId, transferScreenArgs.chatId) && this.networkType == transferScreenArgs.networkType;
        }
        return false;
    }

    public int hashCode() {
        TokenCode tokenCode = this.code;
        int hashCode = (((tokenCode == null ? 0 : tokenCode.hashCode()) * 31) + this.address.hashCode()) * 31;
        Long l = this.userId;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.chatId;
        int hashCode3 = (hashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        NetworkType networkType = this.networkType;
        return hashCode3 + (networkType != null ? networkType.hashCode() : 0);
    }

    public String toString() {
        return "TransferScreenArgs(code=" + this.code + ", address=" + this.address + ", userId=" + this.userId + ", chatId=" + this.chatId + ", networkType=" + this.networkType + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        TokenCode tokenCode = this.code;
        if (tokenCode == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeString(tokenCode.name());
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
        NetworkType networkType = this.networkType;
        if (networkType == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeString(networkType.name());
    }

    public TransferScreenArgs(TokenCode tokenCode, String address, Long l, Long l2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(address, "address");
        this.code = tokenCode;
        this.address = address;
        this.userId = l;
        this.chatId = l2;
        this.networkType = networkType;
    }

    public /* synthetic */ TransferScreenArgs(TokenCode tokenCode, String str, Long l, Long l2, NetworkType networkType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tokenCode, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : networkType);
    }

    public final TokenCode getCode() {
        return this.code;
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

    public final NetworkType getNetworkType() {
        return this.networkType;
    }
}
