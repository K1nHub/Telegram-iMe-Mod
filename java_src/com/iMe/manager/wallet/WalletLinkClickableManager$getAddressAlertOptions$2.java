package com.iMe.manager.wallet;

import com.iMe.model.wallet.transaction.ClickableItem;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletLinkClickableManager.kt */
/* loaded from: classes3.dex */
public final class WalletLinkClickableManager$getAddressAlertOptions$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletLinkClickableManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletLinkClickableManager$getAddressAlertOptions$2(WalletLinkClickableManager walletLinkClickableManager) {
        super(0);
        this.this$0 = walletLinkClickableManager;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        WalletLinkClickableView walletLinkClickableView;
        ClickableItem clickableItem;
        ClickableItem clickableItem2;
        ClickableItem clickableItem3;
        walletLinkClickableView = this.this$0.viewState;
        if (walletLinkClickableView != null) {
            clickableItem = this.this$0.clickableItem;
            TokenCode tokenCode = clickableItem.getTokenCode();
            clickableItem2 = this.this$0.clickableItem;
            String recipientAddress = clickableItem2.getRecipientAddress();
            clickableItem3 = this.this$0.clickableItem;
            walletLinkClickableView.actionMakeTransfer(tokenCode, "", false, recipientAddress, clickableItem3.getNetworkType());
            return Unit.INSTANCE;
        }
        return null;
    }
}
