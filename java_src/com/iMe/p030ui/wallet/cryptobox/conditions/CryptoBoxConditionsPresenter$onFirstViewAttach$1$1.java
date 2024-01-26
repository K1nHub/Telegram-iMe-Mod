package com.iMe.p030ui.wallet.cryptobox.conditions;

import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxConditionsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$onFirstViewAttach$1$1 */
/* loaded from: classes4.dex */
/* synthetic */ class CryptoBoxConditionsPresenter$onFirstViewAttach$1$1 extends FunctionReferenceImpl implements Function2<Number, TokenDetailed, String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CryptoBoxConditionsPresenter$onFirstViewAttach$1$1(Object obj) {
        super(2, obj, BalanceFormatter.class, "formatTokenBalance", "formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final String invoke(Number p0, TokenDetailed p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        return ((BalanceFormatter) this.receiver).formatTokenBalance(p0, p1);
    }
}
