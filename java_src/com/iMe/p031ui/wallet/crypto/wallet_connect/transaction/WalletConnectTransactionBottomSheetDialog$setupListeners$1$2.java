package com.iMe.p031ui.wallet.crypto.wallet_connect.transaction;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectTransactionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$setupListeners$1$2 */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionBottomSheetDialog$setupListeners$1$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletConnectTransactionBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectTransactionBottomSheetDialog$setupListeners$1$2(WalletConnectTransactionBottomSheetDialog walletConnectTransactionBottomSheetDialog) {
        super(1);
        this.this$0 = walletConnectTransactionBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.rejectTransaction();
    }
}