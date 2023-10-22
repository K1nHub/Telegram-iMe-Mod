package com.iMe.feature.socialMedias;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialUseCase.kt */
/* loaded from: classes3.dex */
/* synthetic */ class SocialUseCase$getSocialAuthData$1 extends FunctionReferenceImpl implements Function1<SocialAuthDomain, Result<? extends SocialAuthDomain>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialUseCase$getSocialAuthData$1(Object obj) {
        super(1, obj, Result.Companion.class, "success", "success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<SocialAuthDomain> invoke(SocialAuthDomain p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((Result.Companion) this.receiver).success(p0);
    }
}
