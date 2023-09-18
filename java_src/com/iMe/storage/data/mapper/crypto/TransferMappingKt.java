package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferMapping.kt */
/* loaded from: classes4.dex */
public final class TransferMappingKt {
    public static final CryptoTransferMetadata mapToDomain(CryptoTransferDataResponse cryptoTransferDataResponse) {
        TransactionParams mapToDomain;
        Intrinsics.checkNotNullParameter(cryptoTransferDataResponse, "<this>");
        if (cryptoTransferDataResponse instanceof CryptoTransferDataResponse.EVM) {
            mapToDomain = CryptoWalletMappingKt.mapToDomain(((CryptoTransferDataResponse.EVM) cryptoTransferDataResponse).getTransactionParams());
        } else if (cryptoTransferDataResponse instanceof CryptoTransferDataResponse.TRON) {
            CryptoTransferDataResponse.TRON tron = (CryptoTransferDataResponse.TRON) cryptoTransferDataResponse;
            mapToDomain = CryptoWalletMappingKt.mapToDomain(tron.getTransactionParams(), tron.getEstimateFees());
        } else if (cryptoTransferDataResponse instanceof CryptoTransferDataResponse.TON) {
            CryptoTransferDataResponse.TON ton = (CryptoTransferDataResponse.TON) cryptoTransferDataResponse;
            mapToDomain = CryptoWalletMappingKt.mapToDomain(ton.getTransactionParams(), ton.getEstimateFees());
        } else if (!(cryptoTransferDataResponse instanceof CryptoTransferDataResponse.BTC)) {
            throw new NoWhenBranchMatchedException();
        } else {
            mapToDomain = CryptoWalletMappingKt.mapToDomain(((CryptoTransferDataResponse.BTC) cryptoTransferDataResponse).getTransactionParams());
        }
        return new CryptoTransferMetadata(mapToDomain, TokenMappingKt.mapToDomain(cryptoTransferDataResponse.getFeeToken()), TokenMappingKt.mapToDomain(cryptoTransferDataResponse.getToken()));
    }
}
