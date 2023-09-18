package com.iMe.feature.socialMedias.auth;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.iMe.feature.socialMedias.SocialRepository;
import com.iMe.model.twitter.SocialAuthResult;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AuthUseCase.kt */
/* loaded from: classes4.dex */
public final class AuthUseCase {
    private final SocialRepository socialRepository;

    public AuthUseCase(SocialRepository socialRepository) {
        Intrinsics.checkNotNullParameter(socialRepository, "socialRepository");
        this.socialRepository = socialRepository;
    }

    public final Object processAuthResult(String str, Continuation<? super SocialAuthResult> continuation) {
        return this.socialRepository.getAuthResult(str, continuation);
    }

    public final Map<String, String> makeAuthHeader(String authToken) {
        Map<String, String> mapOf;
        Intrinsics.checkNotNullParameter(authToken, "authToken");
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m103to(RtspHeaders.AUTHORIZATION, authToken));
        return mapOf;
    }
}
