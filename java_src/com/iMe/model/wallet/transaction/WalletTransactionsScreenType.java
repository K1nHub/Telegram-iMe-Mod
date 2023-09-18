package com.iMe.model.wallet.transaction;

import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.wallet.details.TransactionsGroup;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransactionsScreenType.kt */
/* loaded from: classes4.dex */
public abstract class WalletTransactionsScreenType {
    public /* synthetic */ WalletTransactionsScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private WalletTransactionsScreenType() {
    }

    /* compiled from: WalletTransactionsScreenType.kt */
    /* loaded from: classes4.dex */
    public static final class Fullscreen extends WalletTransactionsScreenType {
        public static final Fullscreen INSTANCE = new Fullscreen();

        private Fullscreen() {
            super(null);
        }
    }

    /* compiled from: WalletTransactionsScreenType.kt */
    /* loaded from: classes4.dex */
    public static final class TokenDetailsTab extends WalletTransactionsScreenType {
        private final TransactionsGroup transactionsGroup;

        public static /* synthetic */ TokenDetailsTab copy$default(TokenDetailsTab tokenDetailsTab, TransactionsGroup transactionsGroup, int i, Object obj) {
            if ((i & 1) != 0) {
                transactionsGroup = tokenDetailsTab.transactionsGroup;
            }
            return tokenDetailsTab.copy(transactionsGroup);
        }

        public final TransactionsGroup component1() {
            return this.transactionsGroup;
        }

        public final TokenDetailsTab copy(TransactionsGroup transactionsGroup) {
            Intrinsics.checkNotNullParameter(transactionsGroup, "transactionsGroup");
            return new TokenDetailsTab(transactionsGroup);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TokenDetailsTab) && Intrinsics.areEqual(this.transactionsGroup, ((TokenDetailsTab) obj).transactionsGroup);
        }

        public int hashCode() {
            return this.transactionsGroup.hashCode();
        }

        public String toString() {
            return "TokenDetailsTab(transactionsGroup=" + this.transactionsGroup + ')';
        }

        public final TransactionsGroup getTransactionsGroup() {
            return this.transactionsGroup;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TokenDetailsTab(TransactionsGroup transactionsGroup) {
            super(null);
            Intrinsics.checkNotNullParameter(transactionsGroup, "transactionsGroup");
            this.transactionsGroup = transactionsGroup;
        }
    }

    /* compiled from: WalletTransactionsScreenType.kt */
    /* loaded from: classes4.dex */
    public static final class StakingDetailsTab extends WalletTransactionsScreenType {
        private final StakingOperationType operationsType;
        private final StakingDetailsItem stakingDetails;

        public static /* synthetic */ StakingDetailsTab copy$default(StakingDetailsTab stakingDetailsTab, StakingDetailsItem stakingDetailsItem, StakingOperationType stakingOperationType, int i, Object obj) {
            if ((i & 1) != 0) {
                stakingDetailsItem = stakingDetailsTab.stakingDetails;
            }
            if ((i & 2) != 0) {
                stakingOperationType = stakingDetailsTab.operationsType;
            }
            return stakingDetailsTab.copy(stakingDetailsItem, stakingOperationType);
        }

        public final StakingDetailsItem component1() {
            return this.stakingDetails;
        }

        public final StakingOperationType component2() {
            return this.operationsType;
        }

        public final StakingDetailsTab copy(StakingDetailsItem stakingDetails, StakingOperationType stakingOperationType) {
            Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
            return new StakingDetailsTab(stakingDetails, stakingOperationType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingDetailsTab) {
                StakingDetailsTab stakingDetailsTab = (StakingDetailsTab) obj;
                return Intrinsics.areEqual(this.stakingDetails, stakingDetailsTab.stakingDetails) && this.operationsType == stakingDetailsTab.operationsType;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.stakingDetails.hashCode() * 31;
            StakingOperationType stakingOperationType = this.operationsType;
            return hashCode + (stakingOperationType == null ? 0 : stakingOperationType.hashCode());
        }

        public String toString() {
            return "StakingDetailsTab(stakingDetails=" + this.stakingDetails + ", operationsType=" + this.operationsType + ')';
        }

        public final StakingDetailsItem getStakingDetails() {
            return this.stakingDetails;
        }

        public final StakingOperationType getOperationsType() {
            return this.operationsType;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingDetailsTab(StakingDetailsItem stakingDetails, StakingOperationType stakingOperationType) {
            super(null);
            Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
            this.stakingDetails = stakingDetails;
            this.operationsType = stakingOperationType;
        }
    }

    /* compiled from: WalletTransactionsScreenType.kt */
    /* loaded from: classes4.dex */
    public static final class StakingOperationsTab extends WalletTransactionsScreenType {
        private final StakingOperationType operationsType;

        public static /* synthetic */ StakingOperationsTab copy$default(StakingOperationsTab stakingOperationsTab, StakingOperationType stakingOperationType, int i, Object obj) {
            if ((i & 1) != 0) {
                stakingOperationType = stakingOperationsTab.operationsType;
            }
            return stakingOperationsTab.copy(stakingOperationType);
        }

        public final StakingOperationType component1() {
            return this.operationsType;
        }

        public final StakingOperationsTab copy(StakingOperationType stakingOperationType) {
            return new StakingOperationsTab(stakingOperationType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StakingOperationsTab) && this.operationsType == ((StakingOperationsTab) obj).operationsType;
        }

        public int hashCode() {
            StakingOperationType stakingOperationType = this.operationsType;
            if (stakingOperationType == null) {
                return 0;
            }
            return stakingOperationType.hashCode();
        }

        public String toString() {
            return "StakingOperationsTab(operationsType=" + this.operationsType + ')';
        }

        public final StakingOperationType getOperationsType() {
            return this.operationsType;
        }

        public StakingOperationsTab(StakingOperationType stakingOperationType) {
            super(null);
            this.operationsType = stakingOperationType;
        }
    }

    /* compiled from: WalletTransactionsScreenType.kt */
    /* loaded from: classes4.dex */
    public static final class CryptoBoxDetailsTab extends WalletTransactionsScreenType {
        private final CryptoBoxInfo cryptoBoxInfo;

        public static /* synthetic */ CryptoBoxDetailsTab copy$default(CryptoBoxDetailsTab cryptoBoxDetailsTab, CryptoBoxInfo cryptoBoxInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                cryptoBoxInfo = cryptoBoxDetailsTab.cryptoBoxInfo;
            }
            return cryptoBoxDetailsTab.copy(cryptoBoxInfo);
        }

        public final CryptoBoxInfo component1() {
            return this.cryptoBoxInfo;
        }

        public final CryptoBoxDetailsTab copy(CryptoBoxInfo cryptoBoxInfo) {
            Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
            return new CryptoBoxDetailsTab(cryptoBoxInfo);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CryptoBoxDetailsTab) && Intrinsics.areEqual(this.cryptoBoxInfo, ((CryptoBoxDetailsTab) obj).cryptoBoxInfo);
        }

        public int hashCode() {
            return this.cryptoBoxInfo.hashCode();
        }

        public String toString() {
            return "CryptoBoxDetailsTab(cryptoBoxInfo=" + this.cryptoBoxInfo + ')';
        }

        public final CryptoBoxInfo getCryptoBoxInfo() {
            return this.cryptoBoxInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CryptoBoxDetailsTab(CryptoBoxInfo cryptoBoxInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
            this.cryptoBoxInfo = cryptoBoxInfo;
        }
    }
}
