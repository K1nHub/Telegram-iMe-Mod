package com.iMe.storage.domain.utils.p029rx.event;

import com.iMe.storage.domain.model.staking.StakingTabType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DomainRxEvents.kt */
/* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents */
/* loaded from: classes3.dex */
public abstract class DomainRxEvents implements RxEvent {

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$CryptoEvent */
    /* loaded from: classes3.dex */
    public interface CryptoEvent {
    }

    public /* synthetic */ DomainRxEvents(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private DomainRxEvents() {
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$ForceWalletLogout */
    /* loaded from: classes3.dex */
    public static final class ForceWalletLogout extends DomainRxEvents {
        public static final ForceWalletLogout INSTANCE = new ForceWalletLogout();

        private ForceWalletLogout() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$AppUpdateRequired */
    /* loaded from: classes3.dex */
    public static final class AppUpdateRequired extends DomainRxEvents {
        public static final AppUpdateRequired INSTANCE = new AppUpdateRequired();

        private AppUpdateRequired() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SelectWalletCryptoTab */
    /* loaded from: classes3.dex */
    public static final class SelectWalletCryptoTab extends DomainRxEvents {
        public static final SelectWalletCryptoTab INSTANCE = new SelectWalletCryptoTab();

        private SelectWalletCryptoTab() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SuccessSaveBackup */
    /* loaded from: classes3.dex */
    public static final class SuccessSaveBackup extends DomainRxEvents implements CryptoEvent {
        public static final SuccessSaveBackup INSTANCE = new SuccessSaveBackup();

        private SuccessSaveBackup() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$WalletRestored */
    /* loaded from: classes3.dex */
    public static final class WalletRestored extends DomainRxEvents implements CryptoEvent {
        public static final WalletRestored INSTANCE = new WalletRestored();

        private WalletRestored() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$WalletCreated */
    /* loaded from: classes3.dex */
    public static final class WalletCreated extends DomainRxEvents implements CryptoEvent {
        public static final WalletCreated INSTANCE = new WalletCreated();

        private WalletCreated() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SuccessRecreateWalletByPassword */
    /* loaded from: classes3.dex */
    public static final class SuccessRecreateWalletByPassword extends DomainRxEvents implements CryptoEvent {
        public static final SuccessRecreateWalletByPassword INSTANCE = new SuccessRecreateWalletByPassword();

        private SuccessRecreateWalletByPassword() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$InterfaceSettingsChanged */
    /* loaded from: classes3.dex */
    public static final class InterfaceSettingsChanged extends DomainRxEvents implements CryptoEvent {
        public static final InterfaceSettingsChanged INSTANCE = new InterfaceSettingsChanged();

        private InterfaceSettingsChanged() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$NetworksSettingsChanged */
    /* loaded from: classes3.dex */
    public static final class NetworksSettingsChanged extends DomainRxEvents implements CryptoEvent {
        public static final NetworksSettingsChanged INSTANCE = new NetworksSettingsChanged();

        private NetworksSettingsChanged() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$BackupFlowStarted */
    /* loaded from: classes3.dex */
    public static final class BackupFlowStarted extends DomainRxEvents implements CryptoEvent {
        public static final BackupFlowStarted INSTANCE = new BackupFlowStarted();

        private BackupFlowStarted() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$NetworkUpdated */
    /* loaded from: classes3.dex */
    public static final class NetworkUpdated extends DomainRxEvents implements CryptoEvent {
        public static final NetworkUpdated INSTANCE = new NetworkUpdated();

        private NetworkUpdated() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$StakingProgrammesRefresh */
    /* loaded from: classes3.dex */
    public static final class StakingProgrammesRefresh extends DomainRxEvents implements CryptoEvent {
        public static final StakingProgrammesRefresh INSTANCE = new StakingProgrammesRefresh();

        private StakingProgrammesRefresh() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$RefreshTransactions */
    /* loaded from: classes3.dex */
    public static final class RefreshTransactions extends DomainRxEvents implements CryptoEvent {
        public static final RefreshTransactions INSTANCE = new RefreshTransactions();

        private RefreshTransactions() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$WalletReset */
    /* loaded from: classes3.dex */
    public static final class WalletReset extends DomainRxEvents implements CryptoEvent {
        public static final WalletReset INSTANCE = new WalletReset();

        private WalletReset() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$AllWalletsReset */
    /* loaded from: classes3.dex */
    public static final class AllWalletsReset extends DomainRxEvents implements CryptoEvent {
        public static final AllWalletsReset INSTANCE = new AllWalletsReset();

        private AllWalletsReset() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$CryptoBoxCreated */
    /* loaded from: classes3.dex */
    public static final class CryptoBoxCreated extends DomainRxEvents implements CryptoEvent {
        public static final CryptoBoxCreated INSTANCE = new CryptoBoxCreated();

        private CryptoBoxCreated() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$DonationAddressUpdated */
    /* loaded from: classes3.dex */
    public static final class DonationAddressUpdated extends DomainRxEvents implements CryptoEvent {
        public DonationAddressUpdated(long j) {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$TokensSettingsChanged */
    /* loaded from: classes3.dex */
    public static final class TokensSettingsChanged extends DomainRxEvents implements CryptoEvent {
        private final boolean isFromSearch;
        private final String sourceClassName;

        public TokensSettingsChanged() {
            this(null, false, 3, null);
        }

        public /* synthetic */ TokensSettingsChanged(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z);
        }

        public final String getSourceClassName() {
            return this.sourceClassName;
        }

        public final boolean isFromSearch() {
            return this.isFromSearch;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TokensSettingsChanged(String sourceClassName, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(sourceClassName, "sourceClassName");
            this.sourceClassName = sourceClassName;
            this.isFromSearch = z;
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$StakingTabRefreshStateChanged */
    /* loaded from: classes3.dex */
    public static final class StakingTabRefreshStateChanged extends DomainRxEvents implements CryptoEvent {
        private final boolean isShowRefresh;
        private final StakingTabType stakingTabType;

        public final StakingTabType getStakingTabType() {
            return this.stakingTabType;
        }

        public final boolean isShowRefresh() {
            return this.isShowRefresh;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingTabRefreshStateChanged(StakingTabType stakingTabType, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(stakingTabType, "stakingTabType");
            this.stakingTabType = stakingTabType;
            this.isShowRefresh = z;
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$StakingOperationsReload */
    /* loaded from: classes3.dex */
    public static final class StakingOperationsReload extends DomainRxEvents implements CryptoEvent {
        private final String networkId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingOperationsReload(String networkId) {
            super(null);
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            this.networkId = networkId;
        }

        public final String getNetworkId() {
            return this.networkId;
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$BinanceTokensSettingsChanged */
    /* loaded from: classes3.dex */
    public static final class BinanceTokensSettingsChanged extends DomainRxEvents {
        public static final BinanceTokensSettingsChanged INSTANCE = new BinanceTokensSettingsChanged();

        private BinanceTokensSettingsChanged() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$BinanceExpiredSession */
    /* loaded from: classes3.dex */
    public static final class BinanceExpiredSession extends DomainRxEvents {
        public static final BinanceExpiredSession INSTANCE = new BinanceExpiredSession();

        private BinanceExpiredSession() {
            super(null);
        }
    }
}
