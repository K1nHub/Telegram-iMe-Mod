package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ApproveArgs.kt */
/* loaded from: classes3.dex */
public abstract class ApproveArgs implements TransactionArgs {
    private final BlockchainType blockchainType;
    private final Number value;

    public /* synthetic */ ApproveArgs(BlockchainType blockchainType, Number number, DefaultConstructorMarker defaultConstructorMarker) {
        this(blockchainType, number);
    }

    private ApproveArgs(BlockchainType blockchainType, Number number) {
        this.blockchainType = blockchainType;
        this.value = number;
    }

    public BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    public Number getValue() {
        return this.value;
    }

    /* compiled from: ApproveArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Dex extends ApproveArgs {
        private final BlockchainType blockchainType;
        private final long chainId;
        private final String exchangeContractAddress;
        private final BigInteger gasLimit;
        private final BigInteger gasPrice;
        private final String networkId;
        private final BigInteger nonce;
        private final SwapProtocol protocol;
        private final String tokenContractAddress;
        private final BigInteger value;

        public final BlockchainType component1() {
            return getBlockchainType();
        }

        public final SwapProtocol component10() {
            return this.protocol;
        }

        public final BigInteger component2() {
            return getValue();
        }

        public final long component3() {
            return this.chainId;
        }

        public final BigInteger component4() {
            return this.nonce;
        }

        public final BigInteger component5() {
            return this.gasPrice;
        }

        public final BigInteger component6() {
            return this.gasLimit;
        }

        public final String component7() {
            return this.tokenContractAddress;
        }

        public final String component8() {
            return this.exchangeContractAddress;
        }

        public final String component9() {
            return this.networkId;
        }

        public final Dex copy(BlockchainType blockchainType, BigInteger value, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String tokenContractAddress, String exchangeContractAddress, String networkId, SwapProtocol protocol) {
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
            Intrinsics.checkNotNullParameter(exchangeContractAddress, "exchangeContractAddress");
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            return new Dex(blockchainType, value, j, nonce, gasPrice, gasLimit, tokenContractAddress, exchangeContractAddress, networkId, protocol);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Dex) {
                Dex dex = (Dex) obj;
                return getBlockchainType() == dex.getBlockchainType() && Intrinsics.areEqual(getValue(), dex.getValue()) && this.chainId == dex.chainId && Intrinsics.areEqual(this.nonce, dex.nonce) && Intrinsics.areEqual(this.gasPrice, dex.gasPrice) && Intrinsics.areEqual(this.gasLimit, dex.gasLimit) && Intrinsics.areEqual(this.tokenContractAddress, dex.tokenContractAddress) && Intrinsics.areEqual(this.exchangeContractAddress, dex.exchangeContractAddress) && Intrinsics.areEqual(this.networkId, dex.networkId) && this.protocol == dex.protocol;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getBlockchainType().hashCode() * 31) + getValue().hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.chainId)) * 31) + this.nonce.hashCode()) * 31) + this.gasPrice.hashCode()) * 31) + this.gasLimit.hashCode()) * 31) + this.tokenContractAddress.hashCode()) * 31) + this.exchangeContractAddress.hashCode()) * 31) + this.networkId.hashCode()) * 31) + this.protocol.hashCode();
        }

        public String toString() {
            return "Dex(blockchainType=" + getBlockchainType() + ", value=" + getValue() + ", chainId=" + this.chainId + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", gasLimit=" + this.gasLimit + ", tokenContractAddress=" + this.tokenContractAddress + ", exchangeContractAddress=" + this.exchangeContractAddress + ", networkId=" + this.networkId + ", protocol=" + this.protocol + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.ApproveArgs
        public BlockchainType getBlockchainType() {
            return this.blockchainType;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.ApproveArgs
        public BigInteger getValue() {
            return this.value;
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

        public final String getNetworkId() {
            return this.networkId;
        }

        public final SwapProtocol getProtocol() {
            return this.protocol;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Dex(BlockchainType blockchainType, BigInteger value, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String tokenContractAddress, String exchangeContractAddress, String networkId, SwapProtocol protocol) {
            super(blockchainType, value, null);
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
            Intrinsics.checkNotNullParameter(exchangeContractAddress, "exchangeContractAddress");
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            this.blockchainType = blockchainType;
            this.value = value;
            this.chainId = j;
            this.nonce = nonce;
            this.gasPrice = gasPrice;
            this.gasLimit = gasLimit;
            this.tokenContractAddress = tokenContractAddress;
            this.exchangeContractAddress = exchangeContractAddress;
            this.networkId = networkId;
            this.protocol = protocol;
        }
    }
}
