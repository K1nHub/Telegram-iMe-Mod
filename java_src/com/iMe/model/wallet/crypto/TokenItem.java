package com.iMe.model.wallet.crypto;

import android.os.Parcel;
import android.os.Parcelable;
import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenItem.kt */
/* loaded from: classes3.dex */
public final class TokenItem extends NoChildNode implements Parcelable {
    public static final Parcelable.Creator<TokenItem> CREATOR = new Creator();
    private final String address;
    private final String avatarUrl;
    private final int decimals;
    private final boolean isCoin;
    private final String name;
    private final String networkId;
    private final String ticker;
    private final String website;

    /* compiled from: TokenItem.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<TokenItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TokenItem createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new TokenItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TokenItem[] newArray(int i) {
            return new TokenItem[i];
        }
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.networkId;
    }

    public final String component3() {
        return this.avatarUrl;
    }

    public final int component4() {
        return this.decimals;
    }

    public final String component5() {
        return this.ticker;
    }

    public final boolean component6() {
        return this.isCoin;
    }

    public final String component7() {
        return this.name;
    }

    public final String component8() {
        return this.website;
    }

    public final TokenItem copy(String address, String networkId, String avatarUrl, int i, String ticker, boolean z, String name, String website) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(website, "website");
        return new TokenItem(address, networkId, avatarUrl, i, ticker, z, name, website);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenItem) {
            TokenItem tokenItem = (TokenItem) obj;
            return Intrinsics.areEqual(this.address, tokenItem.address) && Intrinsics.areEqual(this.networkId, tokenItem.networkId) && Intrinsics.areEqual(this.avatarUrl, tokenItem.avatarUrl) && this.decimals == tokenItem.decimals && Intrinsics.areEqual(this.ticker, tokenItem.ticker) && this.isCoin == tokenItem.isCoin && Intrinsics.areEqual(this.name, tokenItem.name) && Intrinsics.areEqual(this.website, tokenItem.website);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.address.hashCode() * 31) + this.networkId.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.decimals) * 31) + this.ticker.hashCode()) * 31;
        boolean z = this.isCoin;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((hashCode + i) * 31) + this.name.hashCode()) * 31) + this.website.hashCode();
    }

    public String toString() {
        return "TokenItem(address=" + this.address + ", networkId=" + this.networkId + ", avatarUrl=" + this.avatarUrl + ", decimals=" + this.decimals + ", ticker=" + this.ticker + ", isCoin=" + this.isCoin + ", name=" + this.name + ", website=" + this.website + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.address);
        out.writeString(this.networkId);
        out.writeString(this.avatarUrl);
        out.writeInt(this.decimals);
        out.writeString(this.ticker);
        out.writeInt(this.isCoin ? 1 : 0);
        out.writeString(this.name);
        out.writeString(this.website);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getDecimals() {
        return this.decimals;
    }

    public final String getTicker() {
        return this.ticker;
    }

    public final boolean isCoin() {
        return this.isCoin;
    }

    public final String getName() {
        return this.name;
    }

    public final String getWebsite() {
        return this.website;
    }

    public TokenItem(String address, String networkId, String avatarUrl, int i, String ticker, boolean z, String name, String website) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(website, "website");
        this.address = address;
        this.networkId = networkId;
        this.avatarUrl = avatarUrl;
        this.decimals = i;
        this.ticker = ticker;
        this.isCoin = z;
        this.name = name;
        this.website = website;
    }
}
