package com.iMe.storage.domain.model.crypto.wallet_connect;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectTransactionArgs.kt */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionArgs implements TransactionArgs {
    private final BigInteger amount;
    private final long chainId;
    private final String data;
    private final BigInteger gasLimit;
    private final BigInteger gasPrice;
    private final BigInteger nonce;
    private final String recipientAddress;

    public final String component1() {
        return this.recipientAddress;
    }

    public final BigInteger component2() {
        return this.amount;
    }

    public final String component3() {
        return this.data;
    }

    public final long component4() {
        return this.chainId;
    }

    public final BigInteger component5() {
        return this.nonce;
    }

    public final BigInteger component6() {
        return this.gasPrice;
    }

    public final BigInteger component7() {
        return this.gasLimit;
    }

    public final WalletConnectTransactionArgs copy(String recipientAddress, BigInteger amount, String data, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit) {
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        return new WalletConnectTransactionArgs(recipientAddress, amount, data, j, nonce, gasPrice, gasLimit);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletConnectTransactionArgs) {
            WalletConnectTransactionArgs walletConnectTransactionArgs = (WalletConnectTransactionArgs) obj;
            return Intrinsics.areEqual(this.recipientAddress, walletConnectTransactionArgs.recipientAddress) && Intrinsics.areEqual(this.amount, walletConnectTransactionArgs.amount) && Intrinsics.areEqual(this.data, walletConnectTransactionArgs.data) && this.chainId == walletConnectTransactionArgs.chainId && Intrinsics.areEqual(this.nonce, walletConnectTransactionArgs.nonce) && Intrinsics.areEqual(this.gasPrice, walletConnectTransactionArgs.gasPrice) && Intrinsics.areEqual(this.gasLimit, walletConnectTransactionArgs.gasLimit);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.recipientAddress.hashCode() * 31) + this.amount.hashCode()) * 31) + this.data.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.chainId)) * 31) + this.nonce.hashCode()) * 31) + this.gasPrice.hashCode()) * 31) + this.gasLimit.hashCode();
    }

    public String toString() {
        return "WalletConnectTransactionArgs(recipientAddress=" + this.recipientAddress + ", amount=" + this.amount + ", data=" + this.data + ", chainId=" + this.chainId + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", gasLimit=" + this.gasLimit + ')';
    }

    public WalletConnectTransactionArgs(String recipientAddress, BigInteger amount, String data, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit) {
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        this.recipientAddress = recipientAddress;
        this.amount = amount;
        this.data = data;
        this.chainId = j;
        this.nonce = nonce;
        this.gasPrice = gasPrice;
        this.gasLimit = gasLimit;
    }

    public final String getRecipientAddress() {
        return this.recipientAddress;
    }

    public final BigInteger getAmount() {
        return this.amount;
    }

    public final String getData() {
        return this.data;
    }

    public final long getChainId() {
        return this.chainId;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public final BigInteger getGasLimit() {
        return this.gasLimit;
    }
}
