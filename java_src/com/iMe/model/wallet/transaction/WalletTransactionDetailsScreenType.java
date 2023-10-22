package com.iMe.model.wallet.transaction;

import com.iMe.storage.domain.model.crypto.Network;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransactionDetailsScreenType.kt */
/* loaded from: classes3.dex */
public abstract class WalletTransactionDetailsScreenType {
    public /* synthetic */ WalletTransactionDetailsScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private WalletTransactionDetailsScreenType() {
    }

    /* compiled from: WalletTransactionDetailsScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class TransactionDetails extends WalletTransactionDetailsScreenType {
        private final TransactionItem item;

        public static /* synthetic */ TransactionDetails copy$default(TransactionDetails transactionDetails, TransactionItem transactionItem, int i, Object obj) {
            if ((i & 1) != 0) {
                transactionItem = transactionDetails.item;
            }
            return transactionDetails.copy(transactionItem);
        }

        public final TransactionItem component1() {
            return this.item;
        }

        public final TransactionDetails copy(TransactionItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            return new TransactionDetails(item);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TransactionDetails) && Intrinsics.areEqual(this.item, ((TransactionDetails) obj).item);
        }

        public int hashCode() {
            return this.item.hashCode();
        }

        public String toString() {
            return "TransactionDetails(item=" + this.item + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionDetails(TransactionItem item) {
            super(null);
            Intrinsics.checkNotNullParameter(item, "item");
            this.item = item;
        }

        public final TransactionItem getItem() {
            return this.item;
        }
    }

    /* compiled from: WalletTransactionDetailsScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class StakingOperationDetails extends WalletTransactionDetailsScreenType {
        private final StakingOperationItem item;
        private final Network network;

        public static /* synthetic */ StakingOperationDetails copy$default(StakingOperationDetails stakingOperationDetails, StakingOperationItem stakingOperationItem, Network network, int i, Object obj) {
            if ((i & 1) != 0) {
                stakingOperationItem = stakingOperationDetails.item;
            }
            if ((i & 2) != 0) {
                network = stakingOperationDetails.network;
            }
            return stakingOperationDetails.copy(stakingOperationItem, network);
        }

        public final StakingOperationItem component1() {
            return this.item;
        }

        public final Network component2() {
            return this.network;
        }

        public final StakingOperationDetails copy(StakingOperationItem item, Network network) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(network, "network");
            return new StakingOperationDetails(item, network);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingOperationDetails) {
                StakingOperationDetails stakingOperationDetails = (StakingOperationDetails) obj;
                return Intrinsics.areEqual(this.item, stakingOperationDetails.item) && Intrinsics.areEqual(this.network, stakingOperationDetails.network);
            }
            return false;
        }

        public int hashCode() {
            return (this.item.hashCode() * 31) + this.network.hashCode();
        }

        public String toString() {
            return "StakingOperationDetails(item=" + this.item + ", network=" + this.network + ')';
        }

        public final StakingOperationItem getItem() {
            return this.item;
        }

        public final Network getNetwork() {
            return this.network;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingOperationDetails(StakingOperationItem item, Network network) {
            super(null);
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(network, "network");
            this.item = item;
            this.network = network;
        }
    }

    /* compiled from: WalletTransactionDetailsScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class CryptoBoxActionDetails extends WalletTransactionDetailsScreenType {
        private final CryptoBoxActionItem item;
        private final Network network;

        public static /* synthetic */ CryptoBoxActionDetails copy$default(CryptoBoxActionDetails cryptoBoxActionDetails, CryptoBoxActionItem cryptoBoxActionItem, Network network, int i, Object obj) {
            if ((i & 1) != 0) {
                cryptoBoxActionItem = cryptoBoxActionDetails.item;
            }
            if ((i & 2) != 0) {
                network = cryptoBoxActionDetails.network;
            }
            return cryptoBoxActionDetails.copy(cryptoBoxActionItem, network);
        }

        public final CryptoBoxActionItem component1() {
            return this.item;
        }

        public final Network component2() {
            return this.network;
        }

        public final CryptoBoxActionDetails copy(CryptoBoxActionItem item, Network network) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(network, "network");
            return new CryptoBoxActionDetails(item, network);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CryptoBoxActionDetails) {
                CryptoBoxActionDetails cryptoBoxActionDetails = (CryptoBoxActionDetails) obj;
                return Intrinsics.areEqual(this.item, cryptoBoxActionDetails.item) && Intrinsics.areEqual(this.network, cryptoBoxActionDetails.network);
            }
            return false;
        }

        public int hashCode() {
            return (this.item.hashCode() * 31) + this.network.hashCode();
        }

        public String toString() {
            return "CryptoBoxActionDetails(item=" + this.item + ", network=" + this.network + ')';
        }

        public final CryptoBoxActionItem getItem() {
            return this.item;
        }

        public final Network getNetwork() {
            return this.network;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CryptoBoxActionDetails(CryptoBoxActionItem item, Network network) {
            super(null);
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(network, "network");
            this.item = item;
            this.network = network;
        }
    }
}
