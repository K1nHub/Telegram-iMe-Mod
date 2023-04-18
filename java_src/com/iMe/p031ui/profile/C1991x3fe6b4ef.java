package com.iMe.p031ui.profile;

import com.iMe.model.common.SocialType;
import com.iMe.storage.data.network.interceptor.MetadataInterceptor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.helper.SocialAuthHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.profile.ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1991x3fe6b4ef extends Lambda implements Function1<Result<? extends SessionTokens>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1991x3fe6b4ef(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SessionTokens> result) {
        m1320invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1320invoke(Result<? extends SessionTokens> it) {
        ResourceManager resourceManager;
        long j;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SessionTokens> result = it;
        if (result instanceof Result.Success) {
            SocialAuthHelper socialAuthHelper = SocialAuthHelper.INSTANCE;
            j = this.this$0.profileId;
            ((ProfileView) this.this$0.getViewState()).openTwitterAuthScreen(socialAuthHelper.getSocialAuthUrl(j, SocialType.TWITTER), MetadataInterceptor.Companion.formatAuthToken(((SessionTokens) ((Result.Success) result).getData()).getToken()));
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
