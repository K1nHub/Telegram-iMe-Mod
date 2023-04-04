package com.iMe.p032ui.wallet.notifications;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletNotificationsBinding;
/* compiled from: WalletNotificationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$binding$2 */
/* loaded from: classes4.dex */
final class WalletNotificationsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletNotificationsBinding> {
    final /* synthetic */ WalletNotificationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletNotificationsFragment$binding$2(WalletNotificationsFragment walletNotificationsFragment) {
        super(0);
        this.this$0 = walletNotificationsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletNotificationsBinding invoke() {
        return ForkFragmentWalletNotificationsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
