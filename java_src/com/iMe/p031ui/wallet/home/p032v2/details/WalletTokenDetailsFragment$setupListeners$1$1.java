package com.iMe.p031ui.wallet.home.p032v2.details;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$setupListeners$1$1 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsFragment$setupListeners$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$setupListeners$1$1(WalletTokenDetailsFragment walletTokenDetailsFragment) {
        super(1);
        this.this$0 = walletTokenDetailsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        WalletTokenDetailsPresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.startAccountLevelDialog();
    }
}
