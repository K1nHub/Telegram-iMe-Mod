package com.iMe.storage.domain.model.crypto.nft;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftToken.kt */
/* loaded from: classes3.dex */
public final class NftToken {
    private final NftCollection collection;
    private final String collectionId;
    private final String contractAddress;
    private final String description;

    /* renamed from: id */
    private final String f352id;
    private final String imageUrl;
    private final String name;
    private final String ownerAddress;
    private final String siteUrl;
    private final String tokenId;
    private final String tokenURI;

    public final String component1() {
        return this.f352id;
    }

    public final String component10() {
        return this.siteUrl;
    }

    public final NftCollection component11() {
        return this.collection;
    }

    public final String component2() {
        return this.collectionId;
    }

    public final String component3() {
        return this.tokenId;
    }

    public final String component4() {
        return this.tokenURI;
    }

    public final String component5() {
        return this.ownerAddress;
    }

    public final String component6() {
        return this.contractAddress;
    }

    public final String component7() {
        return this.name;
    }

    public final String component8() {
        return this.description;
    }

    public final String component9() {
        return this.imageUrl;
    }

    public final NftToken copy(String id, String collectionId, String tokenId, String tokenURI, String ownerAddress, String contractAddress, String name, String description, String imageUrl, String siteUrl, NftCollection collection) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(collectionId, "collectionId");
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(tokenURI, "tokenURI");
        Intrinsics.checkNotNullParameter(ownerAddress, "ownerAddress");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(siteUrl, "siteUrl");
        Intrinsics.checkNotNullParameter(collection, "collection");
        return new NftToken(id, collectionId, tokenId, tokenURI, ownerAddress, contractAddress, name, description, imageUrl, siteUrl, collection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftToken) {
            NftToken nftToken = (NftToken) obj;
            return Intrinsics.areEqual(this.f352id, nftToken.f352id) && Intrinsics.areEqual(this.collectionId, nftToken.collectionId) && Intrinsics.areEqual(this.tokenId, nftToken.tokenId) && Intrinsics.areEqual(this.tokenURI, nftToken.tokenURI) && Intrinsics.areEqual(this.ownerAddress, nftToken.ownerAddress) && Intrinsics.areEqual(this.contractAddress, nftToken.contractAddress) && Intrinsics.areEqual(this.name, nftToken.name) && Intrinsics.areEqual(this.description, nftToken.description) && Intrinsics.areEqual(this.imageUrl, nftToken.imageUrl) && Intrinsics.areEqual(this.siteUrl, nftToken.siteUrl) && Intrinsics.areEqual(this.collection, nftToken.collection);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((this.f352id.hashCode() * 31) + this.collectionId.hashCode()) * 31) + this.tokenId.hashCode()) * 31) + this.tokenURI.hashCode()) * 31) + this.ownerAddress.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + this.imageUrl.hashCode()) * 31) + this.siteUrl.hashCode()) * 31) + this.collection.hashCode();
    }

    public String toString() {
        return "NftToken(id=" + this.f352id + ", collectionId=" + this.collectionId + ", tokenId=" + this.tokenId + ", tokenURI=" + this.tokenURI + ", ownerAddress=" + this.ownerAddress + ", contractAddress=" + this.contractAddress + ", name=" + this.name + ", description=" + this.description + ", imageUrl=" + this.imageUrl + ", siteUrl=" + this.siteUrl + ", collection=" + this.collection + ')';
    }

    public NftToken(String id, String collectionId, String tokenId, String tokenURI, String ownerAddress, String contractAddress, String name, String description, String imageUrl, String siteUrl, NftCollection collection) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(collectionId, "collectionId");
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(tokenURI, "tokenURI");
        Intrinsics.checkNotNullParameter(ownerAddress, "ownerAddress");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(siteUrl, "siteUrl");
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.f352id = id;
        this.collectionId = collectionId;
        this.tokenId = tokenId;
        this.tokenURI = tokenURI;
        this.ownerAddress = ownerAddress;
        this.contractAddress = contractAddress;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
        this.siteUrl = siteUrl;
        this.collection = collection;
    }

    public final String getId() {
        return this.f352id;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final String getTokenId() {
        return this.tokenId;
    }

    public final String getTokenURI() {
        return this.tokenURI;
    }

    public final String getOwnerAddress() {
        return this.ownerAddress;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getSiteUrl() {
        return this.siteUrl;
    }

    public final NftCollection getCollection() {
        return this.collection;
    }
}
