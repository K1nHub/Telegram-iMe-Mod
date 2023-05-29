package com.iMe.feature.socialMedias;

import com.iMe.feature.profile.ProfileData;
import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SocialRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class SocialRepositoryImpl$getAllSocial$1 extends Lambda implements Function1<Result<? extends SocialDomain>, Unit> {
    final /* synthetic */ ProfileData $profileData;
    final /* synthetic */ SocialRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialRepositoryImpl$getAllSocial$1(SocialRepositoryImpl socialRepositoryImpl, ProfileData profileData) {
        super(1);
        this.this$0 = socialRepositoryImpl;
        this.$profileData = profileData;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SocialDomain> result) {
        invoke2((Result<SocialDomain>) result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<SocialDomain> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.this$0.saveInDb(result, this.$profileData.getProfileId());
    }
}
