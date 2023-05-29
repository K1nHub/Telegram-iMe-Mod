package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.math.BigInteger;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionParamsResponse.kt */
/* loaded from: classes3.dex */
public abstract class TransactionParamsResponse {
    public /* synthetic */ TransactionParamsResponse(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private TransactionParamsResponse() {
    }

    /* compiled from: TransactionParamsResponse.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends TransactionParamsResponse {
        private final long chainId;
        private final GasPriceResponse fast;
        private final GasPriceResponse fastest;
        private final BigInteger nonce;
        private final GasPriceResponse safeLow;

        public static /* synthetic */ EVM copy$default(EVM evm, GasPriceResponse gasPriceResponse, GasPriceResponse gasPriceResponse2, GasPriceResponse gasPriceResponse3, BigInteger bigInteger, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                gasPriceResponse = evm.fastest;
            }
            if ((i & 2) != 0) {
                gasPriceResponse2 = evm.fast;
            }
            GasPriceResponse gasPriceResponse4 = gasPriceResponse2;
            if ((i & 4) != 0) {
                gasPriceResponse3 = evm.safeLow;
            }
            GasPriceResponse gasPriceResponse5 = gasPriceResponse3;
            if ((i & 8) != 0) {
                bigInteger = evm.nonce;
            }
            BigInteger bigInteger2 = bigInteger;
            if ((i & 16) != 0) {
                j = evm.chainId;
            }
            return evm.copy(gasPriceResponse, gasPriceResponse4, gasPriceResponse5, bigInteger2, j);
        }

        public final GasPriceResponse component1() {
            return this.fastest;
        }

        public final GasPriceResponse component2() {
            return this.fast;
        }

        public final GasPriceResponse component3() {
            return this.safeLow;
        }

        public final BigInteger component4() {
            return this.nonce;
        }

        public final long component5() {
            return this.chainId;
        }

        public final EVM copy(GasPriceResponse gasPriceResponse, GasPriceResponse fast, GasPriceResponse gasPriceResponse2, BigInteger nonce, long j) {
            Intrinsics.checkNotNullParameter(fast, "fast");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            return new EVM(gasPriceResponse, fast, gasPriceResponse2, nonce, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Intrinsics.areEqual(this.fastest, evm.fastest) && Intrinsics.areEqual(this.fast, evm.fast) && Intrinsics.areEqual(this.safeLow, evm.safeLow) && Intrinsics.areEqual(this.nonce, evm.nonce) && this.chainId == evm.chainId;
            }
            return false;
        }

