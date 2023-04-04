package com.iMe.p032ui.base;

import com.iMe.utils.helper.wallet.WalletHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletAuthFragment.kt */
/* renamed from: com.iMe.ui.base.WalletAuthFragment$listenGlobalRxEvents$1$2 */
/* loaded from: classes3.dex */
final class WalletAuthFragment$listenGlobalRxEvents$1$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletAuthFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAuthFragment$listenGlobalRxEvents$1$2(WalletAuthFragment walletAuthFragment) {
        super(0);
        this.this$0 = walletAuthFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletHelper.safeRunWalletScreen$default(this.this$0, null, null, null, 7, null);
    }
}
