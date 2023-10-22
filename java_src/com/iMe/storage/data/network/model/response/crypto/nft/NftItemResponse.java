package com.iMe.storage.data.network.model.response.crypto.nft;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftItemResponse.kt */
/* loaded from: classes3.dex */
public final class NftItemResponse {
    private final String address;
    private final NftCollectionResponse collection;
    private final String collectionId;

    /* renamed from: id */
    private final String f327id;
    private final NftItemMetadataResponse metadata;
    private final String owner;
    private final String tokenId;
    private final String tokenURI;

    public final String component1() {
        return this.f327id;
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
        return this.owner;
    }

    public final String component6() {
        return this.address;
    }

    public final NftItemMetadataResponse component7() {
        return this.metadata;
    }

    public final NftCollectionResponse component8() {
        return this.collection;
    }

    public final NftItemResponse copy(String id, String collectionId, String tokenId, String tokenURI, String owner, String address, NftItemMetadataResponse metadata, NftCollectionResponse collection) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(collectionId, "collectionId");
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(tokenURI, "tokenURI");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(collection, "collection");
        return new NftItemResponse(id, collectionId, tokenId, tokenURI, owner, address, metadata, collection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftItemResponse) {
            NftItemResponse nftItemResponse = (NftItemResponse) obj;
            return Intrinsics.areEqual(this.f327id, nftItemResponse.f327id) && Intrinsics.areEqual(this.collectionId, nftItemResponse.collectionId) && Intrinsics.areEqual(this.tokenId, nftItemResponse.tokenId) && Intrinsics.areEqual(this.tokenURI, nftItemResponse.tokenURI) && Intrinsics.areEqual(this.owner, nftItemResponse.owner) && Intrinsics.areEqual(this.address, nftItemResponse.address) && Intrinsics.areEqual(this.metadata, nftItemResponse.metadata) && Intrinsics.areEqual(this.collection, nftItemResponse.collection);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((this.f327id.hashCode() * 31) + this.collectionId.hashCode()) * 31) + this.tokenId.hashCode()) * 31) + this.tokenURI.hashCode()) * 31) + this.owner.hashCode()) * 31) + this.address.hashCode()) * 31) + this.metadata.hashCode()) * 31) + this.collection.hashCode();
    }

    public String toString() {
        return "NftItemResponse(id=" + this.f327id + ", collectionId=" + this.collectionId + ", tokenId=" + this.tokenId + ", tokenURI=" + this.tokenURI + ", owner=" + this.owner + ", address=" + this.address + ", metadata=" + this.metadata + ", collection=" + this.collection + ')';
    }

    public NftItemResponse(String id, String collectionId, String tokenId, String tokenURI, String owner, String address, NftItemMetadataResponse metadata, NftCollectionResponse collection) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(collectionId, "collectionId");
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(tokenURI, "tokenURI");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.f327id = id;
        this.collectionId = collectionId;
        this.tokenId = tokenId;
        this.tokenURI = tokenURI;
        this.owner = owner;
        this.address = address;
        this.metadata = metadata;
        this.collection = collection;
    }

    public final String getId() {
        return this.f327id;
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

    public final String getOwner() {
        return this.owner;
    }

    public final String getAddress() {
        return this.address;
    }

    public final NftItemMetadataResponse getMetadata() {
        return this.metadata;
    }

    public final NftCollectionResponse getCollection() {
        return this.collection;
    }
}
