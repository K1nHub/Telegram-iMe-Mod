package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.boost.GetBoostTransactionDataResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.GasPriceOneItem;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.EthereumMethods;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
import com.smedialink.storage.domain.model.crypto.swap.SwapArgs;
import com.smedialink.storage.domain.model.wallet.swap.SwapMethod;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.crypto.Convert;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
/* compiled from: BoostMapping.kt */
/* loaded from: classes3.dex */
public final class BoostMappingKt {

    /* compiled from: BoostMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EthereumMethods.values().length];
            iArr[EthereumMethods.TRANSFER.ordinal()] = 1;
            iArr[EthereumMethods.SWAP.ordinal()] = 2;
            iArr[EthereumMethods.APPROVE.ordinal()] = 3;
            iArr[EthereumMethods.UNKNOWN.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TransactionArgs mapToDomain(GetBoostTransactionDataResponse getBoostTransactionDataResponse, CryptoAccessManager accessManager) {
        Intrinsics.checkNotNullParameter(getBoostTransactionDataResponse, "<this>");
        Intrinsics.checkNotNullParameter(accessManager, "accessManager");
        int i = WhenMappings.$EnumSwitchMapping$0[EthereumMethods.Companion.map(getBoostTransactionDataResponse.getOldTransactionData().getEthereumMethod()).ordinal()];
        if (i == 1) {
            Convert.Unit unit = Convert.Unit.WEI;
            GetBoostTransactionDataResponse.TransactionMethodParamsResponse.TransferMethodParamsResponse transferMethodParams = getBoostTransactionDataResponse.getOldTransactionData().getTransferMethodParams();
            Intrinsics.checkNotNull(transferMethodParams);
            String to = transferMethodParams.getTo();
            double parseDouble = Double.parseDouble(getBoostTransactionDataResponse.getOldTransactionData().getTransferMethodParams().getValue());
            long chainId = getBoostTransactionDataResponse.getTransactionParams().getChainId();
            BigInteger nonce = getBoostTransactionDataResponse.getTransactionParams().getNonce();
            GasPriceOneItem fastest = getBoostTransactionDataResponse.getTransactionParams().getFastest();
            Intrinsics.checkNotNull(fastest);
            return new TransferArgs.EVM(parseDouble, unit, to, chainId, nonce, fastest.getPrice(), getBoostTransactionDataResponse.getTransactionParams().getFastest().getLimit(), getBoostTransactionDataResponse.getOldTransactionData().getTransferMethodParams().getContractAddress());
        }
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                throw new IllegalStateException("Unsupported transaction".toString());
            }
            TokenInfo.Companion companion = TokenInfo.Companion;
            GetBoostTransactionDataResponse.TransactionMethodParamsResponse.ApproveMethodParamsResponse approveMethodParams = getBoostTransactionDataResponse.getOldTransactionData().getApproveMethodParams();
            Intrinsics.checkNotNull(approveMethodParams);
            TokenInfo.Crypto.Ethereum ethereum = (TokenInfo.Crypto.Ethereum) companion.map(approveMethodParams.getCryptoTokenCode());
            Wallet.EVM evm = (Wallet.EVM) accessManager.getWallet(BlockchainType.EVM);
            String address = evm != null ? evm.getAddress() : null;
            String str = address == null ? "" : address;
            BigInteger bigInteger = new BigInteger(getBoostTransactionDataResponse.getOldTransactionData().getApproveMethodParams().getValue());
            long chainId2 = getBoostTransactionDataResponse.getTransactionParams().getChainId();
            BigInteger nonce2 = getBoostTransactionDataResponse.getTransactionParams().getNonce();
            GasPriceOneItem fastest2 = getBoostTransactionDataResponse.getTransactionParams().getFastest();
            Intrinsics.checkNotNull(fastest2);
            return new ApproveArgs.Dex(ethereum, bigInteger, str, chainId2, nonce2, fastest2.getPrice(), getBoostTransactionDataResponse.getTransactionParams().getFastest().getLimit(), getBoostTransactionDataResponse.getOldTransactionData().getApproveMethodParams().getTokenContractAddress(), getBoostTransactionDataResponse.getOldTransactionData().getApproveMethodParams().getSpenderAddress(), NetworkType.Companion.map(getBoostTransactionDataResponse.getNetworkType()), SwapProtocol.UNISWAP);
        }
        GetBoostTransactionDataResponse.TransactionMethodParamsResponse.SwapMethodParamsResponse swapMethodParams = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams();
        Intrinsics.checkNotNull(swapMethodParams);
        BigDecimal bigDecimal = new BigDecimal(swapMethodParams.getAmountIn());
        BigInteger bigInteger2 = new BigInteger(getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getAmountBound());
        TokenInfo.Companion companion2 = TokenInfo.Companion;
        TokenInfo.Crypto.Ethereum ethereum2 = (TokenInfo.Crypto.Ethereum) companion2.map(getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getInputCryptoTokenCode());
        TokenInfo.Crypto.Ethereum ethereum3 = (TokenInfo.Crypto.Ethereum) companion2.map(getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getOutputCryptoTokenCode());
        long chainId3 = getBoostTransactionDataResponse.getTransactionParams().getChainId();
        BigInteger nonce3 = getBoostTransactionDataResponse.getTransactionParams().getNonce();
        GasPriceOneItem fastest3 = getBoostTransactionDataResponse.getTransactionParams().getFastest();
        Intrinsics.checkNotNull(fastest3);
        BigInteger price = fastest3.getPrice();
        BigInteger limit = getBoostTransactionDataResponse.getTransactionParams().getFastest().getLimit();
        String uniswapContractAddress = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getUniswapContractAddress();
        SwapMethod map = SwapMethod.Companion.map(getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getSwapMethod());
        List<String> path = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getPath();
        int deadlineMinutes = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getDeadlineMinutes();
        String quoteId = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getQuoteId();
        NetworkType.Companion companion3 = NetworkType.Companion;
        NetworkType map2 = companion3.map(getBoostTransactionDataResponse.getNetworkType());
        NetworkType map3 = companion3.map(getBoostTransactionDataResponse.getNetworkType());
        SwapProtocol swapProtocol = SwapProtocol.UNISWAP;
        String value = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getValue();
        BigInteger bigIntegerOrNull = value != null ? StringsKt__StringNumberConversionsJVMKt.toBigIntegerOrNull(value) : null;
        BigInteger bigInteger3 = bigIntegerOrNull == null ? BigInteger.ZERO : bigIntegerOrNull;
        String callData = getBoostTransactionDataResponse.getOldTransactionData().getSwapMethodParams().getCallData();
        String str2 = callData == null ? "" : callData;
        Intrinsics.checkNotNullExpressionValue(bigInteger3, "oldTransactionData.swapM…       ?: BigInteger.ZERO");
        return new SwapArgs.Dex(swapProtocol, bigDecimal, ethereum2, ethereum3, chainId3, nonce3, price, limit, bigInteger2, uniswapContractAddress, map, path, deadlineMinutes, bigInteger3, str2, quoteId, map2, map3);
    }
}
