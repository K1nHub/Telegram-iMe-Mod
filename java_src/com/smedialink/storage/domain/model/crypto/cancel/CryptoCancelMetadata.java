package com.smedialink.storage.domain.model.crypto.cancel;

import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoCancelMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoCancelMetadata {
    private final TokenCode feeTokenCode;
    private final TransactionParams.Ether transactionParams;
    private final String value;

    public static /* synthetic */ CryptoCancelMetadata copy$default(CryptoCancelMetadata cryptoCancelMetadata, TransactionParams.Ether ether, TokenCode tokenCode, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            ether = cryptoCancelMetadata.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenCode = cryptoCancelMetadata.feeTokenCode;
        }
        if ((i & 4) != 0) {
            str = cryptoCancelMetadata.value;
        }
        return cryptoCancelMetadata.copy(ether, tokenCode, str);
    }

    public final TransactionParams.Ether component1() {
        return this.transactionParams;
    }

    public final TokenCode component2() {
        return this.feeTokenCode;
    }

    public final String component3() {
        return this.value;
    }

    public final CryptoCancelMetadata copy(TransactionParams.Ether transactionParams, TokenCode feeTokenCode, String value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(value, "value");
        return new CryptoCancelMetadata(transactionParams, feeTokenCode, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoCancelMetadata) {
            CryptoCancelMetadata cryptoCancelMetadata = (CryptoCancelMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, cryptoCancelMetadata.transactionParams) && this.feeTokenCode == cryptoCancelMetadata.feeTokenCode && Intrinsics.areEqual(this.value, cryptoCancelMetadata.value);
        }
        return false;
    }

    public int hashCode() {
        return (((this.transactionParams.hashCode() * 31) + this.feeTokenCode.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "CryptoCancelMetadata(transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ", value=" + this.value + ')';
    }

    public CryptoCancelMetadata(TransactionParams.Ether transactionParams, TokenCode feeTokenCode, String value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(value, "value");
        this.transactionParams = transactionParams;
        this.feeTokenCode = feeTokenCode;
        this.value = value;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenCode getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getValue() {
        return this.value;
    }
}
