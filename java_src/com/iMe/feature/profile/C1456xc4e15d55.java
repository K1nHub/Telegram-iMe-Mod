package com.iMe.feature.profile;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.profile.ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1456xc4e15d55 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ ProfilePresenter $receiver$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1456xc4e15d55(ProfilePresenter profilePresenter) {
        super(1);
        this.$receiver$inlined = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1170invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1170invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.$receiver$inlined.onSocialLogoutResult(it);
    }
}