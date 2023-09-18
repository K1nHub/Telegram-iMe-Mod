package com.iMe.storage.domain.model.crypto.donations;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationTransferMetadata.kt */
/* loaded from: classes4.dex */
public final class DonationTransferMetadata {
    private final TokenDetailed feeToken;
    private final String recipientAddress;
    private final TokenDetailed token;
    private final TransactionParams.Ether transactionParams;

    public static /* synthetic */ DonationTransferMetadata copy$default(DonationTransferMetadata donationTransferMetadata, TransactionParams.Ether ether, TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            ether = donationTransferMetadata.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenDetailed = donationTransferMetadata.feeToken;
        }
        if ((i & 4) != 0) {
            tokenDetailed2 = donationTransferMetadata.token;
        }
        if ((i & 8) != 0) {
            str = donationTransferMetadata.recipientAddress;
        }
        return donationTransferMetadata.copy(ether, tokenDetailed, tokenDetailed2, str);
    }

    public final TransactionParams.Ether component1() {
        return this.transactionParams;
    }

    public final TokenDetailed component2() {
        return this.feeToken;
    }

    public final TokenDetailed component3() {
        return this.token;
    }

    public final String component4() {
        return this.recipientAddress;
    }

    public final DonationTransferMetadata copy(TransactionParams.Ether transactionParams, TokenDetailed feeToken, TokenDetailed token, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        return new DonationTransferMetadata(transactionParams, feeToken, token, recipientAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DonationTransferMetadata) {
            DonationTransferMetadata donationTransferMetadata = (DonationTransferMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, donationTransferMetadata.transactionParams) && Intrinsics.areEqual(this.feeToken, donationTransferMetadata.feeToken) && Intrinsics.areEqual(this.token, donationTransferMetadata.token) && Intrinsics.areEqual(this.recipientAddress, donationTransferMetadata.recipientAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.transactionParams.hashCode() * 31) + this.feeToken.hashCode()) * 31) + this.token.hashCode()) * 31) + this.recipientAddress.hashCode();
    }

    public String toString() {
        return "DonationTransferMetadata(transactionParams=" + this.transactionParams + ", feeToken=" + this.feeToken + ", token=" + this.token + ", recipientAddress=" + this.recipientAddress + ')';
    }

    public DonationTransferMetadata(TransactionParams.Ether transactionParams, TokenDetailed feeToken, TokenDetailed token, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        this.transactionParams = transactionParams;
        this.feeToken = feeToken;
        this.token = token;
        this.recipientAddress = recipientAddress;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final String getRecipientAddress() {
        return this.recipientAddress;
    }
}