        public int hashCode() {
            GasPriceResponse gasPriceResponse = this.fastest;
            int hashCode = (((gasPriceResponse == null ? 0 : gasPriceResponse.hashCode()) * 31) + this.fast.hashCode()) * 31;
            GasPriceResponse gasPriceResponse2 = this.safeLow;
            return ((((hashCode + (gasPriceResponse2 != null ? gasPriceResponse2.hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.chainId);
        }

        public String toString() {
            return "EVM(fastest=" + this.fastest + ", fast=" + this.fast + ", safeLow=" + this.safeLow + ", nonce=" + this.nonce + ", chainId=" + this.chainId + ')';
        }

        public final GasPriceResponse getFastest() {
            return this.fastest;
        }

        public final GasPriceResponse getFast() {
            return this.fast;
        }

        public final GasPriceResponse getSafeLow() {
            return this.safeLow;
        }

        public final BigInteger getNonce() {
            return this.nonce;
        }

        public final long getChainId() {
            return this.chainId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EVM(GasPriceResponse gasPriceResponse, GasPriceResponse fast, GasPriceResponse gasPriceResponse2, BigInteger nonce, long j) {
            super(null);
            Intrinsics.checkNotNullParameter(fast, "fast");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            this.fastest = gasPriceResponse;
            this.fast = fast;
            this.safeLow = gasPriceResponse2;
            this.nonce = nonce;
            this.chainId = j;
        }
    }

    /* compiled from: TransactionParamsResponse.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends TransactionParamsResponse {
        private final TronBlockHeaderResponse blockHeader;
        private final BigInteger feeLimit;

        public static /* synthetic */ TRON copy$default(TRON tron, BigInteger bigInteger, TronBlockHeaderResponse tronBlockHeaderResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                bigInteger = tron.feeLimit;
            }
            if ((i & 2) != 0) {
                tronBlockHeaderResponse = tron.blockHeader;
            }
            return tron.copy(bigInteger, tronBlockHeaderResponse);
        }

        public final BigInteger component1() {
            return this.feeLimit;
        }

        public final TronBlockHeaderResponse component2() {
            return this.blockHeader;
        }

        public final TRON copy(BigInteger feeLimit, TronBlockHeaderResponse blockHeader) {
            Intrinsics.checkNotNullParameter(feeLimit, "feeLimit");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            return new TRON(feeLimit, blockHeader);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TRON) {
                TRON tron = (TRON) obj;
                return Intrinsics.areEqual(this.feeLimit, tron.feeLimit) && Intrinsics.areEqual(this.blockHeader, tron.blockHeader);
            }
            return false;
        }

        public int hashCode() {
            return (this.feeLimit.hashCode() * 31) + this.blockHeader.hashCode();
        }

        public String toString() {
            return "TRON(feeLimit=" + this.feeLimit + ", blockHeader=" + this.blockHeader + ')';
        }

        public final BigInteger getFeeLimit() {
            return this.feeLimit;
        }

        public final TronBlockHeaderResponse getBlockHeader() {
            return this.blockHeader;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TRON(BigInteger feeLimit, TronBlockHeaderResponse blockHeader) {
            super(null);
            Intrinsics.checkNotNullParameter(feeLimit, "feeLimit");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            this.feeLimit = feeLimit;
            this.blockHeader = blockHeader;
        }
    }

    /* compiled from: TransactionParamsResponse.kt */
    /* loaded from: classes3.dex */
    public static final class BTC extends TransactionParamsResponse {
        private final String changeAddress;
        private final BitcoinGasPriceResponse fast;
        private final BitcoinGasPriceResponse fastest;
        private final BitcoinGasPriceResponse safeLow;
        private final List<BitcoinUnspentOutputResponse> utxos;

        public static /* synthetic */ BTC copy$default(BTC btc, BitcoinGasPriceResponse bitcoinGasPriceResponse, BitcoinGasPriceResponse bitcoinGasPriceResponse2, BitcoinGasPriceResponse bitcoinGasPriceResponse3, List list, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                bitcoinGasPriceResponse = btc.fastest;
            }
            if ((i & 2) != 0) {
                bitcoinGasPriceResponse2 = btc.fast;
            }
            BitcoinGasPriceResponse bitcoinGasPriceResponse4 = bitcoinGasPriceResponse2;
            if ((i & 4) != 0) {
                bitcoinGasPriceResponse3 = btc.safeLow;
            }
            BitcoinGasPriceResponse bitcoinGasPriceResponse5 = bitcoinGasPriceResponse3;
            List<BitcoinUnspentOutputResponse> list2 = list;
            if ((i & 8) != 0) {
                list2 = btc.utxos;
            }
            List list3 = list2;
            if ((i & 16) != 0) {
                str = btc.changeAddress;
            }
            return btc.copy(bitcoinGasPriceResponse, bitcoinGasPriceResponse4, bitcoinGasPriceResponse5, list3, str);
        }

        public final BitcoinGasPriceResponse component1() {
            return this.fastest;
        }

        public final BitcoinGasPriceResponse component2() {
            return this.fast;
        }

        public final BitcoinGasPriceResponse component3() {
            return this.safeLow;
        }

        public final List<BitcoinUnspentOutputResponse> component4() {
            return this.utxos;
        }

        public final String component5() {
            return this.changeAddress;
        }

        public final BTC copy(BitcoinGasPriceResponse fastest, BitcoinGasPriceResponse fast, BitcoinGasPriceResponse safeLow, List<BitcoinUnspentOutputResponse> utxos, String changeAddress) {
            Intrinsics.checkNotNullParameter(fastest, "fastest");
            Intrinsics.checkNotNullParameter(fast, "fast");
            Intrinsics.checkNotNullParameter(safeLow, "safeLow");
            Intrinsics.checkNotNullParameter(utxos, "utxos");
            Intrinsics.checkNotNullParameter(changeAddress, "changeAddress");
            return new BTC(fastest, fast, safeLow, utxos, changeAddress);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BTC) {
                BTC btc = (BTC) obj;
                return Intrinsics.areEqual(this.fastest, btc.fastest) && Intrinsics.areEqual(this.fast, btc.fast) && Intrinsics.areEqual(this.safeLow, btc.safeLow) && Intrinsics.areEqual(this.utxos, btc.utxos) && Intrinsics.areEqual(this.changeAddress, btc.changeAddress);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.fastest.hashCode() * 31) + this.fast.hashCode()) * 31) + this.safeLow.hashCode()) * 31) + this.utxos.hashCode()) * 31) + this.changeAddress.hashCode();
        }

        public String toString() {
            return "BTC(fastest=" + this.fastest + ", fast=" + this.fast + ", safeLow=" + this.safeLow + ", utxos=" + this.utxos + ", changeAddress=" + this.changeAddress + ')';
        }

        public final BitcoinGasPriceResponse getFastest() {
            return this.fastest;
        }

        public final BitcoinGasPriceResponse getFast() {
            return this.fast;
        }

        public final BitcoinGasPriceResponse getSafeLow() {
            return this.safeLow;
        }

        public final List<BitcoinUnspentOutputResponse> getUtxos() {
            return this.utxos;
        }

        public final String getChangeAddress() {
            return this.changeAddress;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BTC(BitcoinGasPriceResponse fastest, BitcoinGasPriceResponse fast, BitcoinGasPriceResponse safeLow, List<BitcoinUnspentOutputResponse> utxos, String changeAddress) {
            super(null);
            Intrinsics.checkNotNullParameter(fastest, "fastest");
            Intrinsics.checkNotNullParameter(fast, "fast");
            Intrinsics.checkNotNullParameter(safeLow, "safeLow");
            Intrinsics.checkNotNullParameter(utxos, "utxos");
            Intrinsics.checkNotNullParameter(changeAddress, "changeAddress");
            this.fastest = fastest;
            this.fast = fast;
            this.safeLow = safeLow;
            this.utxos = utxos;
            this.changeAddress = changeAddress;
        }
    }
}
