package com.smedialink.manager.wallet;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletLinkClickableManager.kt */
/* loaded from: classes3.dex */
public final class WalletLinkClickableManager$getAddressAlertOptions$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ String $address;
    final /* synthetic */ WalletLinkClickableManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletLinkClickableManager$getAddressAlertOptions$1(WalletLinkClickableManager walletLinkClickableManager, String str) {
        super(0);
        this.this$0 = walletLinkClickableManager;
        this.$address = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        WalletLinkClickableView walletLinkClickableView;
        walletLinkClickableView = this.this$0.viewState;
        if (walletLinkClickableView != null) {
            walletLinkClickableView.actionCopyToClipboard(this.$address);
            return Unit.INSTANCE;
        }
        return null;
    }
}
