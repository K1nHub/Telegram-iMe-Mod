package com.iMe.model.wallet.home.nft;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftTokenItem.kt */
/* loaded from: classes4.dex */
public final class NftTokenItem extends NoChildNode {
    private final List<NftToken> collection;
    private final NftToken token;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NftTokenItem copy$default(NftTokenItem nftTokenItem, NftToken nftToken, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            nftToken = nftTokenItem.token;
        }
        if ((i & 2) != 0) {
            list = nftTokenItem.collection;
        }
        return nftTokenItem.copy(nftToken, list);
    }

    public final NftToken component1() {
        return this.token;
    }

    public final List<NftToken> component2() {
        return this.collection;
    }

    public final NftTokenItem copy(NftToken token, List<NftToken> collection) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(collection, "collection");
        return new NftTokenItem(token, collection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftTokenItem) {
            NftTokenItem nftTokenItem = (NftTokenItem) obj;
            return Intrinsics.areEqual(this.token, nftTokenItem.token) && Intrinsics.areEqual(this.collection, nftTokenItem.collection);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.collection.hashCode();
    }

    public String toString() {
        return "NftTokenItem(token=" + this.token + ", collection=" + this.collection + ')';
    }

    public final NftToken getToken() {
        return this.token;
    }

    public final List<NftToken> getCollection() {
        return this.collection;
    }

    public NftTokenItem(NftToken token, List<NftToken> collection) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.token = token;
        this.collection = collection;
    }
}
