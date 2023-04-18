package com.iMe.p031ui.wallet.crypto.buy;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletCryptoBuyBinding;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$showRefreshLoading$1 */
/* loaded from: classes3.dex */
final class BuyCryptoProductFragment$showRefreshLoading$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ boolean $show;
    final /* synthetic */ BuyCryptoProductFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductFragment$showRefreshLoading$1(BuyCryptoProductFragment buyCryptoProductFragment, boolean z) {
        super(0);
        this.this$0 = buyCryptoProductFragment;
        this.$show = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ForkFragmentWalletCryptoBuyBinding binding;
        binding = this.this$0.getBinding();
        binding.getRoot().setRefreshing(this.$show);
    }
}
