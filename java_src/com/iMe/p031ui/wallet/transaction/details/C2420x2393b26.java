package com.iMe.p031ui.wallet.transaction.details;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2 */
/* loaded from: classes4.dex */
public final class C2420x2393b26 extends Lambda implements Function0<Float> {
    final /* synthetic */ WalletTransactionDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2420x2393b26(WalletTransactionDetailsBottomSheetDialog walletTransactionDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = walletTransactionDetailsBottomSheetDialog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(this.this$0.getContext().getResources().getDimension(C3290R.dimen.icon_size_default) / 2);
    }
}
