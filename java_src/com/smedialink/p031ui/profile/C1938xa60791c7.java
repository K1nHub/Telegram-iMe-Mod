package com.smedialink.p031ui.profile;

import com.smedialink.model.twitter.TwitterAccountStatus;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.TwitterProfileInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.profile.ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1938xa60791c7 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ TwitterProfileInfo $profileInfo$inlined;
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1938xa60791c7(ProfilePresenter profilePresenter, TwitterProfileInfo twitterProfileInfo) {
        super(1);
        this.this$0 = profilePresenter;
        this.$profileInfo$inlined = twitterProfileInfo;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1249invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1249invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            this.this$0.updateTwitterStatusAndRender(new TwitterAccountStatus.Active(this.$profileInfo$inlined.getTwitterUserName()));
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
