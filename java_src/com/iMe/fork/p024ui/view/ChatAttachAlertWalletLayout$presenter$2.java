package com.iMe.fork.p024ui.view;

import com.iMe.p031ui.wallet.home.old.WalletAttachAlertPresenter;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: ChatAttachAlertWalletLayout.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$presenter$2 */
/* loaded from: classes3.dex */
final class ChatAttachAlertWalletLayout$presenter$2 extends Lambda implements Function0<WalletAttachAlertPresenter> {
    final /* synthetic */ ChatAttachAlertWalletLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout$presenter$2(ChatAttachAlertWalletLayout chatAttachAlertWalletLayout) {
        super(0);
        this.this$0 = chatAttachAlertWalletLayout;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletAttachAlertPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C1463x5059aa3c(this.this$0, null, null));
        return (WalletAttachAlertPresenter) lazy.getValue();
    }
}
