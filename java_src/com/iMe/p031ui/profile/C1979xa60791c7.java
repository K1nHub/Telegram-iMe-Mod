package com.iMe.p031ui.profile;

import com.iMe.model.twitter.TwitterAccountStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.profile.ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1979xa60791c7 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ TwitterProfileInfo $profileInfo$inlined;
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1979xa60791c7(ProfilePresenter profilePresenter, TwitterProfileInfo twitterProfileInfo) {
        super(1);
        this.this$0 = profilePresenter;
        this.$profileInfo$inlined = twitterProfileInfo;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1314invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1314invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            this.this$0.updateTwitterStatusAndRender(new TwitterAccountStatus.Active(this.$profileInfo$inlined.getTwitterUserName()));
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
