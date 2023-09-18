package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.boost.SpeedUpTransactionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BoostMapping.kt */
/* loaded from: classes4.dex */
public final class BoostMappingKt {
    public static final TransactionArgs mapToDomain(SpeedUpTransactionDataResponse speedUpTransactionDataResponse) {
        Intrinsics.checkNotNullParameter(speedUpTransactionDataResponse, "<this>");
        int decimals = speedUpTransactionDataResponse.getFeeToken().getDecimals();
        SpeedUpTransactionDataResponse.TransactionMethodParamsResponse.TransferMethodParamsResponse transferMethodParams = speedUpTransactionDataResponse.getOldTransactionData().getTransferMethodParams();
        Intrinsics.checkNotNull(transferMethodParams);
        String to = transferMethodParams.getTo();
        double parseDouble = Double.parseDouble(speedUpTransactionDataResponse.getOldTransactionData().getTransferMethodParams().getValue());
        long chainId = speedUpTransactionDataResponse.getTransactionParams().getChainId();
        BigInteger nonce = speedUpTransactionDataResponse.getTransactionParams().getNonce();
        GasPriceResponse fastest = speedUpTransactionDataResponse.getTransactionParams().getFastest();
        BigInteger orZero = NumberExtKt.orZero(fastest != null ? fastest.getPrice() : null);
        GasPriceResponse fastest2 = speedUpTransactionDataResponse.getTransactionParams().getFastest();
        return new TransferArgs.EVM(parseDouble, decimals, to, chainId, nonce, orZero, NumberExtKt.orZero(fastest2 != null ? fastest2.getLimit() : null), speedUpTransactionDataResponse.getOldTransactionData().getTransferMethodParams().getToken().getAddress());
    }
}
