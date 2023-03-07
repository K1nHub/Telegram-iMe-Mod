package com.smedialink.storage.domain.model.crypto.send;

import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoTransferMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoTransferMetadata {
    private final String contractAddress;
    private final TokenCode feeTokenCode;
    private final Integer sendMode;
    private final TransactionParams transactionParams;

    public static /* synthetic */ CryptoTransferMetadata copy$default(CryptoTransferMetadata cryptoTransferMetadata, TransactionParams transactionParams, TokenCode tokenCode, String str, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionParams = cryptoTransferMetadata.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenCode = cryptoTransferMetadata.feeTokenCode;
        }
        if ((i & 4) != 0) {
            str = cryptoTransferMetadata.contractAddress;
        }
        if ((i & 8) != 0) {
            num = cryptoTransferMetadata.sendMode;
        }
        return cryptoTransferMetadata.copy(transactionParams, tokenCode, str, num);
    }

    public final TransactionParams component1() {
        return this.transactionParams;
    }

    public final TokenCode component2() {
        return this.feeTokenCode;
    }

    public final String component3() {
        return this.contractAddress;
    }

    public final Integer component4() {
        return this.sendMode;
    }

    public final CryptoTransferMetadata copy(TransactionParams transactionParams, TokenCode feeTokenCode, String str, Integer num) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        return new CryptoTransferMetadata(transactionParams, feeTokenCode, str, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoTransferMetadata) {
            CryptoTransferMetadata cryptoTransferMetadata = (CryptoTransferMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, cryptoTransferMetadata.transactionParams) && this.feeTokenCode == cryptoTransferMetadata.feeTokenCode && Intrinsics.areEqual(this.contractAddress, cryptoTransferMetadata.contractAddress) && Intrinsics.areEqual(this.sendMode, cryptoTransferMetadata.sendMode);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.transactionParams.hashCode() * 31) + this.feeTokenCode.hashCode()) * 31;
        String str = this.contractAddress;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.sendMode;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "CryptoTransferMetadata(transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ", contractAddress=" + ((Object) this.contractAddress) + ", sendMode=" + this.sendMode + ')';
    }

    public CryptoTransferMetadata(TransactionParams transactionParams, TokenCode feeTokenCode, String str, Integer num) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        this.transactionParams = transactionParams;
        this.feeTokenCode = feeTokenCode;
        this.contractAddress = str;
        this.sendMode = num;
    }

    public final TransactionParams getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenCode getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final Integer getSendMode() {
        return this.sendMode;
    }
}
