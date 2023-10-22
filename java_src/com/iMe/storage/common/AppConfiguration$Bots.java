package com.iMe.storage.common;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Bots {
    static {
        new AppConfiguration$Bots();
    }

    private AppConfiguration$Bots() {
    }

    public static final long getAuthBotId() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getAuthBotId();
    }

    public static final String getAuthBotUsername() {
        String authBotUsername = EnvironmentManager.INSTANCE.getEnvironmentInformation().getAuthBotUsername();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = authBotUsername.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public static final String getAuthBotUsernameWithAT() {
        return '@' + EnvironmentManager.INSTANCE.getEnvironmentInformation().getAuthBotUsername();
    }

    public static final long getNewsBotId() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getNewsBotId();
    }

    public static final String getNewsBotUsername() {
        String newsBotUsername = EnvironmentManager.INSTANCE.getEnvironmentInformation().getNewsBotUsername();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = newsBotUsername.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }
}
