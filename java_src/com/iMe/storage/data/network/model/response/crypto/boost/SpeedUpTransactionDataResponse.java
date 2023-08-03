package com.iMe.storage.data.network.model.response.crypto.boost;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetBoostTransactionDataResponse.kt */
/* loaded from: classes3.dex */
public final class SpeedUpTransactionDataResponse {
    private final TokenDetailedResponse feeToken;
    private final TransactionMethodParamsResponse oldTransactionData;
    private final TransactionParamsResponse.EVM transactionParams;

    public static /* synthetic */ SpeedUpTransactionDataResponse copy$default(SpeedUpTransactionDataResponse speedUpTransactionDataResponse, TransactionParamsResponse.EVM evm, TransactionMethodParamsResponse transactionMethodParamsResponse, TokenDetailedResponse tokenDetailedResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            evm = speedUpTransactionDataResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            transactionMethodParamsResponse = speedUpTransactionDataResponse.oldTransactionData;
        }
        if ((i & 4) != 0) {
            tokenDetailedResponse = speedUpTransactionDataResponse.feeToken;
        }
        return speedUpTransactionDataResponse.copy(evm, transactionMethodParamsResponse, tokenDetailedResponse);
    }

    public final TransactionParamsResponse.EVM component1() {
        return this.transactionParams;
    }

    public final TransactionMethodParamsResponse component2() {
        return this.oldTransactionData;
    }

    public final TokenDetailedResponse component3() {
        return this.feeToken;
    }

    public final SpeedUpTransactionDataResponse copy(TransactionParamsResponse.EVM transactionParams, TransactionMethodParamsResponse oldTransactionData, TokenDetailedResponse feeToken) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(oldTransactionData, "oldTransactionData");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        return new SpeedUpTransactionDataResponse(transactionParams, oldTransactionData, feeToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SpeedUpTransactionDataResponse) {
            SpeedUpTransactionDataResponse speedUpTransactionDataResponse = (SpeedUpTransactionDataResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, speedUpTransactionDataResponse.transactionParams) && Intrinsics.areEqual(this.oldTransactionData, speedUpTransactionDataResponse.oldTransactionData) && Intrinsics.areEqual(this.feeToken, speedUpTransactionDataResponse.feeToken);
        }
        return false;
    }

    public int hashCode() {
        return (((this.transactionParams.hashCode() * 31) + this.oldTransactionData.hashCode()) * 31) + this.feeToken.hashCode();
    }

    public String toString() {
        return "SpeedUpTransactionDataResponse(transactionParams=" + this.transactionParams + ", oldTransactionData=" + this.oldTransactionData + ", feeToken=" + this.feeToken + ')';
    }

    public SpeedUpTransactionDataResponse(TransactionParamsResponse.EVM transactionParams, TransactionMethodParamsResponse oldTransactionData, TokenDetailedResponse feeToken) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(oldTransactionData, "oldTransactionData");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        this.transactionParams = transactionParams;
        this.oldTransactionData = oldTransactionData;
        this.feeToken = feeToken;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final TransactionMethodParamsResponse getOldTransactionData() {
        return this.oldTransactionData;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    /* compiled from: GetBoostTransactionDataResponse.kt */
    /* loaded from: classes3.dex */
    public static final class TransactionMethodParamsResponse {
        private final String contractMethod;
        private final TransferMethodParamsResponse transferMethodParams;

        public static /* synthetic */ TransactionMethodParamsResponse copy$default(TransactionMethodParamsResponse transactionMethodParamsResponse, String str, TransferMethodParamsResponse transferMethodParamsResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                str = transactionMethodParamsResponse.contractMethod;
            }
            if ((i & 2) != 0) {
                transferMethodParamsResponse = transactionMethodParamsResponse.transferMethodParams;
            }
            return transactionMethodParamsResponse.copy(str, transferMethodParamsResponse);
        }

        public final String component1() {
            return this.contractMethod;
        }

        public final TransferMethodParamsResponse component2() {
            return this.transferMethodParams;
        }

        public final TransactionMethodParamsResponse copy(String contractMethod, TransferMethodParamsResponse transferMethodParamsResponse) {
            Intrinsics.checkNotNullParameter(contractMethod, "contractMethod");
            return new TransactionMethodParamsResponse(contractMethod, transferMethodParamsResponse);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TransactionMethodParamsResponse) {
                TransactionMethodParamsResponse transactionMethodParamsResponse = (TransactionMethodParamsResponse) obj;
                return Intrinsics.areEqual(this.contractMethod, transactionMethodParamsResponse.contractMethod) && Intrinsics.areEqual(this.transferMethodParams, transactionMethodParamsResponse.transferMethodParams);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.contractMethod.hashCode() * 31;
            TransferMethodParamsResponse transferMethodParamsResponse = this.transferMethodParams;
            return hashCode + (transferMethodParamsResponse == null ? 0 : transferMethodParamsResponse.hashCode());
        }

        public String toString() {
            return "TransactionMethodParamsResponse(contractMethod=" + this.contractMethod + ", transferMethodParams=" + this.transferMethodParams + ')';
        }

        public TransactionMethodParamsResponse(String contractMethod, TransferMethodParamsResponse transferMethodParamsResponse) {
            Intrinsics.checkNotNullParameter(contractMethod, "contractMethod");
            this.contractMethod = contractMethod;
            this.transferMethodParams = transferMethodParamsResponse;
        }

        public final String getContractMethod() {
            return this.contractMethod;
        }

        public final TransferMethodParamsResponse getTransferMethodParams() {
            return this.transferMethodParams;
        }

        /* compiled from: GetBoostTransactionDataResponse.kt */
        /* loaded from: classes3.dex */
        public static final class TransferMethodParamsResponse {
            private final String from;

            /* renamed from: to */
            private final String f386to;
            private final TokenResponse token;
            private final String value;

            public static /* synthetic */ TransferMethodParamsResponse copy$default(TransferMethodParamsResponse transferMethodParamsResponse, String str, String str2, String str3, TokenResponse tokenResponse, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = transferMethodParamsResponse.from;
                }
                if ((i & 2) != 0) {
                    str2 = transferMethodParamsResponse.f386to;
                }
                if ((i & 4) != 0) {
                    str3 = transferMethodParamsResponse.value;
                }
                if ((i & 8) != 0) {
                    tokenResponse = transferMethodParamsResponse.token;
                }
                return transferMethodParamsResponse.copy(str, str2, str3, tokenResponse);
            }

            public final String component1() {
                return this.from;
            }

            public final String component2() {
                return this.f386to;
            }

            public final String component3() {
                return this.value;
            }

            public final TokenResponse component4() {
                return this.token;
            }

            public final TransferMethodParamsResponse copy(String from, String to, String value, TokenResponse token) {
                Intrinsics.checkNotNullParameter(from, "from");
                Intrinsics.checkNotNullParameter(to, "to");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(token, "token");
                return new TransferMethodParamsResponse(from, to, value, token);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof TransferMethodParamsResponse) {
                    TransferMethodParamsResponse transferMethodParamsResponse = (TransferMethodParamsResponse) obj;
                    return Intrinsics.areEqual(this.from, transferMethodParamsResponse.from) && Intrinsics.areEqual(this.f386to, transferMethodParamsResponse.f386to) && Intrinsics.areEqual(this.value, transferMethodParamsResponse.value) && Intrinsics.areEqual(this.token, transferMethodParamsResponse.token);
                }
                return false;
            }

            public int hashCode() {
                return (((((this.from.hashCode() * 31) + this.f386to.hashCode()) * 31) + this.value.hashCode()) * 31) + this.token.hashCode();
            }

            public String toString() {
                return "TransferMethodParamsResponse(from=" + this.from + ", to=" + this.f386to + ", value=" + this.value + ", token=" + this.token + ')';
            }

            public TransferMethodParamsResponse(String from, String to, String value, TokenResponse token) {
                Intrinsics.checkNotNullParameter(from, "from");
                Intrinsics.checkNotNullParameter(to, "to");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(token, "token");
                this.from = from;
                this.f386to = to;
                this.value = value;
                this.token = token;
            }

            public final String getFrom() {
                return this.from;
            }

            public final String getTo() {
                return this.f386to;
            }

            public final String getValue() {
                return this.value;
            }

            public final TokenResponse getToken() {
                return this.token;
            }
        }
    }
}
