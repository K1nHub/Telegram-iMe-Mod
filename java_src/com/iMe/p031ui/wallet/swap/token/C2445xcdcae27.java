package com.iMe.p031ui.wallet.swap.token;

import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2445xcdcae27 extends Lambda implements Function1<Result<? extends CursoredData<TokenDetailed>>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>> {
    final /* synthetic */ boolean $isIncomingDirection$inlined;
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2445xcdcae27(WalletSelectTokenPresenter walletSelectTokenPresenter, boolean z) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
        this.$isIncomingDirection$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends TokenBalance>>> invoke(Result<? extends CursoredData<TokenDetailed>> result) {
        WalletInteractor walletInteractor;
        int collectionSizeOrDefault;
        String str;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        WalletSelectTokenPresenter walletSelectTokenPresenter = this.this$0;
        CursoredData<TokenDetailed> data = result.getData();
        String cursor = data != null ? data.getCursor() : null;
        if (cursor == null) {
            cursor = "";
        }
        walletSelectTokenPresenter.cursor = cursor;
        CursoredData<TokenDetailed> data2 = result.getData();
        List<TokenDetailed> data3 = data2 != null ? data2.getData() : null;
        if (data3 == null) {
            data3 = CollectionsKt__CollectionsKt.emptyList();
        }
        if (this.$isIncomingDirection$inlined) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(data3, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
            for (TokenDetailed tokenDetailed : data3) {
                arrayList.add(TokenBalance.Companion.createEmptyBalanceFor(tokenDetailed));
            }
            Observable just = Observable.just(Result.Companion.success(arrayList));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        walletInteractor = this.this$0.walletInteractor;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(data3, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (TokenDetailed tokenDetailed2 : data3) {
            arrayList2.add(TokenExtKt.toIndexedToken(tokenDetailed2));
        }
        str = this.this$0.networkId;
        return walletInteractor.getTokensBalances(arrayList2, true, str);
    }
}
