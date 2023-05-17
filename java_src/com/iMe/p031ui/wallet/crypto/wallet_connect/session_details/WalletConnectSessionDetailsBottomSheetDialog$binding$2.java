package com.iMe.p031ui.wallet.crypto.wallet_connect.session_details;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletConnectSessionDetailsBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: WalletConnectSessionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
final class WalletConnectSessionDetailsBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletConnectSessionDetailsBinding> {
    final /* synthetic */ BaseFragment $fragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectSessionDetailsBottomSheetDialog$binding$2(BaseFragment baseFragment) {
        super(0);
        this.$fragment = baseFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletConnectSessionDetailsBinding invoke() {
        return ForkContentWalletConnectSessionDetailsBinding.inflate(LayoutInflater.from(this.$fragment.getParentActivity()));
    }
}
