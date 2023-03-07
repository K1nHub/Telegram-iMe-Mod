package com.smedialink.p031ui.wallet.transaction;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletTransactionsBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$binding$2 */
/* loaded from: classes3.dex */
public final class WalletTransactionsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletTransactionsBinding> {
    final /* synthetic */ WalletTransactionsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsFragment$binding$2(WalletTransactionsFragment walletTransactionsFragment) {
        super(0);
        this.this$0 = walletTransactionsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletTransactionsBinding invoke() {
        return ForkFragmentWalletTransactionsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
