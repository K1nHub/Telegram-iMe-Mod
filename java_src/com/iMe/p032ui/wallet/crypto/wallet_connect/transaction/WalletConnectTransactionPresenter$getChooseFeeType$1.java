package com.iMe.p032ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectTransactionPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$getChooseFeeType$1 */
/* loaded from: classes3.dex */
public /* synthetic */ class WalletConnectTransactionPresenter$getChooseFeeType$1 extends FunctionReferenceImpl implements Function1<GasPriceItem, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletConnectTransactionPresenter$getChooseFeeType$1(Object obj) {
        super(1, obj, WalletConnectTransactionPresenter.class, "selectFee", "selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(GasPriceItem gasPriceItem) {
        invoke2(gasPriceItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(GasPriceItem p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((WalletConnectTransactionPresenter) this.receiver).selectFee(p0);
    }
}
