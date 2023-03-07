package com.smedialink.manager.wallet;

import com.smedialink.model.wallet.transaction.ClickableItem;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletLinkClickableManager.kt */
/* loaded from: classes3.dex */
public final class WalletLinkClickableManager$getUserIdAlertOptions$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ long $userId;
    final /* synthetic */ WalletLinkClickableManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletLinkClickableManager$getUserIdAlertOptions$3(WalletLinkClickableManager walletLinkClickableManager, long j) {
        super(0);
        this.this$0 = walletLinkClickableManager;
        this.$userId = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        WalletLinkClickableView walletLinkClickableView;
        ClickableItem clickableItem;
        TelegramGateway telegramGateway;
        ClickableItem clickableItem2;
        ClickableItem clickableItem3;
        walletLinkClickableView = this.this$0.viewState;
        if (walletLinkClickableView == null) {
            return null;
        }
        clickableItem = this.this$0.clickableItem;
        TokenCode tokenCode = clickableItem.getTokenCode();
        String valueOf = String.valueOf(this.$userId);
        telegramGateway = this.this$0.telegramGateway;
        boolean hasUser = telegramGateway.hasUser(this.$userId);
        clickableItem2 = this.this$0.clickableItem;
        String recipientAddress = clickableItem2.getRecipientAddress();
        clickableItem3 = this.this$0.clickableItem;
        walletLinkClickableView.actionMakeTransfer(tokenCode, valueOf, hasUser, recipientAddress, clickableItem3.getNetworkType());
        return Unit.INSTANCE;
    }
}
