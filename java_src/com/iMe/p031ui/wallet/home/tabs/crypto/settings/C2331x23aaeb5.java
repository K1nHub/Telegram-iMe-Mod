package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.mapper.wallet.FoundTokenUiMappingKt;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.token.FoundTokenWithFamily;
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
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$getSearchObservable$$inlined$flatMapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2331x23aaeb5 extends Lambda implements Function1<Result<? extends CursoredData<FoundTokenWithFamily>>, ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>>> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2331x23aaeb5(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>> invoke(Result<? extends CursoredData<FoundTokenWithFamily>> result) {
        List list;
        List<FoundTokenWithFamily> list2;
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
        WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter = this.this$0;
        CursoredData<FoundTokenWithFamily> data = result.getData();
        walletHomeCryptoTokensSettingsPresenter.cursor = data != null ? data.getCursor() : null;
        list = this.this$0.searchResults;
        CursoredData<FoundTokenWithFamily> data2 = result.getData();
        List<FoundTokenWithFamily> data3 = data2 != null ? data2.getData() : null;
        if (data3 == null) {
            data3 = CollectionsKt__CollectionsKt.emptyList();
        }
        list.addAll(data3);
        list2 = this.this$0.searchResults;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (FoundTokenWithFamily foundTokenWithFamily : list2) {
            arrayList.add(FoundTokenUiMappingKt.mapToUi(foundTokenWithFamily.getFoundToken()));
        }
        Observable just = Observable.just(Result.Companion.success(arrayList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
