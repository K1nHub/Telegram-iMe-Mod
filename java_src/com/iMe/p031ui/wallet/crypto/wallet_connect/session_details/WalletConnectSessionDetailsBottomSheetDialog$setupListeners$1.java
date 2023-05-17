package com.iMe.p031ui.wallet.crypto.wallet_connect.session_details;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectSessionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$setupListeners$1 */
/* loaded from: classes4.dex */
public final class WalletConnectSessionDetailsBottomSheetDialog$setupListeners$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletConnectSessionDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectSessionDetailsBottomSheetDialog$setupListeners$1(WalletConnectSessionDetailsBottomSheetDialog walletConnectSessionDetailsBottomSheetDialog) {
        super(1);
        this.this$0 = walletConnectSessionDetailsBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.showDisconnectConfirmationDialog();
    }
}
