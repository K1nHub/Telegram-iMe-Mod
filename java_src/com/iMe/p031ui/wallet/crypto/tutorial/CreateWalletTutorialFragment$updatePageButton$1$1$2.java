package com.iMe.p031ui.wallet.crypto.tutorial;

import android.view.View;
import com.iMe.p031ui.custom.WrapContentViewPager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletTutorialBinding;
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$updatePageButton$1$1$2 */
/* loaded from: classes4.dex */
final class CreateWalletTutorialFragment$updatePageButton$1$1$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ForkFragmentWalletTutorialBinding $this_with;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletTutorialFragment$updatePageButton$1$1$2(ForkFragmentWalletTutorialBinding forkFragmentWalletTutorialBinding) {
        super(1);
        this.$this_with = forkFragmentWalletTutorialBinding;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        WrapContentViewPager viewPagerTutorial = this.$this_with.viewPagerTutorial;
        Intrinsics.checkNotNullExpressionValue(viewPagerTutorial, "viewPagerTutorial");
        ViewExtKt.nextPage(viewPagerTutorial);
    }
}
