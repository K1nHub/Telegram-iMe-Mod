package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoTransferDataResponse.kt */
/* loaded from: classes3.dex */
public abstract class CryptoTransferDataResponse {
    public /* synthetic */ CryptoTransferDataResponse(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CryptoTransferDataResponse() {
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends CryptoTransferDataResponse {
        private final String contractAddress;
        private final String feeTokenCode;
        private final TransactionParamsResponse.EVM transactionParams;

        public static /* synthetic */ EVM copy$default(EVM evm, String str, TransactionParamsResponse.EVM evm2, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = evm.contractAddress;
            }
            if ((i & 2) != 0) {
                evm2 = evm.transactionParams;
            }
            if ((i & 4) != 0) {
                str2 = evm.feeTokenCode;
            }
            return evm.copy(str, evm2, str2);
        }

        public final String component1() {
            return this.contractAddress;
        }

        public final TransactionParamsResponse.EVM component2() {
            return this.transactionParams;
        }

        public final String component3() {
            return this.feeTokenCode;
        }

        public final EVM copy(String str, TransactionParamsResponse.EVM transactionParams, String feeTokenCode) {
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new EVM(str, transactionParams, feeTokenCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Intrinsics.areEqual(this.contractAddress, evm.contractAddress) && Intrinsics.areEqual(this.transactionParams, evm.transactionParams) && Intrinsics.areEqual(this.feeTokenCode, evm.feeTokenCode);
            }
            return false;
        }

        public int hashCode() {
            String str = this.contractAddress;
            return ((((str == null ? 0 : str.hashCode()) * 31) + this.transactionParams.hashCode()) * 31) + this.feeTokenCode.hashCode();
        }

        public String toString() {
            return "EVM(contractAddress=" + this.contractAddress + ", transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ')';
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        public final TransactionParamsResponse.EVM getTransactionParams() {
            return this.transactionParams;
        }

        public final String getFeeTokenCode() {
            return this.feeTokenCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EVM(String str, TransactionParamsResponse.EVM transactionParams, String feeTokenCode) {
            super(null);
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.contractAddress = str;
            this.transactionParams = transactionParams;
            this.feeTokenCode = feeTokenCode;
        }
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends CryptoTransferDataResponse {
        private final String contractAddress;
        private final GasPriceResponse estimateFees;
        private final TransactionParamsResponse.TRON transactionParams;

        public static /* synthetic */ TRON copy$default(TRON tron, String str, TransactionParamsResponse.TRON tron2, GasPriceResponse gasPriceResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tron.contractAddress;
            }
            if ((i & 2) != 0) {
                tron2 = tron.transactionParams;
            }
            if ((i & 4) != 0) {
                gasPriceResponse = tron.estimateFees;
            }
            return tron.copy(str, tron2, gasPriceResponse);
        }

        public final String component1() {
            return this.contractAddress;
        }

        public final TransactionParamsResponse.TRON component2() {
            return this.transactionParams;
        }

        public final GasPriceResponse component3() {
            return this.estimateFees;
        }

        public final TRON copy(String str, TransactionParamsResponse.TRON transactionParams, GasPriceResponse estimateFees) {
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            return new TRON(str, transactionParams, estimateFees);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TRON) {
                TRON tron = (TRON) obj;
                return Intrinsics.areEqual(this.contractAddress, tron.contractAddress) && Intrinsics.areEqual(this.transactionParams, tron.transactionParams) && Intrinsics.areEqual(this.estimateFees, tron.estimateFees);
            }
            return false;
        }

        public int hashCode() {
            String str = this.contractAddress;
            return ((((str == null ? 0 : str.hashCode()) * 31) + this.transactionParams.hashCode()) * 31) + this.estimateFees.hashCode();
        }

        public String toString() {
            return "TRON(contractAddress=" + this.contractAddress + ", transactionParams=" + this.transactionParams + ", estimateFees=" + this.estimateFees + ')';
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        public final TransactionParamsResponse.TRON getTransactionParams() {
            return this.transactionParams;
        }

        public final GasPriceResponse getEstimateFees() {
            return this.estimateFees;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TRON(String str, TransactionParamsResponse.TRON transactionParams, GasPriceResponse estimateFees) {
            super(null);
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            this.contractAddress = str;
            this.transactionParams = transactionParams;
            this.estimateFees = estimateFees;
        }
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes3.dex */
    public static final class BTC extends CryptoTransferDataResponse {
        private final TransactionParamsResponse.BTC transactionParams;

        public static /* synthetic */ BTC copy$default(BTC btc, TransactionParamsResponse.BTC btc2, int i, Object obj) {
            if ((i & 1) != 0) {
                btc2 = btc.transactionParams;
            }
            return btc.copy(btc2);
        }

        public final TransactionParamsResponse.BTC component1() {
            return this.transactionParams;
        }

        public final BTC copy(TransactionParamsResponse.BTC transactionParams) {
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            return new BTC(transactionParams);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BTC) && Intrinsics.areEqual(this.transactionParams, ((BTC) obj).transactionParams);
        }

        public int hashCode() {
            return this.transactionParams.hashCode();
        }

        public String toString() {
            return "BTC(transactionParams=" + this.transactionParams + ')';
        }

        public final TransactionParamsResponse.BTC getTransactionParams() {
            return this.transactionParams;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BTC(TransactionParamsResponse.BTC transactionParams) {
            super(null);
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            this.transactionParams = transactionParams;
        }
    }
}
