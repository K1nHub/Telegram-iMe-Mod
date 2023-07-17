package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DonationMapping.kt */
/* loaded from: classes3.dex */
public final class DonationMappingKt {
    public static final DonationTransferMetadata mapToDomain(DataForDonationTransactionResponse dataForDonationTransactionResponse) {
        Intrinsics.checkNotNullParameter(dataForDonationTransactionResponse, "<this>");
        return new DonationTransferMetadata(CryptoWalletMappingKt.mapToDomain(dataForDonationTransactionResponse.getTransactionParams()), TokenMappingKt.mapToDomain(dataForDonationTransactionResponse.getFeeToken()), TokenMappingKt.mapToDomain(dataForDonationTransactionResponse.getToken()), dataForDonationTransactionResponse.getRecipientAddress());
    }

    public static final CryptoTransferMetadata mapToCryptoMetadata(DonationTransferMetadata donationTransferMetadata) {
        Intrinsics.checkNotNullParameter(donationTransferMetadata, "<this>");
        return new CryptoTransferMetadata(donationTransferMetadata.getTransactionParams(), donationTransferMetadata.getFeeToken(), donationTransferMetadata.getToken());
    }
}
