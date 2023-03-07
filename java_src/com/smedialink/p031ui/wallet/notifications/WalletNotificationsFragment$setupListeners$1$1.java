package com.smedialink.p031ui.wallet.notifications;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletNotificationsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$setupListeners$1$1 */
/* loaded from: classes3.dex */
public final class WalletNotificationsFragment$setupListeners$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletNotificationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletNotificationsFragment$setupListeners$1$1(WalletNotificationsFragment walletNotificationsFragment) {
        super(0);
        this.this$0 = walletNotificationsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletNotificationsPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.loadNotification(true);
    }
}
