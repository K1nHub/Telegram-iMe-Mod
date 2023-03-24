package com.smedialink.p031ui.wallet.transaction;

import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2324x713e530 extends Lambda implements Function1<Result<? extends T>, Unit> {
    final /* synthetic */ boolean $forceUpdate$inlined;
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ Function1 $onSuccess$inlined;
    final /* synthetic */ WalletTransactionsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2324x713e530(Function1 function1, boolean z, WalletTransactionsPresenter walletTransactionsPresenter, boolean z2) {
        super(1);
        this.$onSuccess$inlined = function1;
        this.$isLoadMore$inlined = z;
        this.this$0 = walletTransactionsPresenter;
        this.$forceUpdate$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke2(obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends T> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends T> result = it;
        if (result instanceof Result.Success) {
            this.$onSuccess$inlined.invoke(((Result.Success) result).getData());
        } else if (result instanceof Result.Loading) {
            if (this.$isLoadMore$inlined) {
                return;
            }
            this.this$0.onLoading(this.$forceUpdate$inlined);
        } else if (result instanceof Result.Error) {
            this.this$0.onError(((Result.Error) result).getError(), this.$isLoadMore$inlined);
        }
    }
}
