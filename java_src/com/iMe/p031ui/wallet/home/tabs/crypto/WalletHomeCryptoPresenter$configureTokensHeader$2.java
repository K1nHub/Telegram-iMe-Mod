package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.iMe.storage.domain.model.wallet.token.TokenType;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$configureTokensHeader$2 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoPresenter$configureTokensHeader$2 extends Lambda implements Function2<Integer, String, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$configureTokensHeader$2(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(2);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
        invoke(num.intValue(), str);
        return Unit.INSTANCE;
    }

    public final void invoke(int i, String str) {
        Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
        this.this$0.setTokensType(TokenType.Companion.getAvailableTypes().get(i));
    }
}
