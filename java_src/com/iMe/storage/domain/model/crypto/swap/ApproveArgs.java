package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ApproveArgs.kt */
/* loaded from: classes3.dex */
public abstract class ApproveArgs implements TransactionArgs {
    private final TokenInfo token;
    private final Number value;

    public /* synthetic */ ApproveArgs(TokenInfo tokenInfo, Number number, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenInfo, number);
    }

    private ApproveArgs(TokenInfo tokenInfo, Number number) {
        this.token = tokenInfo;
        this.value = number;
    }

    public TokenInfo getToken() {
        return this.token;
    }

    public Number getValue() {
        return this.value;
    }

    /* compiled from: ApproveArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Dex extends ApproveArgs {
        private final long chainId;
        private final String exchangeContractAddress;
        private final BigInteger gasLimit;
        private final BigInteger gasPrice;
        private final NetworkType networkType;
        private final BigInteger nonce;
        private final SwapProtocol protocol;
        private final String recipientAddress;
        private final TokenInfo.Crypto.Ethereum token;
        private final String tokenContractAddress;
        private final BigInteger value;

        public final TokenInfo.Crypto.Ethereum component1() {
            return getToken();
        }

        public final NetworkType component10() {
            return this.networkType;
        }

        public final SwapProtocol component11() {
            return this.protocol;
        }

        public final BigInteger component2() {
            return getValue();
        }

        public final String component3() {
            return this.recipientAddress;
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

        public final String component8() {
            return this.tokenContractAddress;
        }

        public final String component9() {
            return this.exchangeContractAddress;
        }

        public final Dex copy(TokenInfo.Crypto.Ethereum token, BigInteger value, String recipientAddress, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String tokenContractAddress, String exchangeContractAddress, NetworkType networkType, SwapProtocol protocol) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
            Intrinsics.checkNotNullParameter(exchangeContractAddress, "exchangeContractAddress");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            return new Dex(token, value, recipientAddress, j, nonce, gasPrice, gasLimit, tokenContractAddress, exchangeContractAddress, networkType, protocol);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Dex) {
                Dex dex = (Dex) obj;
                return Intrinsics.areEqual(getToken(), dex.getToken()) && Intrinsics.areEqual(getValue(), dex.getValue()) && Intrinsics.areEqual(this.recipientAddress, dex.recipientAddress) && this.chainId == dex.chainId && Intrinsics.areEqual(this.nonce, dex.nonce) && Intrinsics.areEqual(this.gasPrice, dex.gasPrice) && Intrinsics.areEqual(this.gasLimit, dex.gasLimit) && Intrinsics.areEqual(this.tokenContractAddress, dex.tokenContractAddress) && Intrinsics.areEqual(this.exchangeContractAddress, dex.exchangeContractAddress) && this.networkType == dex.networkType && this.protocol == dex.protocol;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((getToken().hashCode() * 31) + getValue().hashCode()) * 31) + this.recipientAddress.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.chainId)) * 31) + this.nonce.hashCode()) * 31) + this.gasPrice.hashCode()) * 31) + this.gasLimit.hashCode()) * 31) + this.tokenContractAddress.hashCode()) * 31) + this.exchangeContractAddress.hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.protocol.hashCode();
        }

        public String toString() {
            return "Dex(token=" + getToken() + ", value=" + getValue() + ", recipientAddress=" + this.recipientAddress + ", chainId=" + this.chainId + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", gasLimit=" + this.gasLimit + ", tokenContractAddress=" + this.tokenContractAddress + ", exchangeContractAddress=" + this.exchangeContractAddress + ", networkType=" + this.networkType + ", protocol=" + this.protocol + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.ApproveArgs
        public TokenInfo.Crypto.Ethereum getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.ApproveArgs
        public BigInteger getValue() {
            return this.value;
        }

        public final String getRecipientAddress() {
            return this.recipientAddress;
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

        public final String getTokenContractAddress() {
            return this.tokenContractAddress;
        }

        public final String getExchangeContractAddress() {
            return this.exchangeContractAddress;
        }

        public final NetworkType getNetworkType() {
            return this.networkType;
        }

        public final SwapProtocol getProtocol() {
            return this.protocol;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Dex(TokenInfo.Crypto.Ethereum token, BigInteger value, String recipientAddress, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String tokenContractAddress, String exchangeContractAddress, NetworkType networkType, SwapProtocol protocol) {
            super(token, value, null);
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
            Intrinsics.checkNotNullParameter(exchangeContractAddress, "exchangeContractAddress");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            this.token = token;
            this.value = value;
            this.recipientAddress = recipientAddress;
            this.chainId = j;
            this.nonce = nonce;
            this.gasPrice = gasPrice;
            this.gasLimit = gasLimit;
            this.tokenContractAddress = tokenContractAddress;
            this.exchangeContractAddress = exchangeContractAddress;
            this.networkType = networkType;
            this.protocol = protocol;
        }
    }
}
