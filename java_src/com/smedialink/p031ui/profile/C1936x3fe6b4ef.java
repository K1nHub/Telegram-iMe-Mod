package com.smedialink.p031ui.profile;

import com.smedialink.model.common.SocialType;
import com.smedialink.storage.data.network.interceptor.MetadataInterceptor;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.helper.SocialAuthHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.profile.ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1936x3fe6b4ef extends Lambda implements Function1<Result<? extends SessionTokens>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1936x3fe6b4ef(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SessionTokens> result) {
        m1239invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1239invoke(Result<? extends SessionTokens> it) {
        ResourceManager resourceManager;
        long j;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SessionTokens> result = it;
        if (result instanceof Result.Success) {
            SocialAuthHelper socialAuthHelper = SocialAuthHelper.INSTANCE;
            j = this.this$0.profileId;
            ((ProfileView) this.this$0.getViewState()).openTwitterAuthScreen(socialAuthHelper.getSocialAuthUrl(j, SocialType.TWITTER), MetadataInterceptor.Companion.formatAuthToken(((SessionTokens) ((Result.Success) result).getData()).getToken()));
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((ProfileView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
