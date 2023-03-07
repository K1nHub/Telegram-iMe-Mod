package com.smedialink.storage.common;

import com.smedialink.storage.data.manager.common.EnvironmentManager;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Reaction {
    static {
        new AppConfiguration$Reaction();
    }

    private AppConfiguration$Reaction() {
    }

    public static final String getBotName() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getReactionBotUsername();
    }

    public static final long getBotId() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getReactionBotId();
    }
}
