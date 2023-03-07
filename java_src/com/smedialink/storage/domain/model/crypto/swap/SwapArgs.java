package com.smedialink.storage.domain.model.crypto.swap;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.wallet.swap.SwapMethod;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapArgs.kt */
/* loaded from: classes3.dex */
public abstract class SwapArgs implements TransactionArgs {
    private final BigDecimal amount;
    private final long chainId;
    private final BigInteger gasLimit;
    private final BigInteger gasPrice;
    private final TokenInfo.Crypto inputToken;
    private final BigInteger nonce;
    private final TokenInfo.Crypto outputToken;
    private final SwapProtocol swapProtocol;

    public /* synthetic */ SwapArgs(SwapProtocol swapProtocol, BigDecimal bigDecimal, TokenInfo.Crypto crypto, TokenInfo.Crypto crypto2, long j, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DefaultConstructorMarker defaultConstructorMarker) {
        this(swapProtocol, bigDecimal, crypto, crypto2, j, bigInteger, bigInteger2, bigInteger3);
    }

    private SwapArgs(SwapProtocol swapProtocol, BigDecimal bigDecimal, TokenInfo.Crypto crypto, TokenInfo.Crypto crypto2, long j, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.swapProtocol = swapProtocol;
        this.amount = bigDecimal;
        this.inputToken = crypto;
        this.outputToken = crypto2;
        this.chainId = j;
        this.nonce = bigInteger;
        this.gasPrice = bigInteger2;
        this.gasLimit = bigInteger3;
    }

    public SwapProtocol getSwapProtocol() {
        return this.swapProtocol;
    }

    public BigDecimal getAmount() {
        return this.amount;
    }

    public TokenInfo.Crypto getInputToken() {
        return this.inputToken;
    }

    public TokenInfo.Crypto getOutputToken() {
        return this.outputToken;
    }

    public long getChainId() {
        return this.chainId;
    }

    public BigInteger getNonce() {
        return this.nonce;
    }

    public BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public BigInteger getGasLimit() {
        return this.gasLimit;
    }

