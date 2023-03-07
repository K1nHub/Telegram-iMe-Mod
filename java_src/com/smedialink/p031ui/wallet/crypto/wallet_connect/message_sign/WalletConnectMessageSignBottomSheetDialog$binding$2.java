package com.smedialink.p031ui.wallet.crypto.wallet_connect.message_sign;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletConnectMessageSignBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectMessageSignBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
public final class WalletConnectMessageSignBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletConnectMessageSignBinding> {
    final /* synthetic */ WalletConnectMessageSignBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectMessageSignBottomSheetDialog$binding$2(WalletConnectMessageSignBottomSheetDialog walletConnectMessageSignBottomSheetDialog) {
        super(0);
        this.this$0 = walletConnectMessageSignBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletConnectMessageSignBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentWalletConnectMessageSignBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
