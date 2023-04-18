package com.iMe.p031ui.wallet.crypto.tutorial;

import android.view.View;
import com.iMe.p031ui.custom.WrapContentViewPager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletEthTutorialBinding;
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupViewPager$1$1$onPageSelected$2$1 */
/* loaded from: classes3.dex */
final class C2158x2903d8ec extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletTutorialFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2158x2903d8ec(CreateWalletTutorialFragment createWalletTutorialFragment) {
        super(1);
        this.this$0 = createWalletTutorialFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        ForkFragmentWalletEthTutorialBinding binding;
        Intrinsics.checkNotNullParameter(it, "it");
        binding = this.this$0.getBinding();
        WrapContentViewPager wrapContentViewPager = binding.viewPagerTutorial;
        Intrinsics.checkNotNullExpressionValue(wrapContentViewPager, "binding.viewPagerTutorial");
        ViewExtKt.nextPage(wrapContentViewPager);
    }
}
