package com.iMe.storage.domain.model.crypto.send;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoTransferMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoTransferMetadata {
    private final TokenDetailed feeToken;
    private final TokenDetailed token;
    private final TransactionParams transactionParams;

    public static /* synthetic */ CryptoTransferMetadata copy$default(CryptoTransferMetadata cryptoTransferMetadata, TransactionParams transactionParams, TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionParams = cryptoTransferMetadata.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenDetailed = cryptoTransferMetadata.feeToken;
        }
        if ((i & 4) != 0) {
            tokenDetailed2 = cryptoTransferMetadata.token;
        }
        return cryptoTransferMetadata.copy(transactionParams, tokenDetailed, tokenDetailed2);
    }

    public final TransactionParams component1() {
        return this.transactionParams;
    }

    public final TokenDetailed component2() {
        return this.feeToken;
    }

    public final TokenDetailed component3() {
        return this.token;
    }

    public final CryptoTransferMetadata copy(TransactionParams transactionParams, TokenDetailed feeToken, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        return new CryptoTransferMetadata(transactionParams, feeToken, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoTransferMetadata) {
            CryptoTransferMetadata cryptoTransferMetadata = (CryptoTransferMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, cryptoTransferMetadata.transactionParams) && Intrinsics.areEqual(this.feeToken, cryptoTransferMetadata.feeToken) && Intrinsics.areEqual(this.token, cryptoTransferMetadata.token);
        }
        return false;
    }

    public int hashCode() {
        return (((this.transactionParams.hashCode() * 31) + this.feeToken.hashCode()) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "CryptoTransferMetadata(transactionParams=" + this.transactionParams + ", feeToken=" + this.feeToken + ", token=" + this.token + ')';
    }

    public CryptoTransferMetadata(TransactionParams transactionParams, TokenDetailed feeToken, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        this.transactionParams = transactionParams;
        this.feeToken = feeToken;
        this.token = token;
    }

    public final TransactionParams getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }
}
