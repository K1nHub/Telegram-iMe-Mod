package com.iMe.p031ui.base.wallet_auth;

import com.iMe.utils.helper.wallet.WalletHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletAuthBaseFragment.kt */
/* renamed from: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$listenGlobalRxEvents$1$1 */
/* loaded from: classes.dex */
final class WalletAuthBaseFragment$listenGlobalRxEvents$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletAuthBaseFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAuthBaseFragment$listenGlobalRxEvents$1$1(WalletAuthBaseFragment walletAuthBaseFragment) {
        super(0);
        this.this$0 = walletAuthBaseFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletHelper.safeRunWalletScreen$default(this.this$0, null, 1, null);
    }
}
