package com.iMe.storage.data.network.model.request.crypto.wallet;

import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PrepareTransferRequest.kt */
/* loaded from: classes4.dex */
public final class PrepareTransferRequest {

    /* renamed from: to */
    private final String f377to;
    private final TokenRequest token;
    private final String value;

    public static /* synthetic */ PrepareTransferRequest copy$default(PrepareTransferRequest prepareTransferRequest, TokenRequest tokenRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenRequest = prepareTransferRequest.token;
        }
        if ((i & 2) != 0) {
            str = prepareTransferRequest.f377to;
        }
        if ((i & 4) != 0) {
            str2 = prepareTransferRequest.value;
        }
        return prepareTransferRequest.copy(tokenRequest, str, str2);
    }

    public final TokenRequest component1() {
        return this.token;
    }

    public final String component2() {
        return this.f377to;
    }

    public final String component3() {
        return this.value;
    }

    public final PrepareTransferRequest copy(TokenRequest token, String str, String str2) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new PrepareTransferRequest(token, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrepareTransferRequest) {
            PrepareTransferRequest prepareTransferRequest = (PrepareTransferRequest) obj;
            return Intrinsics.areEqual(this.token, prepareTransferRequest.token) && Intrinsics.areEqual(this.f377to, prepareTransferRequest.f377to) && Intrinsics.areEqual(this.value, prepareTransferRequest.value);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        String str = this.f377to;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "PrepareTransferRequest(token=" + this.token + ", to=" + this.f377to + ", value=" + this.value + ')';
    }

    public PrepareTransferRequest(TokenRequest token, String str, String str2) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.f377to = str;
        this.value = str2;
    }

    public /* synthetic */ PrepareTransferRequest(TokenRequest tokenRequest, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenRequest, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public final TokenRequest getToken() {
        return this.token;
    }

    public final String getTo() {
        return this.f377to;
    }

    public final String getValue() {
        return this.value;
    }
}
