package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import com.smedialink.model.wallet.crypto.create.WalletCreationType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1 */
/* loaded from: classes3.dex */
final class WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletCreationType $this_with;
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1(WalletHomeCryptoPresenter walletHomeCryptoPresenter, WalletCreationType walletCreationType) {
        super(0);
        this.this$0 = walletHomeCryptoPresenter;
        this.$this_with = walletCreationType;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.startWalletCreationFlow(this.$this_with);
    }
}
