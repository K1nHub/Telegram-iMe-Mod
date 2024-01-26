package com.iMe.storage.domain.model.crypto.cancel;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoCancelMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoCancelMetadata {
    private final TokenDetailed feeToken;
    private final TransactionParams.Ether transactionParams;
    private final String value;

    public static /* synthetic */ CryptoCancelMetadata copy$default(CryptoCancelMetadata cryptoCancelMetadata, TransactionParams.Ether ether, TokenDetailed tokenDetailed, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            ether = cryptoCancelMetadata.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenDetailed = cryptoCancelMetadata.feeToken;
        }
        if ((i & 4) != 0) {
            str = cryptoCancelMetadata.value;
        }
        return cryptoCancelMetadata.copy(ether, tokenDetailed, str);
    }

    public final TransactionParams.Ether component1() {
        return this.transactionParams;
    }

    public final TokenDetailed component2() {
        return this.feeToken;
    }

    public final String component3() {
        return this.value;
    }

    public final CryptoCancelMetadata copy(TransactionParams.Ether transactionParams, TokenDetailed feeToken, String value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(value, "value");
        return new CryptoCancelMetadata(transactionParams, feeToken, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoCancelMetadata) {
            CryptoCancelMetadata cryptoCancelMetadata = (CryptoCancelMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, cryptoCancelMetadata.transactionParams) && Intrinsics.areEqual(this.feeToken, cryptoCancelMetadata.feeToken) && Intrinsics.areEqual(this.value, cryptoCancelMetadata.value);
        }
        return false;
    }

    public int hashCode() {
        return (((this.transactionParams.hashCode() * 31) + this.feeToken.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "CryptoCancelMetadata(transactionParams=" + this.transactionParams + ", feeToken=" + this.feeToken + ", value=" + this.value + ')';
    }

    public CryptoCancelMetadata(TransactionParams.Ether transactionParams, TokenDetailed feeToken, String value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(value, "value");
        this.transactionParams = transactionParams;
        this.feeToken = feeToken;
        this.value = value;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    public final String getValue() {
        return this.value;
    }
}
