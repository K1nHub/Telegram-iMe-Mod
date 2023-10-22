package com.iMe.storage.domain.model.wallet.token;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenListsData.kt */
/* loaded from: classes3.dex */
public final class TokenListsData {
    private final List<TokenListInfo> tokenLists;
    private final int verifiedCount;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TokenListsData copy$default(TokenListsData tokenListsData, List list, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = tokenListsData.tokenLists;
        }
        if ((i2 & 2) != 0) {
            i = tokenListsData.verifiedCount;
        }
        return tokenListsData.copy(list, i);
    }

    public final List<TokenListInfo> component1() {
        return this.tokenLists;
    }

    public final int component2() {
        return this.verifiedCount;
    }

    public final TokenListsData copy(List<TokenListInfo> tokenLists, int i) {
        Intrinsics.checkNotNullParameter(tokenLists, "tokenLists");
        return new TokenListsData(tokenLists, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenListsData) {
            TokenListsData tokenListsData = (TokenListsData) obj;
            return Intrinsics.areEqual(this.tokenLists, tokenListsData.tokenLists) && this.verifiedCount == tokenListsData.verifiedCount;
        }
        return false;
    }

    public int hashCode() {
        return (this.tokenLists.hashCode() * 31) + this.verifiedCount;
    }

    public String toString() {
        return "TokenListsData(tokenLists=" + this.tokenLists + ", verifiedCount=" + this.verifiedCount + ')';
    }

    public TokenListsData(List<TokenListInfo> tokenLists, int i) {
        Intrinsics.checkNotNullParameter(tokenLists, "tokenLists");
        this.tokenLists = tokenLists;
        this.verifiedCount = i;
    }

    public final List<TokenListInfo> getTokenLists() {
        return this.tokenLists;
    }

    public final int getVerifiedCount() {
        return this.verifiedCount;
    }
}
