package com.iMe.storage.data.network.model.response.crypto.nft;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftCollectionResponse.kt */
/* loaded from: classes3.dex */
public final class NftCollectionResponse {
    private final String address;

    /* renamed from: id */
    private final String f326id;
    private final String image;
    private final String name;
    private final String network;
    private final int size;
    private final String symbol;
    private final Integer tokensOwned;
    private final String url;

    public final String component1() {
        return this.f326id;
    }

    public final String component2() {
        return this.address;
    }

    public final String component3() {
        return this.network;
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
        return this.url;
    }

    public final String component8() {
        return this.image;
    }

    public final Integer component9() {
        return this.tokensOwned;
    }

    public final NftCollectionResponse copy(String id, String address, String network, String name, String symbol, int i, String url, String image, Integer num) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(image, "image");
        return new NftCollectionResponse(id, address, network, name, symbol, i, url, image, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftCollectionResponse) {
            NftCollectionResponse nftCollectionResponse = (NftCollectionResponse) obj;
            return Intrinsics.areEqual(this.f326id, nftCollectionResponse.f326id) && Intrinsics.areEqual(this.address, nftCollectionResponse.address) && Intrinsics.areEqual(this.network, nftCollectionResponse.network) && Intrinsics.areEqual(this.name, nftCollectionResponse.name) && Intrinsics.areEqual(this.symbol, nftCollectionResponse.symbol) && this.size == nftCollectionResponse.size && Intrinsics.areEqual(this.url, nftCollectionResponse.url) && Intrinsics.areEqual(this.image, nftCollectionResponse.image) && Intrinsics.areEqual(this.tokensOwned, nftCollectionResponse.tokensOwned);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((this.f326id.hashCode() * 31) + this.address.hashCode()) * 31) + this.network.hashCode()) * 31) + this.name.hashCode()) * 31) + this.symbol.hashCode()) * 31) + this.size) * 31) + this.url.hashCode()) * 31) + this.image.hashCode()) * 31;
        Integer num = this.tokensOwned;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "NftCollectionResponse(id=" + this.f326id + ", address=" + this.address + ", network=" + this.network + ", name=" + this.name + ", symbol=" + this.symbol + ", size=" + this.size + ", url=" + this.url + ", image=" + this.image + ", tokensOwned=" + this.tokensOwned + ')';
    }

    public NftCollectionResponse(String id, String address, String network, String name, String symbol, int i, String url, String image, Integer num) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(image, "image");
        this.f326id = id;
        this.address = address;
        this.network = network;
        this.name = name;
        this.symbol = symbol;
        this.size = i;
        this.url = url;
        this.image = image;
        this.tokensOwned = num;
    }

    public /* synthetic */ NftCollectionResponse(String str, String str2, String str3, String str4, String str5, int i, String str6, String str7, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, i, str6, str7, (i2 & 256) != 0 ? null : num);
    }

    public final String getId() {
        return this.f326id;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetwork() {
        return this.network;
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

    public final String getUrl() {
        return this.url;
    }

    public final String getImage() {
        return this.image;
    }

    public final Integer getTokensOwned() {
        return this.tokensOwned;
    }
}
