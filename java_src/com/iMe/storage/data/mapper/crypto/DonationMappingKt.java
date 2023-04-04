package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationMapping.kt */
/* loaded from: classes3.dex */
public final class DonationMappingKt {
    public static final DonationTransferMetadata mapToDomain(DataForDonationTransactionResponse dataForDonationTransactionResponse) {
        Intrinsics.checkNotNullParameter(dataForDonationTransactionResponse, "<this>");
        return new DonationTransferMetadata(CryptoWalletMappingKt.mapToDomain(dataForDonationTransactionResponse.getTransactionParams()), TokenCode.Companion.map(dataForDonationTransactionResponse.getFeeTokenCode()), dataForDonationTransactionResponse.getContractAddress(), dataForDonationTransactionResponse.getRecipientAddress());
    }

    public static final CryptoTransferMetadata mapToCryptoMetadata(DonationTransferMetadata donationTransferMetadata) {
        Intrinsics.checkNotNullParameter(donationTransferMetadata, "<this>");
        return new CryptoTransferMetadata(donationTransferMetadata.getTransactionParams(), donationTransferMetadata.getFeeTokenCode(), donationTransferMetadata.getContractAddress());
    }
}
