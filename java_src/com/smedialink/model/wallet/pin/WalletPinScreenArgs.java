package com.smedialink.model.wallet.pin;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletPinScreenArgs.kt */
/* loaded from: classes3.dex */
public final class WalletPinScreenArgs implements Parcelable {
    public static final Parcelable.Creator<WalletPinScreenArgs> CREATOR = new Creator();
    private final String guid;
    private final String password;
    private final String seed;

    /* compiled from: WalletPinScreenArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<WalletPinScreenArgs> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final WalletPinScreenArgs createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new WalletPinScreenArgs(parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final WalletPinScreenArgs[] newArray(int i) {
            return new WalletPinScreenArgs[i];
        }
    }

    public static /* synthetic */ WalletPinScreenArgs copy$default(WalletPinScreenArgs walletPinScreenArgs, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = walletPinScreenArgs.password;
        }
        if ((i & 2) != 0) {
            str2 = walletPinScreenArgs.guid;
        }
        if ((i & 4) != 0) {
            str3 = walletPinScreenArgs.seed;
        }
        return walletPinScreenArgs.copy(str, str2, str3);
    }

    public final String component1() {
        return this.password;
    }

    public final String component2() {
        return this.guid;
    }

    public final String component3() {
        return this.seed;
    }

    public final WalletPinScreenArgs copy(String password, String guid, String seed) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        return new WalletPinScreenArgs(password, guid, seed);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletPinScreenArgs) {
            WalletPinScreenArgs walletPinScreenArgs = (WalletPinScreenArgs) obj;
            return Intrinsics.areEqual(this.password, walletPinScreenArgs.password) && Intrinsics.areEqual(this.guid, walletPinScreenArgs.guid) && Intrinsics.areEqual(this.seed, walletPinScreenArgs.seed);
        }
        return false;
    }

    public int hashCode() {
        return (((this.password.hashCode() * 31) + this.guid.hashCode()) * 31) + this.seed.hashCode();
    }

    public String toString() {
        return "WalletPinScreenArgs(password=" + this.password + ", guid=" + this.guid + ", seed=" + this.seed + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.password);
        out.writeString(this.guid);
        out.writeString(this.seed);
    }

    public WalletPinScreenArgs(String password, String guid, String seed) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        this.password = password;
        this.guid = guid;
        this.seed = seed;
    }

    public /* synthetic */ WalletPinScreenArgs(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getGuid() {
        return this.guid;
    }

    public final String getSeed() {
        return this.seed;
    }

    public WalletPinScreenArgs() {
        this("", "", "");
    }
}
