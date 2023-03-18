package com.smedialink.p031ui.twitter.search;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1979x2420976b extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1979x2420976b(TwitterSearchPresenter twitterSearchPresenter) {
        super(1);
        this.this$0 = twitterSearchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1276invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1276invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            resourceManager3 = this.this$0.resourceManager;
            ((TwitterSearchView) this.this$0.getViewState()).showToast(resourceManager3.getString(C3286R.string.twitter_search_invite_success));
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.TwitterErrorStatus.TWITTER_USER_DISABLED_DIRECT_MESSAGES) {
                resourceManager2 = this.this$0.resourceManager;
                ((TwitterSearchView) this.this$0.getViewState()).showToast(resourceManager2.getString(C3286R.string.twitter_search_invite_direct_messages_error));
                return;
            }
            ErrorModel error2 = error.getError();
            resourceManager = this.this$0.resourceManager;
            ((TwitterSearchView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
        }
    }
}
