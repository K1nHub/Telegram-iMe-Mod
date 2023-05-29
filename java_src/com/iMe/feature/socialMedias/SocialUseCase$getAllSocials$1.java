package com.iMe.feature.socialMedias;

import com.iMe.feature.profile.ProfileData;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SocialUseCase.kt */
/* loaded from: classes3.dex */
public final class SocialUseCase$getAllSocials$1 extends Lambda implements Function1<Result<? extends SocialDomain>, ObservableSource<? extends Result<? extends SocialDomain>>> {
    final /* synthetic */ ProfileData $profileData;
    final /* synthetic */ SocialUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialUseCase$getAllSocials$1(SocialUseCase socialUseCase, ProfileData profileData) {
        super(1);
        this.this$0 = socialUseCase;
        this.$profileData = profileData;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<SocialDomain>> invoke2(Result<SocialDomain> it) {
        Observable updateSocialAccess;
        Intrinsics.checkNotNullParameter(it, "it");
        updateSocialAccess = this.this$0.updateSocialAccess(this.$profileData, it);
        return updateSocialAccess;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends SocialDomain>> invoke(Result<? extends SocialDomain> result) {
        return invoke2((Result<SocialDomain>) result);
    }
}
