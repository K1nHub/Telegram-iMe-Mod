package com.iMe.p031ui.wallet.crypto.tutorial;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupViewPager$1$1$onPageSelected$1$1 */
/* loaded from: classes3.dex */
final class C2157x2903d52b extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletTutorialFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2157x2903d52b(CreateWalletTutorialFragment createWalletTutorialFragment) {
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
        CreateWalletTutorialPresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.onLastPageActionClick();
    }
}