package com.iMe.storage.common;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes4.dex */
public final class AppConfiguration$Wallet {
    static {
        new AppConfiguration$Wallet();
    }

    private AppConfiguration$Wallet() {
    }

    public static final long getWalletBotId() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getWalletActivationBotId();
    }

    public static final String getWalletBotUsernameLowerCase() {
        String walletActivationBotUsername = EnvironmentManager.INSTANCE.getEnvironmentInformation().getWalletActivationBotUsername();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = walletActivationBotUsername.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public static final String getWalletBotUsernameWithAT() {
        return '@' + EnvironmentManager.INSTANCE.getEnvironmentInformation().getWalletActivationBotUsername();
    }
}
