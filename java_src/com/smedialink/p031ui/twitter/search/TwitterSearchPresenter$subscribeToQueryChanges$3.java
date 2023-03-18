package com.smedialink.p031ui.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterSearchPresenter.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$3 */
/* loaded from: classes3.dex */
public final class TwitterSearchPresenter$subscribeToQueryChanges$3 extends Lambda implements Function1<String, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>> {
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchPresenter$subscribeToQueryChanges$3(TwitterSearchPresenter twitterSearchPresenter) {
        super(1);
        this.this$0 = twitterSearchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<BaseNode>>> invoke(String newQuery) {
        List list;
        Observable searchObservable;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        this.this$0.query = newQuery;
        this.this$0.page = 1;
        list = this.this$0.items;
        list.clear();
        searchObservable = this.this$0.getSearchObservable();
        return searchObservable;
    }
}
