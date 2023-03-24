package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.token.TokenType;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$loadAccountInformation$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C2210x3703ab47 extends Lambda implements Function1<Result<? extends String>, Result<? extends List<BaseNode>>> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2210x3703ab47(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends List<BaseNode>> invoke(Result<? extends String> result) {
        TokenType tokenType;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends List<BaseNode>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        this.this$0.setLinkedCryptoWalletAddress((String) result.getData());
        this.this$0.checkWalletState();
        WalletHomeCryptoPresenter walletHomeCryptoPresenter = this.this$0;
        tokenType = walletHomeCryptoPresenter.selectedTokenType;
        return Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(walletHomeCryptoPresenter, tokenType, null, 2, null));
    }
}
