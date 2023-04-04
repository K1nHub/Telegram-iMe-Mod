package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoTransferDataResponse.kt */
/* loaded from: classes3.dex */
public abstract class CryptoTransferDataResponse {
    private final transient String contractAddress;

    public /* synthetic */ CryptoTransferDataResponse(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private CryptoTransferDataResponse(String str) {
        this.contractAddress = str;
    }

    public String getContractAddress() {
        return this.contractAddress;
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends CryptoTransferDataResponse {
        private final String contractAddress;
        private final String feeTokenCode;
        private final TransactionParamsResponse.EVM transactionParams;

        public static /* synthetic */ EVM copy$default(EVM evm, String str, TransactionParamsResponse.EVM evm2, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = evm.getContractAddress();
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
            return getContractAddress();
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
                return Intrinsics.areEqual(getContractAddress(), evm.getContractAddress()) && Intrinsics.areEqual(this.transactionParams, evm.transactionParams) && Intrinsics.areEqual(this.feeTokenCode, evm.feeTokenCode);
            }
            return false;
        }

        public int hashCode() {
            return ((((getContractAddress() == null ? 0 : getContractAddress().hashCode()) * 31) + this.transactionParams.hashCode()) * 31) + this.feeTokenCode.hashCode();
        }

        public String toString() {
            return "EVM(contractAddress=" + getContractAddress() + ", transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ')';
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public String getContractAddress() {
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
            super(str, null);
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
                str = tron.getContractAddress();
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
            return getContractAddress();
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
                return Intrinsics.areEqual(getContractAddress(), tron.getContractAddress()) && Intrinsics.areEqual(this.transactionParams, tron.transactionParams) && Intrinsics.areEqual(this.estimateFees, tron.estimateFees);
            }
            return false;
        }

        public int hashCode() {
            return ((((getContractAddress() == null ? 0 : getContractAddress().hashCode()) * 31) + this.transactionParams.hashCode()) * 31) + this.estimateFees.hashCode();
        }

        public String toString() {
            return "TRON(contractAddress=" + getContractAddress() + ", transactionParams=" + this.transactionParams + ", estimateFees=" + this.estimateFees + ')';
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public String getContractAddress() {
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
            super(str, null);
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            this.contractAddress = str;
            this.transactionParams = transactionParams;
            this.estimateFees = estimateFees;
        }
    }
}
