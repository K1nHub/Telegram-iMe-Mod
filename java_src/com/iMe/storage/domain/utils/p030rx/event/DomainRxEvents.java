package com.iMe.storage.domain.utils.p030rx.event;

import com.iMe.storage.domain.model.crypto.NetworkType;
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
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SuccessSaveBackup */
    /* loaded from: classes3.dex */
    public static final class SuccessSaveBackup extends DomainRxEvents implements CryptoEvent {
        public static final SuccessSaveBackup INSTANCE = new SuccessSaveBackup();

        private SuccessSaveBackup() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SuccessResetWallet */
    /* loaded from: classes3.dex */
    public static final class SuccessResetWallet extends DomainRxEvents implements CryptoEvent {
        private final boolean isLastWallet;

        public SuccessResetWallet(boolean z) {
            super(null);
            this.isLastWallet = z;
        }

        public final boolean isLastWallet() {
            return this.isLastWallet;
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SuccessRestoreWallet */
    /* loaded from: classes3.dex */
    public static final class SuccessRestoreWallet extends DomainRxEvents implements CryptoEvent {
        public static final SuccessRestoreWallet INSTANCE = new SuccessRestoreWallet();

        private SuccessRestoreWallet() {
            super(null);
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$SuccessCreateWallet */
    /* loaded from: classes3.dex */
    public static final class SuccessCreateWallet extends DomainRxEvents implements CryptoEvent {
        public static final SuccessCreateWallet INSTANCE = new SuccessCreateWallet();

        private SuccessCreateWallet() {
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
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$TokensSettingsChanged */
    /* loaded from: classes3.dex */
    public static final class TokensSettingsChanged extends DomainRxEvents implements CryptoEvent {
        public static final TokensSettingsChanged INSTANCE = new TokensSettingsChanged();

        private TokensSettingsChanged() {
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
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$DonationAddressUpdated */
    /* loaded from: classes3.dex */
    public static final class DonationAddressUpdated extends DomainRxEvents implements CryptoEvent {
        private final long chatId;

        public DonationAddressUpdated(long j) {
            super(null);
            this.chatId = j;
        }

        public final long getChatId() {
            return this.chatId;
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
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$StakingTabRefreshStateChanged */
    /* loaded from: classes3.dex */
    public static final class StakingTabRefreshStateChanged extends DomainRxEvents implements CryptoEvent {
        private final boolean isShowRefresh;
        private final StakingTabType stakingTabType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingTabRefreshStateChanged(StakingTabType stakingTabType, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(stakingTabType, "stakingTabType");
            this.stakingTabType = stakingTabType;
            this.isShowRefresh = z;
        }

        public final StakingTabType getStakingTabType() {
            return this.stakingTabType;
        }

        public final boolean isShowRefresh() {
            return this.isShowRefresh;
        }
    }

    /* compiled from: DomainRxEvents.kt */
    /* renamed from: com.iMe.storage.domain.utils.rx.event.DomainRxEvents$StakingOperationsReload */
    /* loaded from: classes3.dex */
    public static final class StakingOperationsReload extends DomainRxEvents implements CryptoEvent {
        private final NetworkType networkType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingOperationsReload(NetworkType networkType) {
            super(null);
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.networkType = networkType;
        }

        public final NetworkType getNetworkType() {
            return this.networkType;
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
