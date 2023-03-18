package com.smedialink.p031ui.custom;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentStakingCompoundBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingPercentageView.kt */
/* renamed from: com.smedialink.ui.custom.StakingPercentageView$setupProgressListener$1 */
/* loaded from: classes3.dex */
public final class StakingPercentageView$setupProgressListener$1 extends Lambda implements Function1<Float, Unit> {
    final /* synthetic */ StakingPercentageView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingPercentageView$setupProgressListener$1(StakingPercentageView stakingPercentageView) {
        super(1);
        this.this$0 = stakingPercentageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
        invoke2(f);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Float newProgress) {
        ValueAnimator valueAnimator;
        float f;
        float f2;
        valueAnimator = this.this$0.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        StakingPercentageView stakingPercentageView = this.this$0;
        f = stakingPercentageView.progress;
        Intrinsics.checkNotNullExpressionValue(newProgress, "newProgress");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, newProgress.floatValue());
        final StakingPercentageView stakingPercentageView2 = this.this$0;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smedialink.ui.custom.StakingPercentageView$setupProgressListener$1$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                StakingPercentageView$setupProgressListener$1.invoke$lambda$1$lambda$0(StakingPercentageView.this, valueAnimator2);
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.start();
        stakingPercentageView.animator = ofFloat;
        this.this$0.progress = newProgress.floatValue();
        StakingPercentageView stakingPercentageView3 = this.this$0;
        f2 = stakingPercentageView3.progress;
        stakingPercentageView3.isThresholdReached = f2 >= 1.0f;
        this.this$0.setupColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(StakingPercentageView this$0, ValueAnimator it) {
        ForkContentStakingCompoundBinding forkContentStakingCompoundBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        forkContentStakingCompoundBinding = this$0.binding;
        ProgressView progressView = forkContentStakingCompoundBinding.viewProgress;
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        progressView.updateProgress(((Float) animatedValue).floatValue());
    }
}
