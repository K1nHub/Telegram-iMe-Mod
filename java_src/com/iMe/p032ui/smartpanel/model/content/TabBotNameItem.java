package com.iMe.p032ui.smartpanel.model.content;

import com.iMe.p032ui.smartpanel.model.SmartPanelTabContent;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TabBotNameItem.kt */
/* renamed from: com.iMe.ui.smartpanel.model.content.TabBotNameItem */
/* loaded from: classes3.dex */
public final class TabBotNameItem implements SmartPanelTabContent {
    private final String botName;
    private final SmartPanelTabContent.Type contentType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TabBotNameItem) {
            TabBotNameItem tabBotNameItem = (TabBotNameItem) obj;
            return getContentType() == tabBotNameItem.getContentType() && Intrinsics.areEqual(this.botName, tabBotNameItem.botName);
        }
        return false;
    }

    public int hashCode() {
        return (getContentType().hashCode() * 31) + this.botName.hashCode();
    }

    public String toString() {
        return "TabBotNameItem(contentType=" + getContentType() + ", botName=" + this.botName + ')';
    }

    public TabBotNameItem(SmartPanelTabContent.Type contentType, String botName) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(botName, "botName");
        this.contentType = contentType;
        this.botName = botName;
    }

    @Override // com.iMe.p032ui.smartpanel.model.SmartPanelTabContent
    public SmartPanelTabContent.Type getContentType() {
        return this.contentType;
    }

    public final String getBotName() {
        return this.botName;
    }
}
