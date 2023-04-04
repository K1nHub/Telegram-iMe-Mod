package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.swap.TokenApproveStatus;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoTokenApproveMetadata.kt */
/* loaded from: classes3.dex */
public abstract class CryptoTokenApproveMetadata {
    private final TokenApproveStatus status;
    private final TokenCode tokenCode;
    private final String value;

    public /* synthetic */ CryptoTokenApproveMetadata(TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenCode, tokenApproveStatus, str);
    }

    private CryptoTokenApproveMetadata(TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str) {
        this.tokenCode = tokenCode;
        this.status = tokenApproveStatus;
        this.value = str;
    }

    public TokenCode getTokenCode() {
        return this.tokenCode;
    }

    public TokenApproveStatus getStatus() {
        return this.status;
    }

    public String getValue() {
        return this.value;
    }

    /* compiled from: CryptoTokenApproveMetadata.kt */
    /* loaded from: classes3.dex */
    public static final class Allowed extends CryptoTokenApproveMetadata {
        private final TokenApproveStatus status;
        private final TokenCode tokenCode;
        private final String value;

        public static /* synthetic */ Allowed copy$default(Allowed allowed, TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenCode = allowed.getTokenCode();
            }
            if ((i & 2) != 0) {
                tokenApproveStatus = allowed.getStatus();
            }
            if ((i & 4) != 0) {
                str = allowed.getValue();
            }
            return allowed.copy(tokenCode, tokenApproveStatus, str);
        }

        public final TokenCode component1() {
            return getTokenCode();
        }

        public final TokenApproveStatus component2() {
            return getStatus();
        }

        public final String component3() {
            return getValue();
        }

        public final Allowed copy(TokenCode tokenCode, TokenApproveStatus status, String value) {
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            return new Allowed(tokenCode, status, value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Allowed) {
                Allowed allowed = (Allowed) obj;
                return getTokenCode() == allowed.getTokenCode() && getStatus() == allowed.getStatus() && Intrinsics.areEqual(getValue(), allowed.getValue());
            }
            return false;
        }

        public int hashCode() {
            return (((getTokenCode().hashCode() * 31) + getStatus().hashCode()) * 31) + getValue().hashCode();
        }

        public String toString() {
            return "Allowed(tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", value=" + getValue() + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public TokenApproveStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public String getValue() {
            return this.value;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Allowed(TokenCode tokenCode, TokenApproveStatus status, String value) {
            super(tokenCode, status, value, null);
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            this.tokenCode = tokenCode;
            this.status = status;
            this.value = value;
        }
    }

    /* compiled from: CryptoTokenApproveMetadata.kt */
    /* loaded from: classes3.dex */
    public static final class InProgress extends CryptoTokenApproveMetadata {
        private final TokenApproveStatus status;
        private final TokenCode tokenCode;
        private final String value;

        public static /* synthetic */ InProgress copy$default(InProgress inProgress, TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenCode = inProgress.getTokenCode();
            }
            if ((i & 2) != 0) {
                tokenApproveStatus = inProgress.getStatus();
            }
            if ((i & 4) != 0) {
                str = inProgress.getValue();
            }
            return inProgress.copy(tokenCode, tokenApproveStatus, str);
        }

        public final TokenCode component1() {
            return getTokenCode();
        }

        public final TokenApproveStatus component2() {
            return getStatus();
        }

        public final String component3() {
            return getValue();
        }

        public final InProgress copy(TokenCode tokenCode, TokenApproveStatus status, String value) {
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            return new InProgress(tokenCode, status, value);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof InProgress) {
                InProgress inProgress = (InProgress) obj;
                return getTokenCode() == inProgress.getTokenCode() && getStatus() == inProgress.getStatus() && Intrinsics.areEqual(getValue(), inProgress.getValue());
            }
            return false;
        }

        public int hashCode() {
            return (((getTokenCode().hashCode() * 31) + getStatus().hashCode()) * 31) + getValue().hashCode();
        }

        public String toString() {
            return "InProgress(tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", value=" + getValue() + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public TokenApproveStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public String getValue() {
            return this.value;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InProgress(TokenCode tokenCode, TokenApproveStatus status, String value) {
            super(tokenCode, status, value, null);
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            this.tokenCode = tokenCode;
            this.status = status;
            this.value = value;
        }
    }

    /* compiled from: CryptoTokenApproveMetadata.kt */
    /* loaded from: classes3.dex */
    public static abstract class NeedApprove extends CryptoTokenApproveMetadata {
        private final TokenCode feeTokenCode;
        private final String spenderContractAddress;
        private final TokenApproveStatus status;
        private final TokenCode tokenCode;
        private final String tokenContractAddress;
        private final TransactionParams.Ether transactionParams;
        private final String value;

        public /* synthetic */ NeedApprove(TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str, TransactionParams.Ether ether, String str2, String str3, TokenCode tokenCode2, DefaultConstructorMarker defaultConstructorMarker) {
            this(tokenCode, tokenApproveStatus, str, ether, str2, str3, tokenCode2);
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public TokenApproveStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
        public String getValue() {
            return this.value;
        }

        public TransactionParams.Ether getTransactionParams() {
            return this.transactionParams;
        }

        public String getTokenContractAddress() {
            return this.tokenContractAddress;
        }

        public String getSpenderContractAddress() {
            return this.spenderContractAddress;
        }

        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        private NeedApprove(TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str, TransactionParams.Ether ether, String str2, String str3, TokenCode tokenCode2) {
            super(tokenCode, tokenApproveStatus, str, null);
            this.tokenCode = tokenCode;
            this.status = tokenApproveStatus;
            this.value = str;
            this.transactionParams = ether;
            this.tokenContractAddress = str2;
            this.spenderContractAddress = str3;
            this.feeTokenCode = tokenCode2;
        }

        /* compiled from: CryptoTokenApproveMetadata.kt */
        /* loaded from: classes3.dex */
        public static final class NotAllowed extends NeedApprove {
            private final TokenCode feeTokenCode;
            private final String spenderContractAddress;
            private final TokenApproveStatus status;
            private final TokenCode tokenCode;
            private final String tokenContractAddress;
            private final TransactionParams.Ether transactionParams;
            private final String value;

            public static /* synthetic */ NotAllowed copy$default(NotAllowed notAllowed, TokenCode tokenCode, TokenApproveStatus tokenApproveStatus, String str, TransactionParams.Ether ether, String str2, String str3, TokenCode tokenCode2, int i, Object obj) {
                if ((i & 1) != 0) {
                    tokenCode = notAllowed.getTokenCode();
                }
                if ((i & 2) != 0) {
                    tokenApproveStatus = notAllowed.getStatus();
                }
                TokenApproveStatus tokenApproveStatus2 = tokenApproveStatus;
                if ((i & 4) != 0) {
                    str = notAllowed.getValue();
                }
                String str4 = str;
                if ((i & 8) != 0) {
                    ether = notAllowed.getTransactionParams();
                }
                TransactionParams.Ether ether2 = ether;
                if ((i & 16) != 0) {
                    str2 = notAllowed.getTokenContractAddress();
                }
                String str5 = str2;
                if ((i & 32) != 0) {
                    str3 = notAllowed.getSpenderContractAddress();
                }
                String str6 = str3;
                if ((i & 64) != 0) {
                    tokenCode2 = notAllowed.getFeeTokenCode();
                }
                return notAllowed.copy(tokenCode, tokenApproveStatus2, str4, ether2, str5, str6, tokenCode2);
            }

            public final TokenCode component1() {
                return getTokenCode();
            }

            public final TokenApproveStatus component2() {
                return getStatus();
            }

            public final String component3() {
                return getValue();
            }

            public final TransactionParams.Ether component4() {
                return getTransactionParams();
            }

            public final String component5() {
                return getTokenContractAddress();
            }

            public final String component6() {
                return getSpenderContractAddress();
            }

            public final TokenCode component7() {
                return getFeeTokenCode();
            }

            public final NotAllowed copy(TokenCode tokenCode, TokenApproveStatus status, String value, TransactionParams.Ether transactionParams, String tokenContractAddress, String spenderContractAddress, TokenCode feeTokenCode) {
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                return new NotAllowed(tokenCode, status, value, transactionParams, tokenContractAddress, spenderContractAddress, feeTokenCode);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof NotAllowed) {
                    NotAllowed notAllowed = (NotAllowed) obj;
                    return getTokenCode() == notAllowed.getTokenCode() && getStatus() == notAllowed.getStatus() && Intrinsics.areEqual(getValue(), notAllowed.getValue()) && Intrinsics.areEqual(getTransactionParams(), notAllowed.getTransactionParams()) && Intrinsics.areEqual(getTokenContractAddress(), notAllowed.getTokenContractAddress()) && Intrinsics.areEqual(getSpenderContractAddress(), notAllowed.getSpenderContractAddress()) && getFeeTokenCode() == notAllowed.getFeeTokenCode();
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((getTokenCode().hashCode() * 31) + getStatus().hashCode()) * 31) + getValue().hashCode()) * 31) + getTransactionParams().hashCode()) * 31) + getTokenContractAddress().hashCode()) * 31) + getSpenderContractAddress().hashCode()) * 31) + getFeeTokenCode().hashCode();
            }

            public String toString() {
                return "NotAllowed(tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", value=" + getValue() + ", transactionParams=" + getTransactionParams() + ", tokenContractAddress=" + getTokenContractAddress() + ", spenderContractAddress=" + getSpenderContractAddress() + ", feeTokenCode=" + getFeeTokenCode() + ')';
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove, com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove, com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
            public TokenApproveStatus getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove, com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
            public String getValue() {
                return this.value;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public TransactionParams.Ether getTransactionParams() {
                return this.transactionParams;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public String getTokenContractAddress() {
                return this.tokenContractAddress;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public String getSpenderContractAddress() {
                return this.spenderContractAddress;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NotAllowed(TokenCode tokenCode, TokenApproveStatus status, String value, TransactionParams.Ether transactionParams, String tokenContractAddress, String spenderContractAddress, TokenCode feeTokenCode) {
                super(tokenCode, status, value, transactionParams, tokenContractAddress, spenderContractAddress, feeTokenCode, null);
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                this.tokenCode = tokenCode;
                this.status = status;
                this.value = value;
                this.transactionParams = transactionParams;
                this.tokenContractAddress = tokenContractAddress;
                this.spenderContractAddress = spenderContractAddress;
                this.feeTokenCode = feeTokenCode;
            }
        }

        /* compiled from: CryptoTokenApproveMetadata.kt */
        /* loaded from: classes3.dex */
        public static final class Error extends NeedApprove {
            private final TokenCode feeTokenCode;
            private final String lastErrorMessage;
            private final String spenderContractAddress;
            private final TokenApproveStatus status;
            private final TokenCode tokenCode;
            private final String tokenContractAddress;
            private final TransactionParams.Ether transactionParams;
            private final String value;

            public final TokenCode component1() {
                return getTokenCode();
            }

            public final TokenApproveStatus component2() {
                return getStatus();
            }

            public final String component3() {
                return getValue();
            }

            public final TransactionParams.Ether component4() {
                return getTransactionParams();
            }

            public final String component5() {
                return getTokenContractAddress();
            }

            public final String component6() {
                return getSpenderContractAddress();
            }

            public final TokenCode component7() {
                return getFeeTokenCode();
            }

            public final String component8() {
                return this.lastErrorMessage;
            }

            public final Error copy(TokenCode tokenCode, TokenApproveStatus status, String value, TransactionParams.Ether transactionParams, String tokenContractAddress, String spenderContractAddress, TokenCode feeTokenCode, String lastErrorMessage) {
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(lastErrorMessage, "lastErrorMessage");
                return new Error(tokenCode, status, value, transactionParams, tokenContractAddress, spenderContractAddress, feeTokenCode, lastErrorMessage);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Error) {
                    Error error = (Error) obj;
                    return getTokenCode() == error.getTokenCode() && getStatus() == error.getStatus() && Intrinsics.areEqual(getValue(), error.getValue()) && Intrinsics.areEqual(getTransactionParams(), error.getTransactionParams()) && Intrinsics.areEqual(getTokenContractAddress(), error.getTokenContractAddress()) && Intrinsics.areEqual(getSpenderContractAddress(), error.getSpenderContractAddress()) && getFeeTokenCode() == error.getFeeTokenCode() && Intrinsics.areEqual(this.lastErrorMessage, error.lastErrorMessage);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((getTokenCode().hashCode() * 31) + getStatus().hashCode()) * 31) + getValue().hashCode()) * 31) + getTransactionParams().hashCode()) * 31) + getTokenContractAddress().hashCode()) * 31) + getSpenderContractAddress().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + this.lastErrorMessage.hashCode();
            }

            public String toString() {
                return "Error(tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", value=" + getValue() + ", transactionParams=" + getTransactionParams() + ", tokenContractAddress=" + getTokenContractAddress() + ", spenderContractAddress=" + getSpenderContractAddress() + ", feeTokenCode=" + getFeeTokenCode() + ", lastErrorMessage=" + this.lastErrorMessage + ')';
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove, com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove, com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
            public TokenApproveStatus getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove, com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata
            public String getValue() {
                return this.value;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public TransactionParams.Ether getTransactionParams() {
                return this.transactionParams;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public String getTokenContractAddress() {
                return this.tokenContractAddress;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public String getSpenderContractAddress() {
                return this.spenderContractAddress;
            }

            @Override // com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata.NeedApprove
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            public final String getLastErrorMessage() {
                return this.lastErrorMessage;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(TokenCode tokenCode, TokenApproveStatus status, String value, TransactionParams.Ether transactionParams, String tokenContractAddress, String spenderContractAddress, TokenCode feeTokenCode, String lastErrorMessage) {
                super(tokenCode, status, value, transactionParams, tokenContractAddress, spenderContractAddress, feeTokenCode, null);
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(value, "value");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
                Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(lastErrorMessage, "lastErrorMessage");
                this.tokenCode = tokenCode;
                this.status = status;
                this.value = value;
                this.transactionParams = transactionParams;
                this.tokenContractAddress = tokenContractAddress;
                this.spenderContractAddress = spenderContractAddress;
                this.feeTokenCode = feeTokenCode;
                this.lastErrorMessage = lastErrorMessage;
            }
        }
    }
}
