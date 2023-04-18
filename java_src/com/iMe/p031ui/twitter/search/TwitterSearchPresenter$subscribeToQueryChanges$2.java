package com.iMe.p031ui.twitter.search;

import com.iMe.model.state.GlobalState;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterSearchPresenter.kt */
/* renamed from: com.iMe.ui.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$2 */
/* loaded from: classes3.dex */
public final class TwitterSearchPresenter$subscribeToQueryChanges$2 extends Lambda implements Function1<String, Boolean> {
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchPresenter$subscribeToQueryChanges$2(TwitterSearchPresenter twitterSearchPresenter) {
        super(1);
        this.this$0 = twitterSearchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(String rawQuery) {
        Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
        boolean z = true;
        if (rawQuery.length() == 0) {
            this.this$0.renderGlobalState(GlobalState.Empty.TwitterSearch.INSTANCE);
        } else {
            if (rawQuery.length() < 4) {
                this.this$0.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
            }
            return Boolean.valueOf(z);
        }
        z = false;
        return Boolean.valueOf(z);
    }
}
