package com.iMe.feature.profile;

import com.iMe.feature.socialMedias.SocialAuthDomain;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.profile.ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1460xd1f41af5 extends Lambda implements Function1<Result<? extends SocialAuthDomain>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1460xd1f41af5(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SocialAuthDomain> result) {
        m1172invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1172invoke(Result<? extends SocialAuthDomain> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SocialAuthDomain> result = it;
        if (result instanceof Result.Success) {
            ((ProfileView) this.this$0.getViewState()).openSocialAuthScreen((SocialAuthDomain) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        } else {
            Timber.m5i("startAuthFlow " + result + " skipped", new Object[0]);
        }
    }
}
