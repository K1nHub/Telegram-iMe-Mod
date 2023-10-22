package com.iMe.storage.domain.model.crypto.nft;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftCollection.kt */
/* loaded from: classes3.dex */
public final class NftCollection {
    private final String address;
    private final String contractUrl;

    /* renamed from: id */
    private final String f351id;
    private final String imageUrl;
    private final String name;
    private final String networkId;
    private final int size;
    private final String symbol;
    private final int tokensOwned;

    public final String component1() {
        return this.f351id;
    }

    public final String component2() {
        return this.address;
    }

    public final String component3() {
        return this.networkId;
    }

    public final String component4() {
        return this.name;
    }

    public final String component5() {
        return this.symbol;
    }

    public final int component6() {
        return this.size;
    }

    public final String component7() {
        return this.contractUrl;
    }

    public final String component8() {
        return this.imageUrl;
    }

    public final int component9() {
        return this.tokensOwned;
    }

    public final NftCollection copy(String id, String address, String networkId, String name, String symbol, int i, String contractUrl, String imageUrl, int i2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(contractUrl, "contractUrl");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        return new NftCollection(id, address, networkId, name, symbol, i, contractUrl, imageUrl, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftCollection) {
            NftCollection nftCollection = (NftCollection) obj;
            return Intrinsics.areEqual(this.f351id, nftCollection.f351id) && Intrinsics.areEqual(this.address, nftCollection.address) && Intrinsics.areEqual(this.networkId, nftCollection.networkId) && Intrinsics.areEqual(this.name, nftCollection.name) && Intrinsics.areEqual(this.symbol, nftCollection.symbol) && this.size == nftCollection.size && Intrinsics.areEqual(this.contractUrl, nftCollection.contractUrl) && Intrinsics.areEqual(this.imageUrl, nftCollection.imageUrl) && this.tokensOwned == nftCollection.tokensOwned;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((this.f351id.hashCode() * 31) + this.address.hashCode()) * 31) + this.networkId.hashCode()) * 31) + this.name.hashCode()) * 31) + this.symbol.hashCode()) * 31) + this.size) * 31) + this.contractUrl.hashCode()) * 31) + this.imageUrl.hashCode()) * 31) + this.tokensOwned;
    }

    public String toString() {
        return "NftCollection(id=" + this.f351id + ", address=" + this.address + ", networkId=" + this.networkId + ", name=" + this.name + ", symbol=" + this.symbol + ", size=" + this.size + ", contractUrl=" + this.contractUrl + ", imageUrl=" + this.imageUrl + ", tokensOwned=" + this.tokensOwned + ')';
    }

    public NftCollection(String id, String address, String networkId, String name, String symbol, int i, String contractUrl, String imageUrl, int i2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(contractUrl, "contractUrl");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        this.f351id = id;
        this.address = address;
        this.networkId = networkId;
        this.name = name;
        this.symbol = symbol;
        this.size = i;
        this.contractUrl = contractUrl;
        this.imageUrl = imageUrl;
        this.tokensOwned = i2;
    }

    public final String getId() {
        return this.f351id;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final int getSize() {
        return this.size;
    }

    public final String getContractUrl() {
        return this.contractUrl;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final int getTokensOwned() {
        return this.tokensOwned;
    }
}
