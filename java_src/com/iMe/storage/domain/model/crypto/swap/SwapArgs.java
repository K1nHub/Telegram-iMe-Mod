package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapMethod;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapArgs.kt */
/* loaded from: classes3.dex */
public abstract class SwapArgs implements TransactionArgs {
    private final BigDecimal amount;
    private final long chainId;
    private final BigInteger gasLimit;
    private final BigInteger gasPrice;
    private final TokenDetailed inputToken;
    private final BigInteger nonce;
    private final SwapProtocol swapProtocol;

    public /* synthetic */ SwapArgs(SwapProtocol swapProtocol, BigDecimal bigDecimal, TokenDetailed tokenDetailed, long j, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DefaultConstructorMarker defaultConstructorMarker) {
        this(swapProtocol, bigDecimal, tokenDetailed, j, bigInteger, bigInteger2, bigInteger3);
    }

    private SwapArgs(SwapProtocol swapProtocol, BigDecimal bigDecimal, TokenDetailed tokenDetailed, long j, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.swapProtocol = swapProtocol;
        this.amount = bigDecimal;
        this.inputToken = tokenDetailed;
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

    public TokenDetailed getInputToken() {
        return this.inputToken;
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
        private final int deadlineMinutes;
        private final BigInteger gasLimit;
        private final BigInteger gasPrice;
        private final TokenDetailed inputToken;
        private final String networkId;
        private final BigInteger nonce;
        private final String outputNetworkId;
        private final List<String> path;
        private final String quoteId;
        private final SwapMethod swapMethod;
        private final SwapProtocol swapProtocol;
        private final BigInteger value;

        public final SwapProtocol component1() {
            return getSwapProtocol();
        }

        public final SwapMethod component10() {
            return this.swapMethod;
        }

        public final List<String> component11() {
            return this.path;
        }

        public final int component12() {
            return this.deadlineMinutes;
        }

        public final BigInteger component13() {
            return this.value;
        }

        public final String component14() {
            return this.data;
        }

        public final String component15() {
            return this.quoteId;
        }

        public final String component16() {
            return this.networkId;
        }

        public final String component17() {
            return this.outputNetworkId;
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TokenDetailed component3() {
            return getInputToken();
        }

        public final long component4() {
            return getChainId();
        }

        public final BigInteger component5() {
            return getNonce();
        }

        public final BigInteger component6() {
            return getGasPrice();
        }

        public final BigInteger component7() {
            return getGasLimit();
        }

        public final BigInteger component8() {
            return this.amountOutBound;
        }

        public final String component9() {
            return this.contractAddress;
        }

        public final Dex copy(SwapProtocol swapProtocol, BigDecimal amount, TokenDetailed inputToken, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, BigInteger amountOutBound, String contractAddress, SwapMethod swapMethod, List<String> path, int i, BigInteger value, String data, String quoteId, String networkId, String str) {
            Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(inputToken, "inputToken");
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
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            return new Dex(swapProtocol, amount, inputToken, j, nonce, gasPrice, gasLimit, amountOutBound, contractAddress, swapMethod, path, i, value, data, quoteId, networkId, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Dex) {
                Dex dex = (Dex) obj;
                return getSwapProtocol() == dex.getSwapProtocol() && Intrinsics.areEqual(getAmount(), dex.getAmount()) && Intrinsics.areEqual(getInputToken(), dex.getInputToken()) && getChainId() == dex.getChainId() && Intrinsics.areEqual(getNonce(), dex.getNonce()) && Intrinsics.areEqual(getGasPrice(), dex.getGasPrice()) && Intrinsics.areEqual(getGasLimit(), dex.getGasLimit()) && Intrinsics.areEqual(this.amountOutBound, dex.amountOutBound) && Intrinsics.areEqual(this.contractAddress, dex.contractAddress) && this.swapMethod == dex.swapMethod && Intrinsics.areEqual(this.path, dex.path) && this.deadlineMinutes == dex.deadlineMinutes && Intrinsics.areEqual(this.value, dex.value) && Intrinsics.areEqual(this.data, dex.data) && Intrinsics.areEqual(this.quoteId, dex.quoteId) && Intrinsics.areEqual(this.networkId, dex.networkId) && Intrinsics.areEqual(this.outputNetworkId, dex.outputNetworkId);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((((((((((((((((((((((((((((((getSwapProtocol().hashCode() * 31) + getAmount().hashCode()) * 31) + getInputToken().hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(getChainId())) * 31) + getNonce().hashCode()) * 31) + getGasPrice().hashCode()) * 31) + getGasLimit().hashCode()) * 31) + this.amountOutBound.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.swapMethod.hashCode()) * 31) + this.path.hashCode()) * 31) + this.deadlineMinutes) * 31) + this.value.hashCode()) * 31) + this.data.hashCode()) * 31) + this.quoteId.hashCode()) * 31) + this.networkId.hashCode()) * 31;
            String str = this.outputNetworkId;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Dex(swapProtocol=" + getSwapProtocol() + ", amount=" + getAmount() + ", inputToken=" + getInputToken() + ", chainId=" + getChainId() + ", nonce=" + getNonce() + ", gasPrice=" + getGasPrice() + ", gasLimit=" + getGasLimit() + ", amountOutBound=" + this.amountOutBound + ", contractAddress=" + this.contractAddress + ", swapMethod=" + this.swapMethod + ", path=" + this.path + ", deadlineMinutes=" + this.deadlineMinutes + ", value=" + this.value + ", data=" + this.data + ", quoteId=" + this.quoteId + ", networkId=" + this.networkId + ", outputNetworkId=" + this.outputNetworkId + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
        public SwapProtocol getSwapProtocol() {
            return this.swapProtocol;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
        public TokenDetailed getInputToken() {
            return this.inputToken;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
        public long getChainId() {
            return this.chainId;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
        public BigInteger getNonce() {
            return this.nonce;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
        public BigInteger getGasPrice() {
            return this.gasPrice;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.SwapArgs
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

        public final int getDeadlineMinutes() {
            return this.deadlineMinutes;
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

        public final String getNetworkId() {
            return this.networkId;
        }

        public final String getOutputNetworkId() {
            return this.outputNetworkId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Dex(SwapProtocol swapProtocol, BigDecimal amount, TokenDetailed inputToken, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, BigInteger amountOutBound, String contractAddress, SwapMethod swapMethod, List<String> path, int i, BigInteger value, String data, String quoteId, String networkId, String str) {
            super(swapProtocol, amount, inputToken, j, nonce, gasPrice, gasLimit, null);
            Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(inputToken, "inputToken");
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
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            this.swapProtocol = swapProtocol;
            this.amount = amount;
            this.inputToken = inputToken;
            this.chainId = j;
            this.nonce = nonce;
            this.gasPrice = gasPrice;
            this.gasLimit = gasLimit;
            this.amountOutBound = amountOutBound;
            this.contractAddress = contractAddress;
            this.swapMethod = swapMethod;
            this.path = path;
            this.deadlineMinutes = i;
            this.value = value;
            this.data = data;
            this.quoteId = quoteId;
            this.networkId = networkId;
            this.outputNetworkId = str;
        }

        public final BigInteger getConvertedAmount() {
            return getInputToken().getConvertedAmount(getAmount());
        }

        public final BigInteger getDeadline() {
            BigInteger valueOf = BigInteger.valueOf(TimeUnit.MILLISECONDS.toSeconds(DateExtKt.now()) + TimeUnit.MINUTES.toSeconds(this.deadlineMinutes));
            Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this)");
            return valueOf;
        }
    }
}
