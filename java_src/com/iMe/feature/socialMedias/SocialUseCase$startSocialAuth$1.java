package com.iMe.feature.socialMedias;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SocialUseCase.kt */
/* loaded from: classes3.dex */
public final class SocialUseCase$startSocialAuth$1 extends Lambda implements Function1<Result<? extends SessionTokens>, ObservableSource<? extends Result<? extends SocialAuthDomain>>> {
    final /* synthetic */ long $profileId;
    final /* synthetic */ SocialType $socialType;
    final /* synthetic */ SocialUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialUseCase$startSocialAuth$1(SocialUseCase socialUseCase, long j, SocialType socialType) {
        super(1);
        this.this$0 = socialUseCase;
        this.$profileId = j;
        this.$socialType = socialType;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<SocialAuthDomain>> invoke2(Result<SessionTokens> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.this$0.getSocialAuthData(it.getData(), this.$profileId, this.$socialType);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends SocialAuthDomain>> invoke(Result<? extends SessionTokens> result) {
        return invoke2((Result<SessionTokens>) result);
    }
}
