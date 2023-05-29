package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletConnectSwitchNetworkBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: WalletConnectSwitchNetworkBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
final class WalletConnectSwitchNetworkBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletConnectSwitchNetworkBinding> {
    final /* synthetic */ BaseFragment $fragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectSwitchNetworkBottomSheetDialog$binding$2(BaseFragment baseFragment) {
        super(0);
        this.$fragment = baseFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletConnectSwitchNetworkBinding invoke() {
        return ForkContentWalletConnectSwitchNetworkBinding.inflate(LayoutInflater.from(this.$fragment.getParentActivity()));
    }
}
