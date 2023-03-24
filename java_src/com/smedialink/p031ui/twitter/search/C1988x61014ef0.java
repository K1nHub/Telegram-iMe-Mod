package com.smedialink.p031ui.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.TwitterUserInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchPresenter$getSearchObservable$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1988x61014ef0 extends Lambda implements Function1<Result<? extends List<? extends TwitterUserInfo>>, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>> {
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1988x61014ef0(TwitterSearchPresenter twitterSearchPresenter) {
        super(1);
        this.this$0 = twitterSearchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends BaseNode>>> invoke(Result<? extends List<? extends TwitterUserInfo>> result) {
        Observable flatMapSearchResult;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        flatMapSearchResult = this.this$0.flatMapSearchResult(result);
        return flatMapSearchResult;
    }
}
