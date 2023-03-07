package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.DataForCryptoTransferResponse;
import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationMapping.kt */
/* loaded from: classes3.dex */
public final class DonationMappingKt {
    public static final DonationTransferMetadata mapToDomain(DataForDonationTransactionResponse dataForDonationTransactionResponse) {
        Intrinsics.checkNotNullParameter(dataForDonationTransactionResponse, "<this>");
        CryptoTransferMetadata mapToDomain = TransferMappingKt.mapToDomain(new DataForCryptoTransferResponse(dataForDonationTransactionResponse.getTransactionParams(), dataForDonationTransactionResponse.getFeeTokenCode(), dataForDonationTransactionResponse.getContractAddress()));
        TransactionParams transactionParams = mapToDomain.getTransactionParams();
        TokenCode feeTokenCode = mapToDomain.getFeeTokenCode();
        String contractAddress = mapToDomain.getContractAddress();
        if (contractAddress == null) {
            contractAddress = "";
        }
        return new DonationTransferMetadata(transactionParams, feeTokenCode, contractAddress, dataForDonationTransactionResponse.getRecipientAddress());
    }

    public static final CryptoTransferMetadata mapToCryptoMetadata(DonationTransferMetadata donationTransferMetadata) {
        Intrinsics.checkNotNullParameter(donationTransferMetadata, "<this>");
        return new CryptoTransferMetadata(donationTransferMetadata.getTransactionParams(), donationTransferMetadata.getFeeTokenCode(), donationTransferMetadata.getContractAddress(), null);
    }
}
