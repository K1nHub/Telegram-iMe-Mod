package com.iMe.model.wallet.home.nft;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftTokenItem.kt */
/* loaded from: classes3.dex */
public final class NftTokenItem extends NoChildNode {
    private final int itemIndex;
    private final NftType nftType;
    private final NftToken token;

    public static /* synthetic */ NftTokenItem copy$default(NftTokenItem nftTokenItem, NftToken nftToken, int i, NftType nftType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            nftToken = nftTokenItem.token;
        }
        if ((i2 & 2) != 0) {
            i = nftTokenItem.itemIndex;
        }
        if ((i2 & 4) != 0) {
            nftType = nftTokenItem.nftType;
        }
        return nftTokenItem.copy(nftToken, i, nftType);
    }

    public final NftToken component1() {
        return this.token;
    }

    public final int component2() {
        return this.itemIndex;
    }

    public final NftType component3() {
        return this.nftType;
    }

    public final NftTokenItem copy(NftToken token, int i, NftType nftType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(nftType, "nftType");
        return new NftTokenItem(token, i, nftType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftTokenItem) {
            NftTokenItem nftTokenItem = (NftTokenItem) obj;
            return Intrinsics.areEqual(this.token, nftTokenItem.token) && this.itemIndex == nftTokenItem.itemIndex && this.nftType == nftTokenItem.nftType;
        }
        return false;
    }

    public int hashCode() {
        return (((this.token.hashCode() * 31) + this.itemIndex) * 31) + this.nftType.hashCode();
    }

    public String toString() {
        return "NftTokenItem(token=" + this.token + ", itemIndex=" + this.itemIndex + ", nftType=" + this.nftType + ')';
    }

    public final NftToken getToken() {
        return this.token;
    }

    public final int getItemIndex() {
        return this.itemIndex;
    }

    public final NftType getNftType() {
        return this.nftType;
    }

    public NftTokenItem(NftToken token, int i, NftType nftType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(nftType, "nftType");
        this.token = token;
        this.itemIndex = i;
        this.nftType = nftType;
    }
}
