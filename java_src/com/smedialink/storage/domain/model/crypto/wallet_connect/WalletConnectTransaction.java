package com.smedialink.storage.domain.model.crypto.wallet_connect;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectTransaction.kt */
/* loaded from: classes3.dex */
public final class WalletConnectTransaction {
    private final String data;
    private final String from;
    private final BigInteger gas;
    private final BigInteger gasPrice;
    private final NetworkType networkType;
    private final BigInteger nonce;

    /* renamed from: to */
    private final String f327to;
    private final String value;

    public WalletConnectTransaction(String from, String to, String value, String data, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.from = from;
        this.f327to = to;
        this.value = value;
        this.data = data;
        this.gas = bigInteger;
        this.gasPrice = bigInteger2;
        this.nonce = bigInteger3;
        this.networkType = networkType;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f327to;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }

    public final BigInteger getGas() {
        return this.gas;
    }

    public final BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }
}
