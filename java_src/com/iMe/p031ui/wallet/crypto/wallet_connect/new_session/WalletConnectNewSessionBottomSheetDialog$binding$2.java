package com.iMe.p031ui.wallet.crypto.wallet_connect.new_session;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletConnectNewSessionBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: WalletConnectNewSessionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
final class WalletConnectNewSessionBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletConnectNewSessionBinding> {
    final /* synthetic */ BaseFragment $fragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectNewSessionBottomSheetDialog$binding$2(BaseFragment baseFragment) {
        super(0);
        this.$fragment = baseFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletConnectNewSessionBinding invoke() {
        return ForkContentWalletConnectNewSessionBinding.inflate(LayoutInflater.from(this.$fragment.getParentActivity()));
    }
}
