package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletConnectBinding;
/* compiled from: WalletConnectFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$binding$2 */
/* loaded from: classes3.dex */
final class WalletConnectFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletConnectBinding> {
    final /* synthetic */ WalletConnectFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectFragment$binding$2(WalletConnectFragment walletConnectFragment) {
        super(0);
        this.this$0 = walletConnectFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletConnectBinding invoke() {
        return ForkFragmentWalletConnectBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
