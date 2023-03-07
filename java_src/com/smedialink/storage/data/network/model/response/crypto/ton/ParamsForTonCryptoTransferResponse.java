package com.smedialink.storage.data.network.model.response.crypto.ton;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ParamsForTonCryptoTransferResponse.kt */
/* loaded from: classes3.dex */
public final class ParamsForTonCryptoTransferResponse {
    private final TonFeesResponse estimateFees;
    private final TonTransactionParamsResponse transactionParams;

    public static /* synthetic */ ParamsForTonCryptoTransferResponse copy$default(ParamsForTonCryptoTransferResponse paramsForTonCryptoTransferResponse, TonFeesResponse tonFeesResponse, TonTransactionParamsResponse tonTransactionParamsResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            tonFeesResponse = paramsForTonCryptoTransferResponse.estimateFees;
        }
        if ((i & 2) != 0) {
            tonTransactionParamsResponse = paramsForTonCryptoTransferResponse.transactionParams;
        }
        return paramsForTonCryptoTransferResponse.copy(tonFeesResponse, tonTransactionParamsResponse);
    }

    public final TonFeesResponse component1() {
        return this.estimateFees;
    }

    public final TonTransactionParamsResponse component2() {
        return this.transactionParams;
    }

    public final ParamsForTonCryptoTransferResponse copy(TonFeesResponse estimateFees, TonTransactionParamsResponse transactionParams) {
        Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        return new ParamsForTonCryptoTransferResponse(estimateFees, transactionParams);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParamsForTonCryptoTransferResponse) {
            ParamsForTonCryptoTransferResponse paramsForTonCryptoTransferResponse = (ParamsForTonCryptoTransferResponse) obj;
            return Intrinsics.areEqual(this.estimateFees, paramsForTonCryptoTransferResponse.estimateFees) && Intrinsics.areEqual(this.transactionParams, paramsForTonCryptoTransferResponse.transactionParams);
        }
        return false;
    }

    public int hashCode() {
        return (this.estimateFees.hashCode() * 31) + this.transactionParams.hashCode();
    }

    public String toString() {
        return "ParamsForTonCryptoTransferResponse(estimateFees=" + this.estimateFees + ", transactionParams=" + this.transactionParams + ')';
    }

    public ParamsForTonCryptoTransferResponse(TonFeesResponse estimateFees, TonTransactionParamsResponse transactionParams) {
        Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        this.estimateFees = estimateFees;
        this.transactionParams = transactionParams;
    }

    public final TonFeesResponse getEstimateFees() {
        return this.estimateFees;
    }

    public final TonTransactionParamsResponse getTransactionParams() {
        return this.transactionParams;
    }
}
