package com.iMe.p031ui.wallet.home.old;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAttachAlertPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertPresenter$getWalletBalance$1 */
/* loaded from: classes.dex */
public final class WalletAttachAlertPresenter$getWalletBalance$1 extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, Unit> {
    final /* synthetic */ WalletAttachAlertPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAttachAlertPresenter$getWalletBalance$1(WalletAttachAlertPresenter walletAttachAlertPresenter) {
        super(1);
        this.this$0 = walletAttachAlertPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenBalance>> result) {
        invoke2((Result<? extends List<TokenBalance>>) result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends List<TokenBalance>> result) {
        ResourceManager resourceManager;
        List<TokenBalance> configureTokens;
        if (result instanceof Result.Success) {
            configureTokens = this.this$0.configureTokens((List) ((Result.Success) result).getData());
            ((WalletAttachAlertView) this.this$0.getViewState()).showBalances(configureTokens);
            if (!configureTokens.isEmpty()) {
                this.this$0.selectBalance((TokenBalance) CollectionsKt.first((List<? extends Object>) configureTokens));
            }
        } else if (result instanceof Result.Error) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            resourceManager = this.this$0.resourceManager;
            ((WalletAttachAlertView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
