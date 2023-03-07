package com.smedialink.p031ui.smartpanel.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SmartBotTab.kt */
/* renamed from: com.smedialink.ui.smartpanel.model.SmartBotTab */
/* loaded from: classes3.dex */
public final class SmartBotTab {
    private final List<SmartPanelTabContent> answers;
    private final String botId;
    private final String botName;
    private final String gif;
    private final int iconRes;
    private final String iconUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public SmartBotTab(int i, String iconUrl, String botId, String botName, String gif, List<? extends SmartPanelTabContent> answers) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(botName, "botName");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(answers, "answers");
        this.iconRes = i;
        this.iconUrl = iconUrl;
        this.botId = botId;
        this.botName = botName;
        this.gif = gif;
        this.answers = answers;
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getBotId() {
        return this.botId;
    }

    public final String getBotName() {
        return this.botName;
    }

    public final String getGif() {
        return this.gif;
    }

    public final List<SmartPanelTabContent> getAnswers() {
        return this.answers;
    }
}
