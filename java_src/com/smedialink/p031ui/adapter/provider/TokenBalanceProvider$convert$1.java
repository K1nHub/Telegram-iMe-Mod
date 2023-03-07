package com.smedialink.p031ui.adapter.provider;

import com.smedialink.model.wallet.home.AccountItem;
import com.smedialink.p031ui.custom.CoinTickerView;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenBalanceProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TokenBalanceProvider$convert$1 */
/* loaded from: classes3.dex */
public final class TokenBalanceProvider$convert$1 extends Lambda implements Function1<CoinTickerView, Unit> {
    final /* synthetic */ AccountItem.Token $item;
    final /* synthetic */ TokenBalanceProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenBalanceProvider$convert$1(AccountItem.Token token, TokenBalanceProvider tokenBalanceProvider) {
        super(1);
        this.$item = token;
        this.this$0 = tokenBalanceProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CoinTickerView coinTickerView) {
        invoke2(coinTickerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(CoinTickerView applyForView) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        TokenInfo info = this.$item.getBalance().getInfo();
        resourceManager = this.this$0.resourceManager;
        applyForView.setTicker(info, resourceManager);
    }
}
