package com.iMe.p032ui.wallet.crypto.buy.customPrice;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentWalletCryptoBuyCustomPriceLayoutBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
public final class CryptoBuyCustomPriceBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentWalletCryptoBuyCustomPriceLayoutBinding> {
    final /* synthetic */ CryptoBuyCustomPriceBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBuyCustomPriceBottomSheetDialog$binding$2(CryptoBuyCustomPriceBottomSheetDialog cryptoBuyCustomPriceBottomSheetDialog) {
        super(0);
        this.this$0 = cryptoBuyCustomPriceBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentWalletCryptoBuyCustomPriceLayoutBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentWalletCryptoBuyCustomPriceLayoutBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
