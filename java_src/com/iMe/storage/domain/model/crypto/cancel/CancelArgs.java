package com.iMe.storage.domain.model.crypto.cancel;

import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelArgs.kt */
/* loaded from: classes4.dex */
public abstract class CancelArgs implements TransactionArgs {
    private final String networkId;

    public /* synthetic */ CancelArgs(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private CancelArgs(String str) {
        this.networkId = str;
    }

    public String getNetworkId() {
        return this.networkId;
    }

    /* compiled from: CancelArgs.kt */
    /* loaded from: classes4.dex */
    public static final class Ethereum extends CancelArgs {
        private final String networkId;
        private final String oldTxHash;
        private final TransferArgs.EVM transferArgs;

        public static /* synthetic */ Ethereum copy$default(Ethereum ethereum, String str, String str2, TransferArgs.EVM evm, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ethereum.getNetworkId();
            }
            if ((i & 2) != 0) {
                str2 = ethereum.oldTxHash;
            }
            if ((i & 4) != 0) {
                evm = ethereum.transferArgs;
            }
            return ethereum.copy(str, str2, evm);
        }

        public final String component1() {
            return getNetworkId();
        }

        public final String component2() {
            return this.oldTxHash;
        }

        public final TransferArgs.EVM component3() {
            return this.transferArgs;
        }

        public final Ethereum copy(String networkId, String oldTxHash, TransferArgs.EVM transferArgs) {
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(oldTxHash, "oldTxHash");
            Intrinsics.checkNotNullParameter(transferArgs, "transferArgs");
            return new Ethereum(networkId, oldTxHash, transferArgs);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Ethereum) {
                Ethereum ethereum = (Ethereum) obj;
                return Intrinsics.areEqual(getNetworkId(), ethereum.getNetworkId()) && Intrinsics.areEqual(this.oldTxHash, ethereum.oldTxHash) && Intrinsics.areEqual(this.transferArgs, ethereum.transferArgs);
            }
            return false;
        }

        public int hashCode() {
            return (((getNetworkId().hashCode() * 31) + this.oldTxHash.hashCode()) * 31) + this.transferArgs.hashCode();
        }

        public String toString() {
            return "Ethereum(networkId=" + getNetworkId() + ", oldTxHash=" + this.oldTxHash + ", transferArgs=" + this.transferArgs + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.cancel.CancelArgs
        public String getNetworkId() {
            return this.networkId;
        }

        public final String getOldTxHash() {
            return this.oldTxHash;
        }

        public final TransferArgs.EVM getTransferArgs() {
            return this.transferArgs;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ethereum(String networkId, String oldTxHash, TransferArgs.EVM transferArgs) {
            super(networkId, null);
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(oldTxHash, "oldTxHash");
            Intrinsics.checkNotNullParameter(transferArgs, "transferArgs");
            this.networkId = networkId;
            this.oldTxHash = oldTxHash;
            this.transferArgs = transferArgs;
        }
    }
}
