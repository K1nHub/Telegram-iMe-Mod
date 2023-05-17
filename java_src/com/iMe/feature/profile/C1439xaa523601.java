package com.iMe.feature.profile;

import com.iMe.model.twitter.SocialAuthResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.profile.ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1439xaa523601 extends Lambda implements Function1<SocialAuthResult, Unit> {
    final /* synthetic */ ProfilePresenter $receiver$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1439xaa523601(ProfilePresenter profilePresenter) {
        super(1);
        this.$receiver$inlined = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(SocialAuthResult socialAuthResult) {
        m1167invoke(socialAuthResult);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1167invoke(SocialAuthResult it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.$receiver$inlined.onSocialAuthResult(it);
    }
}
