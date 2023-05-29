package com.iMe.p031ui.wallet.home.old;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAttachAlertPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertPresenter$getWalletTransactions$2 */
/* loaded from: classes4.dex */
public final class WalletAttachAlertPresenter$getWalletTransactions$2 extends Lambda implements Function1<Result<? extends List<? extends Transaction>>, Unit> {
    final /* synthetic */ TokenCode $selectedTokenCode;
    final /* synthetic */ WalletAttachAlertPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAttachAlertPresenter$getWalletTransactions$2(WalletAttachAlertPresenter walletAttachAlertPresenter, TokenCode tokenCode) {
        super(1);
        this.this$0 = walletAttachAlertPresenter;
        this.$selectedTokenCode = tokenCode;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Transaction>> result) {
        invoke2(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends List<? extends Transaction>> result) {
        ResourceManager resourceManager;
        HashMap hashMap;
        List mutableList;
        List<BaseNode> mapTransactionsToGroups;
        if (result instanceof Result.Success) {
            hashMap = this.this$0.cachedTransactions;
            TokenCode tokenCode = this.$selectedTokenCode;
            Result.Success success = (Result.Success) result;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) success.getData()));
            hashMap.put(tokenCode, mutableList);
            mapTransactionsToGroups = this.this$0.mapTransactionsToGroups((List) success.getData());
            if (mapTransactionsToGroups.isEmpty()) {
                ((WalletAttachAlertView) this.this$0.getViewState()).onEmptyState();
            } else {
                ((WalletAttachAlertView) this.this$0.getViewState()).showTransactions(mapTransactionsToGroups);
            }
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                ((WalletAttachAlertView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletAttachAlertView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
            Intrinsics.checkNotNullExpressionValue(result, "result");
            resourceManager = this.this$0.resourceManager;
            ((WalletAttachAlertView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        } else if (result instanceof Result.Loading) {
            ((WalletAttachAlertView) this.this$0.getViewState()).onLoadingState();
        }
    }
}
