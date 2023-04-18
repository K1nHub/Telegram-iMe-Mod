package com.iMe.p031ui.wallet.home.p032v2.adapter;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RLottieImageView;
/* compiled from: BannersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.adapter.BannersRecycleAdapter$convert$1$1 */
/* loaded from: classes3.dex */
final class BannersRecycleAdapter$convert$1$1 extends Lambda implements Function1<RLottieImageView, Unit> {
    final /* synthetic */ Object $isPlaying;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannersRecycleAdapter$convert$1$1(Object obj) {
        super(1);
        this.$isPlaying = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RLottieImageView rLottieImageView) {
        invoke2(rLottieImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(RLottieImageView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        if (((Boolean) this.$isPlaying).booleanValue()) {
            applyForView.playAnimation();
        } else {
            applyForView.stopAnimation();
        }
    }
}
