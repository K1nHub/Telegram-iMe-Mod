package com.smedialink.p031ui.wallet.transaction.details;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2 */
/* loaded from: classes3.dex */
public final class C2338x2393b26 extends Lambda implements Function0<Float> {
    final /* synthetic */ WalletTransactionDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2338x2393b26(WalletTransactionDetailsBottomSheetDialog walletTransactionDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = walletTransactionDetailsBottomSheetDialog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(this.this$0.getContext().getResources().getDimension(C3301R.dimen.icon_size_default) / 2);
    }
}
