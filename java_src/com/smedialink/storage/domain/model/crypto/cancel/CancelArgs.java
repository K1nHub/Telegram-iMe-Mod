package com.smedialink.storage.domain.model.crypto.cancel;

import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelArgs.kt */
/* loaded from: classes3.dex */
public abstract class CancelArgs {
    private final TokenCode token;

    public /* synthetic */ CancelArgs(TokenCode tokenCode, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenCode);
    }

    private CancelArgs(TokenCode tokenCode) {
        this.token = tokenCode;
    }

    public TokenCode getToken() {
        return this.token;
    }

    /* compiled from: CancelArgs.kt */
    /* loaded from: classes3.dex */
    public static final class Ethereum extends CancelArgs {
        private final String oldTxHash;
        private final TokenCode token;
        private final TransferArgs.EVM transferArgs;

        public static /* synthetic */ Ethereum copy$default(Ethereum ethereum, TokenCode tokenCode, String str, TransferArgs.EVM evm, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenCode = ethereum.getToken();
            }
            if ((i & 2) != 0) {
                str = ethereum.oldTxHash;
            }
            if ((i & 4) != 0) {
                evm = ethereum.transferArgs;
            }
            return ethereum.copy(tokenCode, str, evm);
        }

        public final TokenCode component1() {
            return getToken();
        }

        public final String component2() {
            return this.oldTxHash;
        }

        public final TransferArgs.EVM component3() {
            return this.transferArgs;
        }

        public final Ethereum copy(TokenCode token, String oldTxHash, TransferArgs.EVM transferArgs) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(oldTxHash, "oldTxHash");
            Intrinsics.checkNotNullParameter(transferArgs, "transferArgs");
            return new Ethereum(token, oldTxHash, transferArgs);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Ethereum) {
                Ethereum ethereum = (Ethereum) obj;
                return getToken() == ethereum.getToken() && Intrinsics.areEqual(this.oldTxHash, ethereum.oldTxHash) && Intrinsics.areEqual(this.transferArgs, ethereum.transferArgs);
            }
            return false;
        }

        public int hashCode() {
            return (((getToken().hashCode() * 31) + this.oldTxHash.hashCode()) * 31) + this.transferArgs.hashCode();
        }

        public String toString() {
            return "Ethereum(token=" + getToken() + ", oldTxHash=" + this.oldTxHash + ", transferArgs=" + this.transferArgs + ')';
        }

        @Override // com.smedialink.storage.domain.model.crypto.cancel.CancelArgs
        public TokenCode getToken() {
            return this.token;
        }

        public final String getOldTxHash() {
            return this.oldTxHash;
        }

        public final TransferArgs.EVM getTransferArgs() {
            return this.transferArgs;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ethereum(TokenCode token, String oldTxHash, TransferArgs.EVM transferArgs) {
            super(token, null);
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(oldTxHash, "oldTxHash");
            Intrinsics.checkNotNullParameter(transferArgs, "transferArgs");
            this.token = token;
            this.oldTxHash = oldTxHash;
            this.transferArgs = transferArgs;
        }
    }
}
