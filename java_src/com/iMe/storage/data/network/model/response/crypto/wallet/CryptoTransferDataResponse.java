package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.storage.data.network.model.response.crypto.ton.TonFeesResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoTransferDataResponse.kt */
/* loaded from: classes4.dex */
public abstract class CryptoTransferDataResponse {
    private final transient TokenDetailedResponse feeToken;
    private final transient TokenDetailedResponse token;
    private final transient TransactionParamsResponse transactionParams;

    public /* synthetic */ CryptoTransferDataResponse(TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, TransactionParamsResponse transactionParamsResponse, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenDetailedResponse, tokenDetailedResponse2, transactionParamsResponse);
    }

    private CryptoTransferDataResponse(TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, TransactionParamsResponse transactionParamsResponse) {
        this.feeToken = tokenDetailedResponse;
        this.token = tokenDetailedResponse2;
        this.transactionParams = transactionParamsResponse;
    }

    public TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    public TokenDetailedResponse getToken() {
        return this.token;
    }

    public TransactionParamsResponse getTransactionParams() {
        return this.transactionParams;
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes4.dex */
    public static final class EVM extends CryptoTransferDataResponse {
        private final TokenDetailedResponse feeToken;
        private final TokenDetailedResponse token;
        private final TransactionParamsResponse.EVM transactionParams;

        public static /* synthetic */ EVM copy$default(EVM evm, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, TransactionParamsResponse.EVM evm2, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenDetailedResponse = evm.getFeeToken();
            }
            if ((i & 2) != 0) {
                tokenDetailedResponse2 = evm.getToken();
            }
            if ((i & 4) != 0) {
                evm2 = evm.getTransactionParams();
            }
            return evm.copy(tokenDetailedResponse, tokenDetailedResponse2, evm2);
        }

        public final TokenDetailedResponse component1() {
            return getFeeToken();
        }

        public final TokenDetailedResponse component2() {
            return getToken();
        }

        public final TransactionParamsResponse.EVM component3() {
            return getTransactionParams();
        }

        public final EVM copy(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.EVM transactionParams) {
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            return new EVM(feeToken, token, transactionParams);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Intrinsics.areEqual(getFeeToken(), evm.getFeeToken()) && Intrinsics.areEqual(getToken(), evm.getToken()) && Intrinsics.areEqual(getTransactionParams(), evm.getTransactionParams());
            }
            return false;
        }

        public int hashCode() {
            return (((getFeeToken().hashCode() * 31) + getToken().hashCode()) * 31) + getTransactionParams().hashCode();
        }

        public String toString() {
            return "EVM(feeToken=" + getFeeToken() + ", token=" + getToken() + ", transactionParams=" + getTransactionParams() + ')';
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getFeeToken() {
            return this.feeToken;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TransactionParamsResponse.EVM getTransactionParams() {
            return this.transactionParams;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EVM(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.EVM transactionParams) {
            super(feeToken, token, transactionParams, null);
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            this.feeToken = feeToken;
            this.token = token;
            this.transactionParams = transactionParams;
        }
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes4.dex */
    public static final class TRON extends CryptoTransferDataResponse {
        private final GasPriceResponse estimateFees;
        private final TokenDetailedResponse feeToken;
        private final TokenDetailedResponse token;
        private final TransactionParamsResponse.TRON transactionParams;

        public static /* synthetic */ TRON copy$default(TRON tron, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, TransactionParamsResponse.TRON tron2, GasPriceResponse gasPriceResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenDetailedResponse = tron.getFeeToken();
            }
            if ((i & 2) != 0) {
                tokenDetailedResponse2 = tron.getToken();
            }
            if ((i & 4) != 0) {
                tron2 = tron.getTransactionParams();
            }
            if ((i & 8) != 0) {
                gasPriceResponse = tron.estimateFees;
            }
            return tron.copy(tokenDetailedResponse, tokenDetailedResponse2, tron2, gasPriceResponse);
        }

        public final TokenDetailedResponse component1() {
            return getFeeToken();
        }

        public final TokenDetailedResponse component2() {
            return getToken();
        }

        public final TransactionParamsResponse.TRON component3() {
            return getTransactionParams();
        }

        public final GasPriceResponse component4() {
            return this.estimateFees;
        }

        public final TRON copy(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.TRON transactionParams, GasPriceResponse estimateFees) {
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            return new TRON(feeToken, token, transactionParams, estimateFees);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TRON) {
                TRON tron = (TRON) obj;
                return Intrinsics.areEqual(getFeeToken(), tron.getFeeToken()) && Intrinsics.areEqual(getToken(), tron.getToken()) && Intrinsics.areEqual(getTransactionParams(), tron.getTransactionParams()) && Intrinsics.areEqual(this.estimateFees, tron.estimateFees);
            }
            return false;
        }

        public int hashCode() {
            return (((((getFeeToken().hashCode() * 31) + getToken().hashCode()) * 31) + getTransactionParams().hashCode()) * 31) + this.estimateFees.hashCode();
        }

        public String toString() {
            return "TRON(feeToken=" + getFeeToken() + ", token=" + getToken() + ", transactionParams=" + getTransactionParams() + ", estimateFees=" + this.estimateFees + ')';
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getFeeToken() {
            return this.feeToken;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TransactionParamsResponse.TRON getTransactionParams() {
            return this.transactionParams;
        }

        public final GasPriceResponse getEstimateFees() {
            return this.estimateFees;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TRON(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.TRON transactionParams, GasPriceResponse estimateFees) {
            super(feeToken, token, transactionParams, null);
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            this.feeToken = feeToken;
            this.token = token;
            this.transactionParams = transactionParams;
            this.estimateFees = estimateFees;
        }
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes4.dex */
    public static final class TON extends CryptoTransferDataResponse {
        private final TonFeesResponse estimateFees;
        private final TokenDetailedResponse feeToken;
        private final TokenDetailedResponse token;
        private final TransactionParamsResponse.TON transactionParams;

        public static /* synthetic */ TON copy$default(TON ton, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, TransactionParamsResponse.TON ton2, TonFeesResponse tonFeesResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenDetailedResponse = ton.getFeeToken();
            }
            if ((i & 2) != 0) {
                tokenDetailedResponse2 = ton.getToken();
            }
            if ((i & 4) != 0) {
                ton2 = ton.getTransactionParams();
            }
            if ((i & 8) != 0) {
                tonFeesResponse = ton.estimateFees;
            }
            return ton.copy(tokenDetailedResponse, tokenDetailedResponse2, ton2, tonFeesResponse);
        }

        public final TokenDetailedResponse component1() {
            return getFeeToken();
        }

        public final TokenDetailedResponse component2() {
            return getToken();
        }

        public final TransactionParamsResponse.TON component3() {
            return getTransactionParams();
        }

        public final TonFeesResponse component4() {
            return this.estimateFees;
        }

        public final TON copy(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.TON transactionParams, TonFeesResponse estimateFees) {
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            return new TON(feeToken, token, transactionParams, estimateFees);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TON) {
                TON ton = (TON) obj;
                return Intrinsics.areEqual(getFeeToken(), ton.getFeeToken()) && Intrinsics.areEqual(getToken(), ton.getToken()) && Intrinsics.areEqual(getTransactionParams(), ton.getTransactionParams()) && Intrinsics.areEqual(this.estimateFees, ton.estimateFees);
            }
            return false;
        }

        public int hashCode() {
            return (((((getFeeToken().hashCode() * 31) + getToken().hashCode()) * 31) + getTransactionParams().hashCode()) * 31) + this.estimateFees.hashCode();
        }

        public String toString() {
            return "TON(feeToken=" + getFeeToken() + ", token=" + getToken() + ", transactionParams=" + getTransactionParams() + ", estimateFees=" + this.estimateFees + ')';
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getFeeToken() {
            return this.feeToken;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TransactionParamsResponse.TON getTransactionParams() {
            return this.transactionParams;
        }

        public final TonFeesResponse getEstimateFees() {
            return this.estimateFees;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TON(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.TON transactionParams, TonFeesResponse estimateFees) {
            super(feeToken, token, transactionParams, null);
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
            this.feeToken = feeToken;
            this.token = token;
            this.transactionParams = transactionParams;
            this.estimateFees = estimateFees;
        }
    }

    /* compiled from: CryptoTransferDataResponse.kt */
    /* loaded from: classes4.dex */
    public static final class BTC extends CryptoTransferDataResponse {
        private final TokenDetailedResponse feeToken;
        private final TokenDetailedResponse token;
        private final TransactionParamsResponse.BTC transactionParams;

        public static /* synthetic */ BTC copy$default(BTC btc, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, TransactionParamsResponse.BTC btc2, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenDetailedResponse = btc.getFeeToken();
            }
            if ((i & 2) != 0) {
                tokenDetailedResponse2 = btc.getToken();
            }
            if ((i & 4) != 0) {
                btc2 = btc.getTransactionParams();
            }
            return btc.copy(tokenDetailedResponse, tokenDetailedResponse2, btc2);
        }

        public final TokenDetailedResponse component1() {
            return getFeeToken();
        }

        public final TokenDetailedResponse component2() {
            return getToken();
        }

        public final TransactionParamsResponse.BTC component3() {
            return getTransactionParams();
        }

        public final BTC copy(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.BTC transactionParams) {
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            return new BTC(feeToken, token, transactionParams);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BTC) {
                BTC btc = (BTC) obj;
                return Intrinsics.areEqual(getFeeToken(), btc.getFeeToken()) && Intrinsics.areEqual(getToken(), btc.getToken()) && Intrinsics.areEqual(getTransactionParams(), btc.getTransactionParams());
            }
            return false;
        }

        public int hashCode() {
            return (((getFeeToken().hashCode() * 31) + getToken().hashCode()) * 31) + getTransactionParams().hashCode();
        }

        public String toString() {
            return "BTC(feeToken=" + getFeeToken() + ", token=" + getToken() + ", transactionParams=" + getTransactionParams() + ')';
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getFeeToken() {
            return this.feeToken;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TokenDetailedResponse getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse
        public TransactionParamsResponse.BTC getTransactionParams() {
            return this.transactionParams;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BTC(TokenDetailedResponse feeToken, TokenDetailedResponse token, TransactionParamsResponse.BTC transactionParams) {
            super(feeToken, token, transactionParams, null);
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            this.feeToken = feeToken;
            this.token = token;
            this.transactionParams = transactionParams;
        }
    }
}
