package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CustomTokensFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$setupListeners$1$1$1 */
/* loaded from: classes4.dex */
public final class CustomTokensFragment$setupListeners$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CustomTokensFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensFragment$setupListeners$1$1$1(CustomTokensFragment customTokensFragment) {
        super(0);
        this.this$0 = customTokensFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CustomTokensPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.reload();
    }
}
