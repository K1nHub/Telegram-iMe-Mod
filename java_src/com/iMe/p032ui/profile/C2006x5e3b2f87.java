package com.iMe.p032ui.profile;

import com.iMe.model.twitter.TwitterAccountStatus;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.profile.ProfilePresenter$logoutTwitter$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2006x5e3b2f87 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2006x5e3b2f87(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1335invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1335invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        TwitterPreferenceHelper twitterPreferenceHelper;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            twitterPreferenceHelper = this.this$0.twitterPreferenceHelper;
            twitterPreferenceHelper.clear();
            this.this$0.updateTwitterStatusAndRender(TwitterAccountStatus.None.INSTANCE);
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
