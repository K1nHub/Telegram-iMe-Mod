package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.swap.TokenApproveStatus;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenApproveData.kt */
/* loaded from: classes3.dex */
public abstract class TokenApproveData {
    private final TokenApproveStatus status;
    private final TokenDetailed token;
    private final String value;

    public /* synthetic */ TokenApproveData(TokenDetailed tokenDetailed, TokenApproveStatus tokenApproveStatus, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenDetailed, tokenApproveStatus, str);
    }

    private TokenApproveData(TokenDetailed tokenDetailed, TokenApproveStatus tokenApproveStatus, String str) {
        this.token = tokenDetailed;
        this.status = tokenApproveStatus;
        this.value = str;
    }

    public TokenDetailed getToken() {
        return this.token;
    }

    public TokenApproveStatus getStatus() {
        return this.status;
    }

    public String getValue() {
        return this.value;
    }

    /* compiled from: TokenApproveData.kt */
    /* loaded from: classes3.dex */
    public static final class Allowed extends TokenApproveData {
        private final TokenDetailed token;
        private final String value;

        public static /* synthetic */ Allowed copy$default(Allowed allowed, TokenDetailed tokenDetailed, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenDetailed = allowed.getToken();
            }
            if ((i & 2) != 0) {
                str = allowed.getValue();
            }
            return allowed.copy(tokenDetailed, str);
        }

        public final TokenDetailed component1() {
            return getToken();
        }

        public final String component2() {
            return getValue();
        }

        public final Allowed copy(TokenDetailed token, String value) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            return new Allowed(token, value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Allowed) {
                Allowed allowed = (Allowed) obj;
                return Intrinsics.areEqual(getToken(), allowed.getToken()) && Intrinsics.areEqual(getValue(), allowed.getValue());
            }
            return false;
        }

        public int hashCode() {
            return (getToken().hashCode() * 31) + getValue().hashCode();
        }

        public String toString() {
            return "Allowed(token=" + getToken() + ", value=" + getValue() + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public TokenDetailed getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public String getValue() {
            return this.value;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Allowed(TokenDetailed token, String value) {
            super(token, TokenApproveStatus.ALLOWED, value, null);
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            this.token = token;
            this.value = value;
        }
    }

    /* compiled from: TokenApproveData.kt */
    /* loaded from: classes3.dex */
    public static final class InProgress extends TokenApproveData {
        private final TokenDetailed token;
        private final String value;

        public static /* synthetic */ InProgress copy$default(InProgress inProgress, TokenDetailed tokenDetailed, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenDetailed = inProgress.getToken();
            }
            if ((i & 2) != 0) {
                str = inProgress.getValue();
            }
            return inProgress.copy(tokenDetailed, str);
        }

        public final TokenDetailed component1() {
            return getToken();
        }

        public final String component2() {
            return getValue();
        }

        public final InProgress copy(TokenDetailed token, String value) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            return new InProgress(token, value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof InProgress) {
                InProgress inProgress = (InProgress) obj;
                return Intrinsics.areEqual(getToken(), inProgress.getToken()) && Intrinsics.areEqual(getValue(), inProgress.getValue());
            }
            return false;
        }

        public int hashCode() {
            return (getToken().hashCode() * 31) + getValue().hashCode();
        }

        public String toString() {
            return "InProgress(token=" + getToken() + ", value=" + getValue() + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public TokenDetailed getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public String getValue() {
            return this.value;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InProgress(TokenDetailed token, String value) {
            super(token, TokenApproveStatus.IN_PROGRESS, value, null);
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            this.token = token;
            this.value = value;
        }
    }

    /* compiled from: TokenApproveData.kt */
    /* loaded from: classes3.dex */
    public static abstract class NeedApprove extends TokenApproveData {
        private final TokenDetailed feeToken;
        private final String spenderContractAddress;
        private final TokenApproveStatus status;
        private final TokenDetailed token;
        private final TransactionParams.Ether transactionParams;
        private final String value;

        public /* synthetic */ NeedApprove(TokenDetailed tokenDetailed, TokenApproveStatus tokenApproveStatus, String str, TransactionParams.Ether ether, String str2, TokenDetailed tokenDetailed2, DefaultConstructorMarker defaultConstructorMarker) {
            this(tokenDetailed, tokenApproveStatus, str, ether, str2, tokenDetailed2);
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public TokenDetailed getToken() {
            return this.token;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public TokenApproveStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData
        public String getValue() {
            return this.value;
        }

        public TransactionParams.Ether getTransactionParams() {
            return this.transactionParams;
        }

        public String getSpenderContractAddress() {
            return this.spenderContractAddress;
        }

        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        private NeedApprove(TokenDetailed tokenDetailed, TokenApproveStatus tokenApproveStatus, String str, TransactionParams.Ether ether, String str2, TokenDetailed tokenDetailed2) {
            super(tokenDetailed, tokenApproveStatus, str, null);
            this.token = tokenDetailed;
            this.status = tokenApproveStatus;
            this.value = str;
            this.transactionParams = ether;
            this.spenderContractAddress = str2;
            this.feeToken = tokenDetailed2;
        }

        /* compiled from: TokenApproveData.kt */
        /* loaded from: classes3.dex */
        public static final class NotAllowed extends NeedApprove {
            private final TokenDetailed feeToken;
            private final String spenderContractAddress;
            private final TokenDetailed token;
            private final TransactionParams.Ether transactionParams;
            private final String value;

            public static /* synthetic */ NotAllowed copy$default(NotAllowed notAllowed, TokenDetailed tokenDetailed, String str, TransactionParams.Ether ether, String str2, TokenDetailed tokenDetailed2, int i, Object obj) {
                if ((i & 1) != 0) {
                    tokenDetailed = notAllowed.getToken();
                }
                if ((i & 2) != 0) {
                    str = notAllowed.getValue();
                }
                String str3 = str;
                if ((i & 4) != 0) {
                    ether = notAllowed.getTransactionParams();
                }
                TransactionParams.Ether ether2 = ether;
                if ((i & 8) != 0) {
                    str2 = notAllowed.getSpenderContractAddress();
                }
                String str4 = str2;
                if ((i & 16) != 0) {
                    tokenDetailed2 = notAllowed.getFeeToken();
                }
                return notAllowed.copy(tokenDetailed, str3, ether2, str4, tokenDetailed2);
            }

            public final TokenDetailed component1() {
                return getToken();
            }

            public final String component2() {
                return getValue();
            }

            public final TransactionParams.Ether component3() {
                return getTransactionParams();
            }

            public final String component4() {
                return getSpenderContractAddress();
            }

            public final TokenDetailed component5() {
                return getFeeToken();
            }

            public final NotAllowed copy(TokenDetailed token, String value, TransactionParams.Ether transactionParams, String spenderContractAddress, TokenDetailed feeToken) {
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                return new NotAllowed(token, value, transactionParams, spenderContractAddress, feeToken);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof NotAllowed) {
                    NotAllowed notAllowed = (NotAllowed) obj;
                    return Intrinsics.areEqual(getToken(), notAllowed.getToken()) && Intrinsics.areEqual(getValue(), notAllowed.getValue()) && Intrinsics.areEqual(getTransactionParams(), notAllowed.getTransactionParams()) && Intrinsics.areEqual(getSpenderContractAddress(), notAllowed.getSpenderContractAddress()) && Intrinsics.areEqual(getFeeToken(), notAllowed.getFeeToken());
                }
                return false;
            }

            public int hashCode() {
                return (((((((getToken().hashCode() * 31) + getValue().hashCode()) * 31) + getTransactionParams().hashCode()) * 31) + getSpenderContractAddress().hashCode()) * 31) + getFeeToken().hashCode();
            }

            public String toString() {
                return "NotAllowed(token=" + getToken() + ", value=" + getValue() + ", transactionParams=" + getTransactionParams() + ", spenderContractAddress=" + getSpenderContractAddress() + ", feeToken=" + getFeeToken() + ')';
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove, com.iMe.storage.domain.model.crypto.swap.TokenApproveData
            public TokenDetailed getToken() {
                return this.token;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove, com.iMe.storage.domain.model.crypto.swap.TokenApproveData
            public String getValue() {
                return this.value;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove
            public TransactionParams.Ether getTransactionParams() {
                return this.transactionParams;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove
            public String getSpenderContractAddress() {
                return this.spenderContractAddress;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove
            public TokenDetailed getFeeToken() {
                return this.feeToken;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NotAllowed(TokenDetailed token, String value, TransactionParams.Ether transactionParams, String spenderContractAddress, TokenDetailed feeToken) {
                super(token, TokenApproveStatus.NOT_ALLOWED, value, transactionParams, spenderContractAddress, feeToken, null);
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                this.token = token;
                this.value = value;
                this.transactionParams = transactionParams;
                this.spenderContractAddress = spenderContractAddress;
                this.feeToken = feeToken;
            }
        }

        /* compiled from: TokenApproveData.kt */
        /* loaded from: classes3.dex */
        public static final class Error extends NeedApprove {
            private final TokenDetailed feeToken;
            private final String lastErrorMessage;
            private final String spenderContractAddress;
            private final TokenDetailed token;
            private final TransactionParams.Ether transactionParams;
            private final String value;

            public static /* synthetic */ Error copy$default(Error error, TokenDetailed tokenDetailed, String str, TransactionParams.Ether ether, String str2, TokenDetailed tokenDetailed2, String str3, int i, Object obj) {
                if ((i & 1) != 0) {
                    tokenDetailed = error.getToken();
                }
                if ((i & 2) != 0) {
                    str = error.getValue();
                }
                String str4 = str;
                if ((i & 4) != 0) {
                    ether = error.getTransactionParams();
                }
                TransactionParams.Ether ether2 = ether;
                if ((i & 8) != 0) {
                    str2 = error.getSpenderContractAddress();
                }
                String str5 = str2;
                if ((i & 16) != 0) {
                    tokenDetailed2 = error.getFeeToken();
                }
                TokenDetailed tokenDetailed3 = tokenDetailed2;
                if ((i & 32) != 0) {
                    str3 = error.lastErrorMessage;
                }
                return error.copy(tokenDetailed, str4, ether2, str5, tokenDetailed3, str3);
            }

            public final TokenDetailed component1() {
                return getToken();
            }

            public final String component2() {
                return getValue();
            }

            public final TransactionParams.Ether component3() {
                return getTransactionParams();
            }

            public final String component4() {
                return getSpenderContractAddress();
            }

            public final TokenDetailed component5() {
                return getFeeToken();
            }

            public final String component6() {
                return this.lastErrorMessage;
            }

            public final Error copy(TokenDetailed token, String value, TransactionParams.Ether transactionParams, String spenderContractAddress, TokenDetailed feeToken, String lastErrorMessage) {
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(lastErrorMessage, "lastErrorMessage");
                return new Error(token, value, transactionParams, spenderContractAddress, feeToken, lastErrorMessage);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Error) {
                    Error error = (Error) obj;
                    return Intrinsics.areEqual(getToken(), error.getToken()) && Intrinsics.areEqual(getValue(), error.getValue()) && Intrinsics.areEqual(getTransactionParams(), error.getTransactionParams()) && Intrinsics.areEqual(getSpenderContractAddress(), error.getSpenderContractAddress()) && Intrinsics.areEqual(getFeeToken(), error.getFeeToken()) && Intrinsics.areEqual(this.lastErrorMessage, error.lastErrorMessage);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((getToken().hashCode() * 31) + getValue().hashCode()) * 31) + getTransactionParams().hashCode()) * 31) + getSpenderContractAddress().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + this.lastErrorMessage.hashCode();
            }

            public String toString() {
                return "Error(token=" + getToken() + ", value=" + getValue() + ", transactionParams=" + getTransactionParams() + ", spenderContractAddress=" + getSpenderContractAddress() + ", feeToken=" + getFeeToken() + ", lastErrorMessage=" + this.lastErrorMessage + ')';
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove, com.iMe.storage.domain.model.crypto.swap.TokenApproveData
            public TokenDetailed getToken() {
                return this.token;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove, com.iMe.storage.domain.model.crypto.swap.TokenApproveData
            public String getValue() {
                return this.value;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove
            public TransactionParams.Ether getTransactionParams() {
                return this.transactionParams;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove
            public String getSpenderContractAddress() {
                return this.spenderContractAddress;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.TokenApproveData.NeedApprove
            public TokenDetailed getFeeToken() {
                return this.feeToken;
            }

            public final String getLastErrorMessage() {
                return this.lastErrorMessage;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(TokenDetailed token, String value, TransactionParams.Ether transactionParams, String spenderContractAddress, TokenDetailed feeToken, String lastErrorMessage) {
                super(token, TokenApproveStatus.ERROR, value, transactionParams, spenderContractAddress, feeToken, null);
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(lastErrorMessage, "lastErrorMessage");
                this.token = token;
                this.value = value;
                this.transactionParams = transactionParams;
                this.spenderContractAddress = spenderContractAddress;
                this.feeToken = feeToken;
                this.lastErrorMessage = lastErrorMessage;
            }
        }
    }
}
