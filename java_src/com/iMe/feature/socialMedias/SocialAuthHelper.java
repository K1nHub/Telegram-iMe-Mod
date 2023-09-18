package com.iMe.feature.socialMedias;

import com.iMe.storage.common.AppConfiguration$Api;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialAuthHelper.kt */
/* loaded from: classes4.dex */
public final class SocialAuthHelper {
    public static final SocialAuthHelper INSTANCE = new SocialAuthHelper();

    private SocialAuthHelper() {
    }

    public final String getSocialAuthUrl(long j, SocialType socialType) {
        Intrinsics.checkNotNullParameter(socialType, "socialType");
        StringBuilder sb = new StringBuilder();
        sb.append(AppConfiguration$Api.INSTANCE.getServerUrl());
        sb.append("social/");
        String lowerCase = socialType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        sb.append(lowerCase);
        sb.append("/startAuth?telegramChatId=");
        sb.append(j);
        return sb.toString();
    }
}
