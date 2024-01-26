package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTransactionActionResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTransactionArgsResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTransactionGasResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionArgs;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionGas;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxValues;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionActionMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTransactionActionMappingKt {
    public static final CryptoBoxTransactionAction mapToDomain(CryptoBoxTransactionActionResponse cryptoBoxTransactionActionResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxTransactionActionResponse, "<this>");
        CryptoBoxTransactionArgsResponse transaction = cryptoBoxTransactionActionResponse.getTransaction();
        CryptoBoxTransactionArgs cryptoBoxTransactionArgs = new CryptoBoxTransactionArgs(transaction.getChainId(), transaction.getTo(), transaction.getNonce(), transaction.getGasLimit(), transaction.getGasPrice(), transaction.getData(), transaction.getValue());
        CryptoBoxTransactionGasResponse gas = cryptoBoxTransactionActionResponse.getGas();
        return new CryptoBoxTransactionAction(cryptoBoxTransactionArgs, new CryptoBoxTransactionGas(TokenMappingKt.mapToDomain(gas.getToken()), new CryptoBoxValues(gas.getValue().getAsToken(), gas.getValue().getAsUsd()), gas.getDuration()));
    }
}
