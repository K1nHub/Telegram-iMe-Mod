package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.ton.ParamsForTonCryptoTransferResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.domain.model.crypto.Chain;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferMapping.kt */
/* loaded from: classes3.dex */
public final class TransferMappingKt {
    public static final CryptoTransferMetadata mapToDomain(CryptoTransferDataResponse.EVM evm) {
        Intrinsics.checkNotNullParameter(evm, "<this>");
        TransactionParams.Ether mapToDomain = CryptoWalletMappingKt.mapToDomain(evm.getTransactionParams());
        TokenCode map = TokenCode.Companion.map(evm.getFeeTokenCode());
        String contractAddress = evm.getContractAddress();
        if (contractAddress == null) {
            contractAddress = "";
        }
        return new CryptoTransferMetadata(mapToDomain, map, contractAddress);
    }

    public static final CryptoTransferMetadata mapToDomain(CryptoTransferDataResponse.TRON tron) {
        Intrinsics.checkNotNullParameter(tron, "<this>");
        TransactionParams.Tron mapToDomain = CryptoWalletMappingKt.mapToDomain(tron.getTransactionParams(), tron.getEstimateFees());
        TokenCode tokenCode = TokenCode.TRX;
        String contractAddress = tron.getContractAddress();
        if (contractAddress == null) {
            contractAddress = "";
        }
        return new CryptoTransferMetadata(mapToDomain, tokenCode, contractAddress);
    }

    public static final CryptoTransferMetadata mapToDomain(CryptoTransferDataResponse.BTC btc) {
        Intrinsics.checkNotNullParameter(btc, "<this>");
        return new CryptoTransferMetadata(CryptoWalletMappingKt.mapToDomain(btc.getTransactionParams()), TokenCode.BTC, null);
    }

    public static final CryptoTransferMetadata mapToDomain(ParamsForTonCryptoTransferResponse paramsForTonCryptoTransferResponse) {
        Intrinsics.checkNotNullParameter(paramsForTonCryptoTransferResponse, "<this>");
        BigInteger valueOf = BigInteger.valueOf(paramsForTonCryptoTransferResponse.getTransactionParams().getWalletSeqno());
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        BigInteger ZERO = BigInteger.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return new CryptoTransferMetadata(new TransactionParams.Ether(new GasPriceInfo(ZERO, ZERO, (int) paramsForTonCryptoTransferResponse.getEstimateFees().getDuration(), paramsForTonCryptoTransferResponse.getEstimateFees().getFee(), paramsForTonCryptoTransferResponse.getEstimateFees().getFeeInDollars()), null, null, valueOf, new Chain.Unknown(0L, 1, null)), TokenCode.TON, null);
    }
}
