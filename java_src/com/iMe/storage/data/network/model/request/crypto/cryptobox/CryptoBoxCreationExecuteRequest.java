package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxCreationExecuteRequest.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxCreationExecuteRequest {
    private final long chatId;
    private final String description;
    private final String signedTransactionBody;

    public static /* synthetic */ CryptoBoxCreationExecuteRequest copy$default(CryptoBoxCreationExecuteRequest cryptoBoxCreationExecuteRequest, long j, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cryptoBoxCreationExecuteRequest.chatId;
        }
        if ((i & 2) != 0) {
            str = cryptoBoxCreationExecuteRequest.description;
        }
        if ((i & 4) != 0) {
            str2 = cryptoBoxCreationExecuteRequest.signedTransactionBody;
        }
        return cryptoBoxCreationExecuteRequest.copy(j, str, str2);
    }

    public final long component1() {
        return this.chatId;
    }

    public final String component2() {
        return this.description;
    }

    public final String component3() {
        return this.signedTransactionBody;
    }

    public final CryptoBoxCreationExecuteRequest copy(long j, String description, String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        return new CryptoBoxCreationExecuteRequest(j, description, signedTransactionBody);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxCreationExecuteRequest) {
            CryptoBoxCreationExecuteRequest cryptoBoxCreationExecuteRequest = (CryptoBoxCreationExecuteRequest) obj;
            return this.chatId == cryptoBoxCreationExecuteRequest.chatId && Intrinsics.areEqual(this.description, cryptoBoxCreationExecuteRequest.description) && Intrinsics.areEqual(this.signedTransactionBody, cryptoBoxCreationExecuteRequest.signedTransactionBody);
        }
        return false;
    }

    public int hashCode() {
        return (((ProfileData$$ExternalSyntheticBackport0.m1017m(this.chatId) * 31) + this.description.hashCode()) * 31) + this.signedTransactionBody.hashCode();
    }

    public String toString() {
        return "CryptoBoxCreationExecuteRequest(chatId=" + this.chatId + ", description=" + this.description + ", signedTransactionBody=" + this.signedTransactionBody + ')';
    }

    public CryptoBoxCreationExecuteRequest(long j, String description, String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        this.chatId = j;
        this.description = description;
        this.signedTransactionBody = signedTransactionBody;
    }

    public final long getChatId() {
        return this.chatId;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }
}
