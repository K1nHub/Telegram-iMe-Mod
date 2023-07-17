package com.iMe.p031ui.wallet.swap.token;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
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
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$2 */
/* loaded from: classes4.dex */
public final class C2446xcdcae28 extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>>> {
    final /* synthetic */ boolean $isIncomingDirection$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2446xcdcae28(boolean z) {
        super(1);
        this.$isIncomingDirection$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>> invoke(Result<? extends List<? extends TokenBalance>> result) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        List<? extends TokenBalance> data = result.getData();
        if (data == null) {
            data = CollectionsKt__CollectionsKt.emptyList();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(data, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenBalance tokenBalance : data) {
            arrayList.add(new SelectableTokenItem(false, tokenBalance.getToken(), this.$isIncomingDirection$inlined ? null : SelectableMappingKt.mapToSelectableBalance(tokenBalance)));
        }
        Observable just = Observable.just(Result.Companion.success(arrayList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
