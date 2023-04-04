package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenType;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class WalletHomeCryptoPresenter$loadTokens$$inlined$mapSuccess$1 extends Lambda implements Function1<Result<? extends List<? extends Object>>, Result<? extends List<BaseNode>>> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$loadTokens$$inlined$mapSuccess$1(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends List<BaseNode>> invoke(Result<? extends List<? extends Object>> result) {
        TokenType tokenType;
        List list;
        List configureUiItems;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends List<BaseNode>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        this.this$0.isLoading = false;
        WalletHomeCryptoPresenter walletHomeCryptoPresenter = this.this$0;
        Object data = result.getData();
        Intrinsics.checkNotNull(data);
        walletHomeCryptoPresenter.tokens = (List) data;
        WalletHomeCryptoPresenter walletHomeCryptoPresenter2 = this.this$0;
        tokenType = walletHomeCryptoPresenter2.selectedTokenType;
        list = this.this$0.tokens;
        configureUiItems = walletHomeCryptoPresenter2.configureUiItems(tokenType, list);
        return Result.Companion.success(configureUiItems);
    }
}
