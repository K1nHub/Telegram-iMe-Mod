package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectSwitchNetworkBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$1 */
/* loaded from: classes4.dex */
public final class WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletConnectSwitchNetworkBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$1(WalletConnectSwitchNetworkBottomSheetDialog walletConnectSwitchNetworkBottomSheetDialog) {
        super(1);
        this.this$0 = walletConnectSwitchNetworkBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.approveNetworkChange();
    }
}
