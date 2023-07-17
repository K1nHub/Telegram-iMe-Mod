package com.iMe.p031ui.wallet.home.details;

import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$3 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TokenDetailed $this_with;
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$3(WalletTokenDetailsPresenter walletTokenDetailsPresenter, TokenDetailed tokenDetailed) {
        super(0);
        this.this$0 = walletTokenDetailsPresenter;
        this.$this_with = tokenDetailed;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.startReceiveScreen(this.$this_with.getAvatarUrl());
    }
}
