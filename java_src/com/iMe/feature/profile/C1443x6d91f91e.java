package com.iMe.feature.profile;

import com.iMe.feature.socialMedias.SocialDomain;
import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.profile.ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1443x6d91f91e extends Lambda implements Function1<Result<? extends SocialDomain>, Unit> {
    final /* synthetic */ ProfilePresenter $receiver$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1443x6d91f91e(ProfilePresenter profilePresenter) {
        super(1);
        this.$receiver$inlined = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SocialDomain> result) {
        m1169invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1169invoke(Result<? extends SocialDomain> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.$receiver$inlined.onLoadSocialResult(it);
    }
}
