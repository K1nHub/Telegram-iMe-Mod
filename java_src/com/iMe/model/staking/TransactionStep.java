package com.iMe.model.staking;

import com.iMe.model.wallet.staking.StakingScreenType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: TransactionStep.kt */
/* loaded from: classes3.dex */
public abstract class TransactionStep {
    private final boolean isButtonEnabled;
    private final int textResId;

    public /* synthetic */ TransactionStep(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z);
    }

    private TransactionStep(int i, boolean z) {
        this.textResId = i;
        this.isButtonEnabled = z;
    }

    protected int getTextResId() {
        return this.textResId;
    }

    public final boolean isButtonEnabled() {
        return this.isButtonEnabled;
    }

    public String getButtonText(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(getTextResId());
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class Loading extends TransactionStep {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(C3630R.string.staking_action_button_loading, false, null);
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class RetryLoading extends TransactionStep {
        public static final RetryLoading INSTANCE = new RetryLoading();

        private RetryLoading() {
            super(C3630R.string.staking_action_button_try_again, true, null);
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class ApprovalProcessing extends TransactionStep {
        public static final ApprovalProcessing INSTANCE = new ApprovalProcessing();

        private ApprovalProcessing() {
            super(C3630R.string.wallet_swap_process_button_approving, false, null);
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class Prepare extends TransactionStep {
        public static final Prepare INSTANCE = new Prepare();

        private Prepare() {
            super(C3630R.string.wallet_amount_button_calculate, false, null);
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class Idle extends TransactionStep {
        private final int textResId;

        public Idle(int i) {
            super(i, false, null);
            this.textResId = i;
        }

        @Override // com.iMe.model.staking.TransactionStep
        protected int getTextResId() {
            return this.textResId;
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class ApprovalNeeded extends TransactionStep {
        private final String tokenTicker;

        public static /* synthetic */ ApprovalNeeded copy$default(ApprovalNeeded approvalNeeded, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = approvalNeeded.tokenTicker;
            }
            return approvalNeeded.copy(str);
        }

        public final String component1() {
            return this.tokenTicker;
        }

        public final ApprovalNeeded copy(String tokenTicker) {
            Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
            return new ApprovalNeeded(tokenTicker);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ApprovalNeeded) && Intrinsics.areEqual(this.tokenTicker, ((ApprovalNeeded) obj).tokenTicker);
        }

        public int hashCode() {
            return this.tokenTicker.hashCode();
        }

        public String toString() {
            return "ApprovalNeeded(tokenTicker=" + this.tokenTicker + ')';
        }

        public final String getTokenTicker() {
            return this.tokenTicker;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApprovalNeeded(String tokenTicker) {
            super(C3630R.string.staking_approve_token, true, null);
            Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
            this.tokenTicker = tokenTicker;
        }

        @Override // com.iMe.model.staking.TransactionStep
        public String getButtonText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(getTextResId(), this.tokenTicker);
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class StakingExecute extends TransactionStep {
        private final StakingScreenType screenType;

        private final StakingScreenType component1() {
            return this.screenType;
        }

        public static /* synthetic */ StakingExecute copy$default(StakingExecute stakingExecute, StakingScreenType stakingScreenType, int i, Object obj) {
            if ((i & 1) != 0) {
                stakingScreenType = stakingExecute.screenType;
            }
            return stakingExecute.copy(stakingScreenType);
        }

        public final StakingExecute copy(StakingScreenType screenType) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new StakingExecute(screenType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StakingExecute) && this.screenType == ((StakingExecute) obj).screenType;
        }

        public int hashCode() {
            return this.screenType.hashCode();
        }

        public String toString() {
            return "StakingExecute(screenType=" + this.screenType + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingExecute(StakingScreenType screenType) {
            super(screenType.getButtonTextId(), true, null);
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            this.screenType = screenType;
        }
    }

    /* compiled from: TransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class CryptoBoxExecute extends TransactionStep {
        public static final CryptoBoxExecute INSTANCE = new CryptoBoxExecute();

        private CryptoBoxExecute() {
            super(C3630R.string.common_create, true, null);
        }
    }
}
