package com.iMe.storage.common;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Twitter {
    public static final AppConfiguration$Twitter INSTANCE = new AppConfiguration$Twitter();

    private AppConfiguration$Twitter() {
    }

    public final String getUserUrl(String nickname) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        return "https://twitter.com/" + nickname;
    }

    public final String getTweetUrl(String nickname, long j) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        return getUserUrl(nickname) + "/status/" + j;
    }
}
