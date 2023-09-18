package com.iMe.p031ui.smartpanel.model.content;

import com.iMe.p031ui.smartpanel.model.SmartPanelTabContent;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$BotInlineResult;
/* compiled from: TabBotMediaAnswerItem.kt */
/* renamed from: com.iMe.ui.smartpanel.model.content.TabBotMediaAnswerItem */
/* loaded from: classes6.dex */
public final class TabBotMediaAnswerItem implements SmartPanelTabContent {
    public static final Companion Companion = new Companion(null);
    private final SmartPanelTabContent.Type contentType;
    private final TLRPC$BotInlineResult media;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TabBotMediaAnswerItem) {
            TabBotMediaAnswerItem tabBotMediaAnswerItem = (TabBotMediaAnswerItem) obj;
            return getContentType() == tabBotMediaAnswerItem.getContentType() && Intrinsics.areEqual(this.media, tabBotMediaAnswerItem.media);
        }
        return false;
    }

    public int hashCode() {
        return (getContentType().hashCode() * 31) + this.media.hashCode();
    }

    public String toString() {
        return "TabBotMediaAnswerItem(contentType=" + getContentType() + ", media=" + this.media + ')';
    }

    public TabBotMediaAnswerItem(SmartPanelTabContent.Type contentType, TLRPC$BotInlineResult media) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(media, "media");
        this.contentType = contentType;
        this.media = media;
    }

    @Override // com.iMe.p031ui.smartpanel.model.SmartPanelTabContent
    public SmartPanelTabContent.Type getContentType() {
        return this.contentType;
    }

    public final TLRPC$BotInlineResult getMedia() {
        return this.media;
    }

    /* compiled from: TabBotMediaAnswerItem.kt */
    /* renamed from: com.iMe.ui.smartpanel.model.content.TabBotMediaAnswerItem$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<SmartPanelTabContent> map(List<? extends TLRPC$BotInlineResult> from) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(from, "from");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(from, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TLRPC$BotInlineResult tLRPC$BotInlineResult : from) {
                arrayList.add(new TabBotMediaAnswerItem(SmartPanelTabContent.Type.BOT_MEDIA_ANSWER, tLRPC$BotInlineResult));
            }
            return arrayList;
        }
    }
}
