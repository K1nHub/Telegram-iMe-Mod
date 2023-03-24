package com.smedialink.storage.domain.model.crypto.donations;

import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationTransferMetadata.kt */
/* loaded from: classes3.dex */
public final class DonationTransferMetadata {
    private final String contractAddress;
    private final TokenCode feeTokenCode;
    private final String recipientAddress;
    private final TransactionParams.Ether transactionParams;

    public static /* synthetic */ DonationTransferMetadata copy$default(DonationTransferMetadata donationTransferMetadata, TransactionParams.Ether ether, TokenCode tokenCode, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            ether = donationTransferMetadata.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenCode = donationTransferMetadata.feeTokenCode;
        }
        if ((i & 4) != 0) {
            str = donationTransferMetadata.contractAddress;
        }
        if ((i & 8) != 0) {
            str2 = donationTransferMetadata.recipientAddress;
        }
        return donationTransferMetadata.copy(ether, tokenCode, str, str2);
    }

    public final TransactionParams.Ether component1() {
        return this.transactionParams;
    }

    public final TokenCode component2() {
        return this.feeTokenCode;
    }

    public final String component3() {
        return this.contractAddress;
    }

    public final String component4() {
        return this.recipientAddress;
    }

    public final DonationTransferMetadata copy(TransactionParams.Ether transactionParams, TokenCode feeTokenCode, String contractAddress, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        return new DonationTransferMetadata(transactionParams, feeTokenCode, contractAddress, recipientAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DonationTransferMetadata) {
            DonationTransferMetadata donationTransferMetadata = (DonationTransferMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, donationTransferMetadata.transactionParams) && this.feeTokenCode == donationTransferMetadata.feeTokenCode && Intrinsics.areEqual(this.contractAddress, donationTransferMetadata.contractAddress) && Intrinsics.areEqual(this.recipientAddress, donationTransferMetadata.recipientAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.transactionParams.hashCode() * 31) + this.feeTokenCode.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.recipientAddress.hashCode();
    }

    public String toString() {
        return "DonationTransferMetadata(transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ", contractAddress=" + this.contractAddress + ", recipientAddress=" + this.recipientAddress + ')';
    }

    public DonationTransferMetadata(TransactionParams.Ether transactionParams, TokenCode feeTokenCode, String contractAddress, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        this.transactionParams = transactionParams;
        this.feeTokenCode = feeTokenCode;
        this.contractAddress = contractAddress;
        this.recipientAddress = recipientAddress;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenCode getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final String getRecipientAddress() {
        return this.recipientAddress;
    }
}