    /* compiled from: SwapArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Dex extends SwapArgs {
        private final BigDecimal amount;
        private final BigInteger amountOutBound;
        private final long chainId;
        private final String contractAddress;
        private final String data;
        private final int deadline;
        private final BigInteger gasLimit;
        private final BigInteger gasPrice;
        private final TokenInfo.Crypto.Ethereum inputToken;
        private final NetworkType networkType;
        private final BigInteger nonce;
        private final NetworkType outputNetworkType;
        private final TokenInfo.Crypto.Ethereum outputToken;
        private final List<String> path;
        private final String quoteId;
        private final SwapMethod swapMethod;
        private final SwapProtocol swapProtocol;
        private final BigInteger value;

        public final SwapProtocol component1() {
            return getSwapProtocol();
        }

        public final String component10() {
            return this.contractAddress;
        }

        public final SwapMethod component11() {
            return this.swapMethod;
        }

        public final List<String> component12() {
            return this.path;
        }

        public final int component13() {
            return this.deadline;
        }

        public final BigInteger component14() {
            return this.value;
        }

        public final String component15() {
            return this.data;
        }

        public final String component16() {
            return this.quoteId;
        }

        public final NetworkType component17() {
            return this.networkType;
        }

        public final NetworkType component18() {
            return this.outputNetworkType;
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TokenInfo.Crypto.Ethereum component3() {
            return getInputToken();
        }

        public final TokenInfo.Crypto.Ethereum component4() {
            return getOutputToken();
        }

        public final long component5() {
            return getChainId();
        }

        public final BigInteger component6() {
            return getNonce();
        }

        public final BigInteger component7() {
            return getGasPrice();
        }

        public final BigInteger component8() {
            return getGasLimit();
        }

        public final BigInteger component9() {
            return this.amountOutBound;
        }

        public final Dex copy(SwapProtocol swapProtocol, BigDecimal amount, TokenInfo.Crypto.Ethereum inputToken, TokenInfo.Crypto.Ethereum outputToken, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, BigInteger amountOutBound, String contractAddress, SwapMethod swapMethod, List<String> path, int i, BigInteger value, String data, String quoteId, NetworkType networkType, NetworkType networkType2) {
            Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(inputToken, "inputToken");
            Intrinsics.checkNotNullParameter(outputToken, "outputToken");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            Intrinsics.checkNotNullParameter(amountOutBound, "amountOutBound");
            Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
            Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(quoteId, "quoteId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            return new Dex(swapProtocol, amount, inputToken, outputToken, j, nonce, gasPrice, gasLimit, amountOutBound, contractAddress, swapMethod, path, i, value, data, quoteId, networkType, networkType2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Dex) {
                Dex dex = (Dex) obj;
                return getSwapProtocol() == dex.getSwapProtocol() && Intrinsics.areEqual(getAmount(), dex.getAmount()) && Intrinsics.areEqual(getInputToken(), dex.getInputToken()) && Intrinsics.areEqual(getOutputToken(), dex.getOutputToken()) && getChainId() == dex.getChainId() && Intrinsics.areEqual(getNonce(), dex.getNonce()) && Intrinsics.areEqual(getGasPrice(), dex.getGasPrice()) && Intrinsics.areEqual(getGasLimit(), dex.getGasLimit()) && Intrinsics.areEqual(this.amountOutBound, dex.amountOutBound) && Intrinsics.areEqual(this.contractAddress, dex.contractAddress) && this.swapMethod == dex.swapMethod && Intrinsics.areEqual(this.path, dex.path) && this.deadline == dex.deadline && Intrinsics.areEqual(this.value, dex.value) && Intrinsics.areEqual(this.data, dex.data) && Intrinsics.areEqual(this.quoteId, dex.quoteId) && this.networkType == dex.networkType && this.outputNetworkType == dex.outputNetworkType;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((((((((((((((((((((((((((((((((getSwapProtocol().hashCode() * 31) + getAmount().hashCode()) * 31) + getInputToken().hashCode()) * 31) + getOutputToken().hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(getChainId())) * 31) + getNonce().hashCode()) * 31) + getGasPrice().hashCode()) * 31) + getGasLimit().hashCode()) * 31) + this.amountOutBound.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.swapMethod.hashCode()) * 31) + this.path.hashCode()) * 31) + this.deadline) * 31) + this.value.hashCode()) * 31) + this.data.hashCode()) * 31) + this.quoteId.hashCode()) * 31) + this.networkType.hashCode()) * 31;
            NetworkType networkType = this.outputNetworkType;
            return hashCode + (networkType == null ? 0 : networkType.hashCode());
        }

        public String toString() {
            return "Dex(swapProtocol=" + getSwapProtocol() + ", amount=" + getAmount() + ", inputToken=" + getInputToken() + ", outputToken=" + getOutputToken() + ", chainId=" + getChainId() + ", nonce=" + getNonce() + ", gasPrice=" + getGasPrice() + ", gasLimit=" + getGasLimit() + ", amountOutBound=" + this.amountOutBound + ", contractAddress=" + this.contractAddress + ", swapMethod=" + this.swapMethod + ", path=" + this.path + ", deadline=" + this.deadline + ", value=" + this.value + ", data=" + this.data + ", quoteId=" + this.quoteId + ", networkType=" + this.networkType + ", outputNetworkType=" + this.outputNetworkType + ')';
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public SwapProtocol getSwapProtocol() {
            return this.swapProtocol;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public TokenInfo.Crypto.Ethereum getInputToken() {
            return this.inputToken;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public TokenInfo.Crypto.Ethereum getOutputToken() {
            return this.outputToken;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public long getChainId() {
            return this.chainId;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public BigInteger getNonce() {
            return this.nonce;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public BigInteger getGasPrice() {
            return this.gasPrice;
        }

        @Override // com.smedialink.storage.domain.model.crypto.swap.SwapArgs
        public BigInteger getGasLimit() {
            return this.gasLimit;
        }

        public final BigInteger getAmountOutBound() {
            return this.amountOutBound;
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        public final SwapMethod getSwapMethod() {
            return this.swapMethod;
        }

        public final List<String> getPath() {
            return this.path;
        }

        public final int getDeadline() {
            return this.deadline;
        }

        public final BigInteger getValue() {
            return this.value;
        }

        public final String getData() {
            return this.data;
        }

        public final String getQuoteId() {
            return this.quoteId;
        }

        public final NetworkType getNetworkType() {
            return this.networkType;
        }

        public final NetworkType getOutputNetworkType() {
            return this.outputNetworkType;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Dex(SwapProtocol swapProtocol, BigDecimal amount, TokenInfo.Crypto.Ethereum inputToken, TokenInfo.Crypto.Ethereum outputToken, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, BigInteger amountOutBound, String contractAddress, SwapMethod swapMethod, List<String> path, int i, BigInteger value, String data, String quoteId, NetworkType networkType, NetworkType networkType2) {
            super(swapProtocol, amount, inputToken, outputToken, j, nonce, gasPrice, gasLimit, null);
            Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(inputToken, "inputToken");
            Intrinsics.checkNotNullParameter(outputToken, "outputToken");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            Intrinsics.checkNotNullParameter(amountOutBound, "amountOutBound");
            Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
            Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(quoteId, "quoteId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.swapProtocol = swapProtocol;
            this.amount = amount;
            this.inputToken = inputToken;
            this.outputToken = outputToken;
            this.chainId = j;
            this.nonce = nonce;
            this.gasPrice = gasPrice;
            this.gasLimit = gasLimit;
            this.amountOutBound = amountOutBound;
            this.contractAddress = contractAddress;
            this.swapMethod = swapMethod;
            this.path = path;
            this.deadline = i;
            this.value = value;
            this.data = data;
            this.quoteId = quoteId;
            this.networkType = networkType;
            this.outputNetworkType = networkType2;
        }
    }
}
