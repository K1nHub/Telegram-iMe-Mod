package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1 extends Lambda implements Function1<SelectableTokenItem, Boolean> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(SelectableTokenItem it) {
        TokenDetailed ignoredToken;
        Intrinsics.checkNotNullParameter(it, "it");
        TokenDetailed token = it.getToken();
        ignoredToken = this.this$0.getIgnoredToken();
        return Boolean.valueOf(Intrinsics.areEqual(token, ignoredToken));
    }
}
