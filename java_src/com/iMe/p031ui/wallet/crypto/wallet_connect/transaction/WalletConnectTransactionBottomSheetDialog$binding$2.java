package com.iMe.p031ui.wallet.crypto.wallet_connect.transaction;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletConnectTransactionBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectTransactionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
public final class WalletConnectTransactionBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletConnectTransactionBinding> {
    final /* synthetic */ WalletConnectTransactionBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectTransactionBottomSheetDialog$binding$2(WalletConnectTransactionBottomSheetDialog walletConnectTransactionBottomSheetDialog) {
        super(0);
        this.this$0 = walletConnectTransactionBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletConnectTransactionBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentWalletConnectTransactionBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
