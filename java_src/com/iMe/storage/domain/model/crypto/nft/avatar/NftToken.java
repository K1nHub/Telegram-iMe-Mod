package com.iMe.storage.domain.model.crypto.nft.avatar;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftToken.kt */
/* loaded from: classes3.dex */
public final class NftToken {
    private final NftCollection collection;
    private final String description;

    /* renamed from: id */
    private final long f330id;
    private final String image;
    private final String meta;
    private final String owner;
    private final String title;
    private final String tokenId;

    public final long component1() {
        return this.f330id;
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

    public final NftCollection component8() {
        return this.collection;
    }

    public final NftToken copy(long j, String tokenId, String owner, String image, String meta, String title, String description, NftCollection collection) {
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(meta, "meta");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(collection, "collection");
        return new NftToken(j, tokenId, owner, image, meta, title, description, collection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftToken) {
            NftToken nftToken = (NftToken) obj;
            return this.f330id == nftToken.f330id && Intrinsics.areEqual(this.tokenId, nftToken.tokenId) && Intrinsics.areEqual(this.owner, nftToken.owner) && Intrinsics.areEqual(this.image, nftToken.image) && Intrinsics.areEqual(this.meta, nftToken.meta) && Intrinsics.areEqual(this.title, nftToken.title) && Intrinsics.areEqual(this.description, nftToken.description) && Intrinsics.areEqual(this.collection, nftToken.collection);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f330id) * 31) + this.tokenId.hashCode()) * 31) + this.owner.hashCode()) * 31) + this.image.hashCode()) * 31) + this.meta.hashCode()) * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + this.collection.hashCode();
    }

    public String toString() {
        return "NftToken(id=" + this.f330id + ", tokenId=" + this.tokenId + ", owner=" + this.owner + ", image=" + this.image + ", meta=" + this.meta + ", title=" + this.title + ", description=" + this.description + ", collection=" + this.collection + ')';
    }

    public NftToken(long j, String tokenId, String owner, String image, String meta, String title, String description, NftCollection collection) {
        Intrinsics.checkNotNullParameter(tokenId, "tokenId");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(meta, "meta");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.f330id = j;
        this.tokenId = tokenId;
        this.owner = owner;
        this.image = image;
        this.meta = meta;
        this.title = title;
        this.description = description;
        this.collection = collection;
    }

    public final long getId() {
        return this.f330id;
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

    public final NftCollection getCollection() {
        return this.collection;
    }
}
