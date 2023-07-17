package com.iMe.p031ui.wallet.home.details;

import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$horizontalActionButtonItems$2 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsPresenter$horizontalActionButtonItems$2 extends Lambda implements Function0<List<? extends HorizontalActionButtonItem>> {
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$horizontalActionButtonItems$2(WalletTokenDetailsPresenter walletTokenDetailsPresenter) {
        super(0);
        this.this$0 = walletTokenDetailsPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends HorizontalActionButtonItem> invoke() {
        TokenDetailsArgs tokenDetailsArgs;
        List<? extends HorizontalActionButtonItem> resolveAvailableTokenActions;
        WalletTokenDetailsPresenter walletTokenDetailsPresenter = this.this$0;
        tokenDetailsArgs = walletTokenDetailsPresenter.args;
        resolveAvailableTokenActions = walletTokenDetailsPresenter.resolveAvailableTokenActions(tokenDetailsArgs);
        return resolveAvailableTokenActions;
    }
}
