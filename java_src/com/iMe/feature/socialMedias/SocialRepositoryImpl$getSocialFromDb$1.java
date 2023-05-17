package com.iMe.feature.socialMedias;

import com.iMe.storage.data.locale.p027db.model.social.SocialNetworkDb;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SocialRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class SocialRepositoryImpl$getSocialFromDb$1 extends Lambda implements Function1<List<? extends SocialNetworkDb>, Result<? extends SocialDomain>> {
    public static final SocialRepositoryImpl$getSocialFromDb$1 INSTANCE = new SocialRepositoryImpl$getSocialFromDb$1();

    SocialRepositoryImpl$getSocialFromDb$1() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<SocialDomain> invoke2(List<SocialNetworkDb> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(SocialDataMapperKt.toDomain(it));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends SocialDomain> invoke(List<? extends SocialNetworkDb> list) {
        return invoke2((List<SocialNetworkDb>) list);
    }
}
