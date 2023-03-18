package com.smedialink.model.wallet.home.nft;

import com.chad.library.adapter.base.entity.node.BaseExpandNode;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.storage.domain.model.crypto.nft.avatar.NftCollection;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftCollectionItem.kt */
/* loaded from: classes3.dex */
public final class NftCollectionItem extends BaseExpandNode {
    private final List<BaseNode> childNode;
    private final NftCollection collection;
    private final List<NftTokenItem> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NftCollectionItem copy$default(NftCollectionItem nftCollectionItem, NftCollection nftCollection, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            nftCollection = nftCollectionItem.collection;
        }
        if ((i & 2) != 0) {
            list = nftCollectionItem.tokens;
        }
        return nftCollectionItem.copy(nftCollection, list);
    }

    public final NftCollection component1() {
        return this.collection;
    }

    public final List<NftTokenItem> component2() {
        return this.tokens;
    }

    public final NftCollectionItem copy(NftCollection collection, List<NftTokenItem> tokens) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        return new NftCollectionItem(collection, tokens);
    }

    public String toString() {
        return "NftCollectionItem(collection=" + this.collection + ", tokens=" + this.tokens + ')';
    }

    public final NftCollection getCollection() {
        return this.collection;
    }

    public final List<NftTokenItem> getTokens() {
        return this.tokens;
    }

    public NftCollectionItem(NftCollection collection, List<NftTokenItem> tokens) {
        List<BaseNode> mutableList;
        Intrinsics.checkNotNullParameter(collection, "collection");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        this.collection = collection;
        this.tokens = tokens;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) tokens);
        this.childNode = mutableList;
    }

    @Override // com.chad.library.adapter.base.entity.node.BaseNode
    public List<BaseNode> getChildNode() {
        return this.childNode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(NftCollectionItem.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.smedialink.model.wallet.home.nft.NftCollectionItem");
            NftCollectionItem nftCollectionItem = (NftCollectionItem) obj;
            return Intrinsics.areEqual(this.collection, nftCollectionItem.collection) && Intrinsics.areEqual(this.tokens, nftCollectionItem.tokens) && isExpanded() == nftCollectionItem.isExpanded();
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.collection, this.tokens, Boolean.valueOf(isExpanded()));
    }
}
