package com.iMe.p031ui.wallet.crypto.create.intro;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletIntroFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$setupListeners$1$4 */
/* loaded from: classes4.dex */
public final class CreateWalletIntroFragment$setupListeners$1$4 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletIntroFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletIntroFragment$setupListeners$1$4(CreateWalletIntroFragment createWalletIntroFragment) {
        super(1);
        this.this$0 = createWalletIntroFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        CreateWalletIntroPresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.onNextClick();
    }
}
