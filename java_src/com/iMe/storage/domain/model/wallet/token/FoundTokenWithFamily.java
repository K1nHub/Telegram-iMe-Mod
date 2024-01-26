package com.iMe.storage.domain.model.wallet.token;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FoundToken.kt */
/* loaded from: classes3.dex */
public final class FoundTokenWithFamily {
    private final FoundToken foundToken;
    private final List<FoundToken> tokenFamily;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FoundTokenWithFamily copy$default(FoundTokenWithFamily foundTokenWithFamily, FoundToken foundToken, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            foundToken = foundTokenWithFamily.foundToken;
        }
        if ((i & 2) != 0) {
            list = foundTokenWithFamily.tokenFamily;
        }
        return foundTokenWithFamily.copy(foundToken, list);
    }

    public final FoundToken component1() {
        return this.foundToken;
    }

    public final List<FoundToken> component2() {
        return this.tokenFamily;
    }

    public final FoundTokenWithFamily copy(FoundToken foundToken, List<FoundToken> tokenFamily) {
        Intrinsics.checkNotNullParameter(foundToken, "foundToken");
        Intrinsics.checkNotNullParameter(tokenFamily, "tokenFamily");
        return new FoundTokenWithFamily(foundToken, tokenFamily);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FoundTokenWithFamily) {
            FoundTokenWithFamily foundTokenWithFamily = (FoundTokenWithFamily) obj;
            return Intrinsics.areEqual(this.foundToken, foundTokenWithFamily.foundToken) && Intrinsics.areEqual(this.tokenFamily, foundTokenWithFamily.tokenFamily);
        }
        return false;
    }

    public int hashCode() {
        return (this.foundToken.hashCode() * 31) + this.tokenFamily.hashCode();
    }

    public String toString() {
        return "FoundTokenWithFamily(foundToken=" + this.foundToken + ", tokenFamily=" + this.tokenFamily + ')';
    }

    public FoundTokenWithFamily(FoundToken foundToken, List<FoundToken> tokenFamily) {
        Intrinsics.checkNotNullParameter(foundToken, "foundToken");
        Intrinsics.checkNotNullParameter(tokenFamily, "tokenFamily");
        this.foundToken = foundToken;
        this.tokenFamily = tokenFamily;
    }

    public final FoundToken getFoundToken() {
        return this.foundToken;
    }

    public final List<FoundToken> getTokenFamily() {
        return this.tokenFamily;
    }
}
