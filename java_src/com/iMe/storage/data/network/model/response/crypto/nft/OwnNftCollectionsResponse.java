package com.iMe.storage.data.network.model.response.crypto.nft;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: OwnNftCollectionsResponse.kt */
/* loaded from: classes3.dex */
public final class OwnNftCollectionsResponse {
    private final List<NftCollectionResponse> collections;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OwnNftCollectionsResponse copy$default(OwnNftCollectionsResponse ownNftCollectionsResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = ownNftCollectionsResponse.collections;
        }
        return ownNftCollectionsResponse.copy(list);
    }

    public final List<NftCollectionResponse> component1() {
        return this.collections;
    }

    public final OwnNftCollectionsResponse copy(List<NftCollectionResponse> collections) {
        Intrinsics.checkNotNullParameter(collections, "collections");
        return new OwnNftCollectionsResponse(collections);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OwnNftCollectionsResponse) && Intrinsics.areEqual(this.collections, ((OwnNftCollectionsResponse) obj).collections);
    }

    public int hashCode() {
        return this.collections.hashCode();
    }

    public String toString() {
        return "OwnNftCollectionsResponse(collections=" + this.collections + ')';
    }

    public OwnNftCollectionsResponse(List<NftCollectionResponse> collections) {
        Intrinsics.checkNotNullParameter(collections, "collections");
        this.collections = collections;
    }

    public final List<NftCollectionResponse> getCollections() {
        return this.collections;
    }
}
