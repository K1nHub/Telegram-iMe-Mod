package com.smedialink.p031ui.wallet.crypto.buy.customPrice;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$2 */
/* loaded from: classes3.dex */
final class CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CryptoBuyCustomPriceBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$2(CryptoBuyCustomPriceBottomSheetDialog cryptoBuyCustomPriceBottomSheetDialog) {
        super(1);
        this.this$0 = cryptoBuyCustomPriceBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.dismiss();
    }
}
