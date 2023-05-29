package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$onSessionItemClick$1 */
/* loaded from: classes4.dex */
public final class WalletConnectFragment$onSessionItemClick$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletConnectSessionItem $sessionItem;
    final /* synthetic */ WalletConnectFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectFragment$onSessionItemClick$1(WalletConnectFragment walletConnectFragment, WalletConnectSessionItem walletConnectSessionItem) {
        super(0);
        this.this$0 = walletConnectFragment;
        this.$sessionItem = walletConnectSessionItem;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletConnectPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.disconnect(this.$sessionItem);
    }
}
