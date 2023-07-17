package com.iMe.storage.data.network.model.response.crypto.nft.avatar;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftAvatarResponse.kt */
/* loaded from: classes3.dex */
public final class NftAvatarResponse {
    private final NftCollectionResponse collection;
    private final String description;

    /* renamed from: id */
    private final long f384id;
    private final String image;
    private final String meta;
    private final String owner;
    private final String title;
    private final String tokenId;

    public final long component1() {
        return this.f384id;
    }

    public final String component2() {
        return this.tokenId;
    }

    public final String component3() {
        return this.owner;
    }

    public final String component4() {
        return this.image;
    }

    public final String component5() {
        return this.meta;
    }

    public final String component6() {
        return this.title;
    }

    public final String component7() {
        return this.description;
    }

    public final NftCollectionResponse component8() {
        return this.collection;
    }

    public final NftAvatarResponse copy(long j, String tokenId, String owner, String image, String meta, String title, String description, NftCollectionResponse collection) {
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(meta, "meta");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(collection, "collection");
        return new NftAvatarResponse(j, tokenId, owner, image, meta, title, description, collection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftAvatarResponse) {
            NftAvatarResponse nftAvatarResponse = (NftAvatarResponse) obj;
            return this.f384id == nftAvatarResponse.f384id && Intrinsics.areEqual(this.tokenId, nftAvatarResponse.tokenId) && Intrinsics.areEqual(this.owner, nftAvatarResponse.owner) && Intrinsics.areEqual(this.image, nftAvatarResponse.image) && Intrinsics.areEqual(this.meta, nftAvatarResponse.meta) && Intrinsics.areEqual(this.title, nftAvatarResponse.title) && Intrinsics.areEqual(this.description, nftAvatarResponse.description) && Intrinsics.areEqual(this.collection, nftAvatarResponse.collection);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f384id) * 31) + this.tokenId.hashCode()) * 31) + this.owner.hashCode()) * 31) + this.image.hashCode()) * 31) + this.meta.hashCode()) * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + this.collection.hashCode();
    }

    public String toString() {
        return "NftAvatarResponse(id=" + this.f384id + ", tokenId=" + this.tokenId + ", owner=" + this.owner + ", image=" + this.image + ", meta=" + this.meta + ", title=" + this.title + ", description=" + this.description + ", collection=" + this.collection + ')';
    }

    public NftAvatarResponse(long j, String tokenId, String owner, String image, String meta, String title, String description, NftCollectionResponse collection) {
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(meta, "meta");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.f384id = j;
        this.tokenId = tokenId;
        this.owner = owner;
        this.image = image;
        this.meta = meta;
        this.title = title;
        this.description = description;
        this.collection = collection;
    }

    public final long getId() {
        return this.f384id;
    }

    public final String getTokenId() {
        return this.tokenId;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getMeta() {
        return this.meta;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final NftCollectionResponse getCollection() {
        return this.collection;
    }

    /* compiled from: NftAvatarResponse.kt */
    /* loaded from: classes3.dex */
    public static final class NftCollectionResponse {
        private final String contractAddress;

        /* renamed from: id */
        private final long f385id;
        private final String status;
        private final String title;
        private final String transactionHash;

        public NftCollectionResponse(long j, String title, String contractAddress, String transactionHash, String status) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
            Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
            Intrinsics.checkNotNullParameter(status, "status");
            this.f385id = j;
            this.title = title;
            this.contractAddress = contractAddress;
            this.transactionHash = transactionHash;
            this.status = status;
        }

        public final long getId() {
            return this.f385id;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        public final String getTransactionHash() {
            return this.transactionHash;
        }

        public final String getStatus() {
            return this.status;
        }
    }
}
