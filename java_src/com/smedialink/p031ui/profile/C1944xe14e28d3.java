package com.smedialink.p031ui.profile;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.profile.ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1944xe14e28d3 extends Lambda implements Function1<Result<? extends AccountLevelInformation>, Unit> {
    final /* synthetic */ ProfilePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1944xe14e28d3(ProfilePresenter profilePresenter) {
        super(1);
        this.this$0 = profilePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountLevelInformation> result) {
        m1252invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1252invoke(Result<? extends AccountLevelInformation> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends AccountLevelInformation> result = it;
        if (result instanceof Result.Success) {
            ((ProfileView) this.this$0.getViewState()).showUserAccountLevel((AccountLevelInformation) ((Result.Success) result).getData());
        }
    }
}
