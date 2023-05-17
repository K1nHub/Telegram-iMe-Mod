package com.iMe.p031ui.wallet.crypto.wallet_connect.new_session;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectNewSessionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$setupListeners$1$2 */
/* loaded from: classes4.dex */
public final class WalletConnectNewSessionBottomSheetDialog$setupListeners$1$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletConnectNewSessionBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectNewSessionBottomSheetDialog$setupListeners$1$2(WalletConnectNewSessionBottomSheetDialog walletConnectNewSessionBottomSheetDialog) {
        super(1);
        this.this$0 = walletConnectNewSessionBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.rejectSession();
    }
}
