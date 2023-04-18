package com.iMe.p031ui.wallet.crypto.buy.customPrice;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletCryptoBuyCustomPriceLayoutBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5 */
/* loaded from: classes3.dex */
public final class CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ForkContentWalletCryptoBuyCustomPriceLayoutBinding $this_with;
    final /* synthetic */ CryptoBuyCustomPriceBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5(CryptoBuyCustomPriceBottomSheetDialog cryptoBuyCustomPriceBottomSheetDialog, ForkContentWalletCryptoBuyCustomPriceLayoutBinding forkContentWalletCryptoBuyCustomPriceLayoutBinding) {
        super(1);
        this.this$0 = cryptoBuyCustomPriceBottomSheetDialog;
        this.$this_with = forkContentWalletCryptoBuyCustomPriceLayoutBinding;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        CryptoBuyCustomPricePresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.changeExchangeCurrency(String.valueOf(this.$this_with.editFromAmount.getText()), this.$this_with.textToAmount.getText().toString());
    }
}
