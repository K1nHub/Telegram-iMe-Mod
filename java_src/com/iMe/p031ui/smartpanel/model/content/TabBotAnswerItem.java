package com.iMe.p031ui.smartpanel.model.content;

import com.iMe.p031ui.smartpanel.model.SmartPanelTabContent;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TabBotAnswerItem.kt */
/* renamed from: com.iMe.ui.smartpanel.model.content.TabBotAnswerItem */
/* loaded from: classes4.dex */
public final class TabBotAnswerItem implements SmartPanelTabContent {
    private final String botId;
    private final SmartPanelTabContent.Type contentType;
    private final String link;
    private final String phrase;
    private final String tag;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TabBotAnswerItem) {
            TabBotAnswerItem tabBotAnswerItem = (TabBotAnswerItem) obj;
            return getContentType() == tabBotAnswerItem.getContentType() && Intrinsics.areEqual(this.botId, tabBotAnswerItem.botId) && Intrinsics.areEqual(this.phrase, tabBotAnswerItem.phrase) && Intrinsics.areEqual(this.tag, tabBotAnswerItem.tag) && Intrinsics.areEqual(this.link, tabBotAnswerItem.link);
        }
        return false;
    }

    public int hashCode() {
        return (((((((getContentType().hashCode() * 31) + this.botId.hashCode()) * 31) + this.phrase.hashCode()) * 31) + this.tag.hashCode()) * 31) + this.link.hashCode();
    }

    public String toString() {
        return "TabBotAnswerItem(contentType=" + getContentType() + ", botId=" + this.botId + ", phrase=" + this.phrase + ", tag=" + this.tag + ", link=" + this.link + ')';
    }

    public TabBotAnswerItem(SmartPanelTabContent.Type contentType, String botId, String phrase, String tag, String link) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(phrase, "phrase");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(link, "link");
        this.contentType = contentType;
        this.botId = botId;
        this.phrase = phrase;
        this.tag = tag;
        this.link = link;
    }

    @Override // com.iMe.p031ui.smartpanel.model.SmartPanelTabContent
    public SmartPanelTabContent.Type getContentType() {
        return this.contentType;
    }

    public final String getBotId() {
        return this.botId;
    }

    public final String getPhrase() {
        return this.phrase;
    }

    public final String getTag() {
        return this.tag;
    }
}
