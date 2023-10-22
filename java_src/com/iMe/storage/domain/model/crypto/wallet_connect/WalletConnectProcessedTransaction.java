package com.iMe.storage.domain.model.crypto.wallet_connect;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectProcessedTransaction.kt */
/* loaded from: classes3.dex */
public final class WalletConnectProcessedTransaction {
    private final String data;
    private final TokenDetailed feeToken;
    private final String from;

    /* renamed from: to */
    private final String f353to;
    private final TransactionParams.Ether transactionParams;
    private final String value;

    public WalletConnectProcessedTransaction(String from, String to, String value, String data, TransactionParams.Ether transactionParams, TokenDetailed feeToken) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        this.from = from;
        this.f353to = to;
        this.value = value;
        this.data = data;
        this.transactionParams = transactionParams;
        this.feeToken = feeToken;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f353to;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }
}
