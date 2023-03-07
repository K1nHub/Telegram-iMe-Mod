package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.ton.ParamsForTonCryptoTransferResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.DataForCryptoTransferResponse;
import com.smedialink.storage.domain.model.crypto.Chain;
import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.GasPriceInfo;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferMapping.kt */
/* loaded from: classes3.dex */
public final class TransferMappingKt {
    public static final CryptoTransferMetadata mapToDomain(DataForCryptoTransferResponse dataForCryptoTransferResponse) {
        Intrinsics.checkNotNullParameter(dataForCryptoTransferResponse, "<this>");
        TransactionParams mapToDomain = CryptoWalletMappingKt.mapToDomain(dataForCryptoTransferResponse.getTransactionParams());
        TokenCode map = TokenCode.Companion.map(dataForCryptoTransferResponse.getFeeTokenCode());
        String contractAddress = dataForCryptoTransferResponse.getContractAddress();
        if (contractAddress == null) {
            contractAddress = "";
        }
        return new CryptoTransferMetadata(mapToDomain, map, contractAddress, null);
    }

    public static final CryptoTransferMetadata mapToDomain(ParamsForTonCryptoTransferResponse paramsForTonCryptoTransferResponse) {
        Intrinsics.checkNotNullParameter(paramsForTonCryptoTransferResponse, "<this>");
        BigInteger valueOf = BigInteger.valueOf(paramsForTonCryptoTransferResponse.getTransactionParams().getWalletSeqno());
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        BigInteger ZERO = BigInteger.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return new CryptoTransferMetadata(new TransactionParams(null, new GasPriceInfo(ZERO, ZERO, (int) paramsForTonCryptoTransferResponse.getEstimateFees().getDuration(), paramsForTonCryptoTransferResponse.getEstimateFees().getFee(), paramsForTonCryptoTransferResponse.getEstimateFees().getFeeInDollars()), null, valueOf, new Chain.Unknown(0L, 1, null)), TokenCode.TON, null, Integer.valueOf(paramsForTonCryptoTransferResponse.getTransactionParams().getSendMode()));
    }
}
