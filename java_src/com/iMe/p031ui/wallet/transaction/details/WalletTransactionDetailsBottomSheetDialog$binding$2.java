package com.iMe.p031ui.wallet.transaction.details;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletTransactionDetailsLayoutBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
public final class WalletTransactionDetailsBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletTransactionDetailsLayoutBinding> {
    final /* synthetic */ WalletTransactionDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionDetailsBottomSheetDialog$binding$2(WalletTransactionDetailsBottomSheetDialog walletTransactionDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = walletTransactionDetailsBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletTransactionDetailsLayoutBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentWalletTransactionDetailsLayoutBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
