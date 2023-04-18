package com.iMe.p031ui.wallet.notifications.details;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletNotificationDetailsLayoutBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletNotificationDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
public final class WalletNotificationDetailsBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletNotificationDetailsLayoutBinding> {
    final /* synthetic */ WalletNotificationDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletNotificationDetailsBottomSheetDialog$binding$2(WalletNotificationDetailsBottomSheetDialog walletNotificationDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = walletNotificationDetailsBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletNotificationDetailsLayoutBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentWalletNotificationDetailsLayoutBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
