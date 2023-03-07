package com.smedialink.p031ui.wallet.staking.conditions;

import com.smedialink.model.staking.StakingDetailsItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: StakingConditionsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
final class StakingConditionsBottomSheetDialog$presenter$2 extends Lambda implements Function0<StakingConditionsPresenter> {
    final /* synthetic */ StakingDetailsItem $stakingDetails;
    final /* synthetic */ StakingConditionsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingConditionsBottomSheetDialog$presenter$2(StakingConditionsBottomSheetDialog stakingConditionsBottomSheetDialog, StakingDetailsItem stakingDetailsItem) {
        super(0);
        this.this$0 = stakingConditionsBottomSheetDialog;
        this.$stakingDetails = stakingDetailsItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingConditionsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21221 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ StakingDetailsItem $stakingDetails;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21221(StakingDetailsItem stakingDetailsItem) {
            super(0);
            this.$stakingDetails = stakingDetailsItem;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$stakingDetails);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final StakingConditionsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2120x8466ed51(this.this$0, null, new C21221(this.$stakingDetails)));
        return (StakingConditionsPresenter) lazy.getValue();
    }
}
