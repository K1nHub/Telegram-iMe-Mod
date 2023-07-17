package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1 */
/* loaded from: classes4.dex */
public final class CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends CursoredData<TokenDetailed>>, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>> {
    final /* synthetic */ CustomTokensPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1(CustomTokensPresenter customTokensPresenter) {
        super(1);
        this.this$0 = customTokensPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends BaseNode>>> invoke(Result<? extends CursoredData<TokenDetailed>> result) {
        List list;
        List list2;
        String str;
        List<TokenItem> searchRenderItems;
        List list3;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        list = this.this$0.items;
        list.clear();
        list2 = this.this$0.tokens;
        list2.clear();
        CursoredData<TokenDetailed> data = result.getData();
        List<TokenDetailed> data2 = data != null ? data.getData() : null;
        if (data2 == null) {
            data2 = CollectionsKt__CollectionsKt.emptyList();
        }
        list2.addAll(data2);
        str = this.this$0.query;
        if (str.length() == 0) {
            list3 = this.this$0.tokens;
            searchRenderItems = TokenUiMappingKt.mapToUI(list3);
        } else {
            searchRenderItems = this.this$0.getSearchRenderItems();
        }
        Observable just = Observable.just(Result.Companion.success(searchRenderItems));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
