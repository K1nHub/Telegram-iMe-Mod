package com.smedialink.storage.domain.model.crypto.wallet_connect;

import com.smedialink.storage.domain.model.crypto.TransactionParams;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectProcessedTransaction.kt */
/* loaded from: classes3.dex */
public final class WalletConnectProcessedTransaction {
    private final String data;
    private final String feeTokenCode;
    private final String from;
    private final String networkType;

    /* renamed from: to */
    private final String f326to;
    private final TransactionParams transactionParams;
    private final String value;

    public WalletConnectProcessedTransaction(String from, String to, String value, String data, TransactionParams transactionParams, String networkType, String feeTokenCode) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        this.from = from;
        this.f326to = to;
        this.value = value;
        this.data = data;
        this.transactionParams = transactionParams;
        this.networkType = networkType;
        this.feeTokenCode = feeTokenCode;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f326to;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }

    public final TransactionParams getTransactionParams() {
        return this.transactionParams;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }
}
