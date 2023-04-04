package com.iMe.p032ui.wallet.home.p033v2.tabs.services;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeServicesBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeServicesFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$binding$2 */
/* loaded from: classes3.dex */
public final class WalletHomeServicesFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletHomeServicesBinding> {
    final /* synthetic */ WalletHomeServicesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeServicesFragment$binding$2(WalletHomeServicesFragment walletHomeServicesFragment) {
        super(0);
        this.this$0 = walletHomeServicesFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletHomeServicesBinding invoke() {
        return ForkFragmentWalletHomeServicesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
