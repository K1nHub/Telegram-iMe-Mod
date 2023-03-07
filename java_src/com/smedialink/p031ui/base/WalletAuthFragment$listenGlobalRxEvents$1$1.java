package com.smedialink.p031ui.base;

import com.smedialink.utils.helper.wallet.WalletHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3158R;
/* compiled from: WalletAuthFragment.kt */
/* renamed from: com.smedialink.ui.base.WalletAuthFragment$listenGlobalRxEvents$1$1 */
/* loaded from: classes3.dex */
final class WalletAuthFragment$listenGlobalRxEvents$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletAuthFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAuthFragment$listenGlobalRxEvents$1$1(WalletAuthFragment walletAuthFragment) {
        super(0);
        this.this$0 = walletAuthFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletAuthFragment walletAuthFragment = this.this$0;
        WalletHelper.safeRunWalletScreen$default(walletAuthFragment, walletAuthFragment.getResourceManager().getString(C3158R.string.wallet_auth_dialog_secure_description), null, null, 6, null);
    }
}
