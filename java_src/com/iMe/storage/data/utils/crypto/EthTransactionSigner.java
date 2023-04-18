package com.iMe.storage.data.utils.crypto;

import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.java.AnySigner;
import wallet.core.jni.CoinType;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EthTransactionSigner.kt */
/* loaded from: classes3.dex */
public final class EthTransactionSigner {
    public static final EthTransactionSigner INSTANCE = new EthTransactionSigner();

    private EthTransactionSigner() {
    }

    public final Ethereum.Transaction createTransferTransactionByType(BigInteger amount, String recipientAddress, String str) {
        Ethereum.Transaction.Builder erc20Transfer;
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        Ethereum.Transaction.Builder newBuilder = Ethereum.Transaction.newBuilder();
        if (str == null || str.length() == 0) {
            erc20Transfer = newBuilder.setTransfer(Ethereum.Transaction.Transfer.newBuilder().setAmount(CryptoExtKt.toByteString(amount)));
        } else {
            erc20Transfer = newBuilder.setErc20Transfer(Ethereum.Transaction.ERC20Transfer.newBuilder().setAmount(CryptoExtKt.toByteString(amount)).setTo(recipientAddress));
        }
        Ethereum.Transaction build = erc20Transfer.build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …                 .build()");
        return build;
    }

    public final String sign(long j, BigInteger gasPrice, BigInteger gasLimit, BigInteger nonce, String toAddress, Ethereum.Transaction transaction, byte[] privateKey) {
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(toAddress, "toAddress");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        Ethereum.SigningInput.Builder newBuilder = Ethereum.SigningInput.newBuilder();
        BigInteger valueOf = BigInteger.valueOf(j);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this)");
        byte[] byteArray = ((Ethereum.SigningOutput) AnySigner.sign(newBuilder.setChainId(CryptoExtKt.toByteString(valueOf)).setGasPrice(CryptoExtKt.toByteString(gasPrice)).setGasLimit(CryptoExtKt.toByteString(gasLimit)).setNonce(CryptoExtKt.toByteString(nonce)).setToAddress(toAddress).setTransaction(transaction).setPrivateKey(CryptoExtKt.toByteString(privateKey)).build(), CoinType.ETHEREUM, Ethereum.SigningOutput.parser())).getEncoded().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "signerOutput.encoded.toByteArray()");
        return CryptoExtKt.toHexString$default(byteArray, false, 1, null);
    }
}
