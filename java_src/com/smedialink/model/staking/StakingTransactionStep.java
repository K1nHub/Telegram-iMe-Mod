package com.smedialink.model.staking;

import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: StakingTransactionStep.kt */
/* loaded from: classes3.dex */
public abstract class StakingTransactionStep {
    private final int textResId;

    public /* synthetic */ StakingTransactionStep(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    private StakingTransactionStep(int i) {
        this.textResId = i;
    }

    protected final int getTextResId() {
        return this.textResId;
    }

    public String getButtonText(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(this.textResId);
    }

    /* compiled from: StakingTransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class Loading extends StakingTransactionStep {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(C3301R.string.staking_action_button_loading, null);
        }
    }

    /* compiled from: StakingTransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class RetryLoading extends StakingTransactionStep {
        public static final RetryLoading INSTANCE = new RetryLoading();

        private RetryLoading() {
            super(C3301R.string.staking_action_button_try_again, null);
        }
    }

    /* compiled from: StakingTransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class ApprovalProcessing extends StakingTransactionStep {
        public static final ApprovalProcessing INSTANCE = new ApprovalProcessing();

        private ApprovalProcessing() {
            super(C3301R.string.wallet_swap_process_button_approving, null);
        }
    }

    /* compiled from: StakingTransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class Prepare extends StakingTransactionStep {
        public static final Prepare INSTANCE = new Prepare();

        private Prepare() {
            super(C3301R.string.wallet_amount_button_calculate, null);
        }
    }

    /* compiled from: StakingTransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class ApprovalNeeded extends StakingTransactionStep {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApprovalNeeded(String tokenTicker) {
            super(C3301R.string.staking_approve_token, null);
            Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
            this.tokenTicker = tokenTicker;
        }

        public final String getTokenTicker() {
            return this.tokenTicker;
        }

        @Override // com.smedialink.model.staking.StakingTransactionStep
        public String getButtonText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(getTextResId(), this.tokenTicker);
        }
    }

    /* compiled from: StakingTransactionStep.kt */
    /* loaded from: classes3.dex */
    public static final class Execute extends StakingTransactionStep {
        private final int screenType;

        private final int component1() {
            return this.screenType;
        }

        public static /* synthetic */ Execute copy$default(Execute execute, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = execute.screenType;
            }
            return execute.copy(i);
        }

        public final Execute copy(int i) {
            return new Execute(i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Execute) && this.screenType == ((Execute) obj).screenType;
        }

        public int hashCode() {
            return this.screenType;
        }

        public String toString() {
            return "Execute(screenType=" + this.screenType + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Execute(int r3) {
            /*
                r2 = this;
                int r0 = org.telegram.p048ui.ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE
                if (r3 != r0) goto L7
                int r0 = org.telegram.messenger.C3301R.string.wallet_operation_deposit
                goto L10
            L7:
                int r0 = org.telegram.p048ui.ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE
                if (r3 != r0) goto Le
                int r0 = org.telegram.messenger.C3301R.string.staking_profit_get
                goto L10
            Le:
                int r0 = org.telegram.messenger.C3301R.string.staking_details_withdraw
            L10:
                r1 = 0
                r2.<init>(r0, r1)
                r2.screenType = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.smedialink.model.staking.StakingTransactionStep.Execute.<init>(int):void");
        }
    }
}
