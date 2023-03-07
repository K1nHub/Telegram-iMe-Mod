package com.smedialink.common;

import com.smedialink.storage.data.repository.topics.Topic;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TelegramThemeKeys.kt */
/* loaded from: classes3.dex */
public final class TelegramThemeKeys$Dialog {
    public static final TelegramThemeKeys$Dialog INSTANCE = new TelegramThemeKeys$Dialog();

    private TelegramThemeKeys$Dialog() {
    }

    public static final String buildTopicActiveBackgroundKey(Topic topic) {
        Intrinsics.checkNotNullParameter(topic, "topic");
        StringBuilder sb = new StringBuilder();
        sb.append("iMe_");
        sb.append("dialogs_");
        sb.append("topic_");
        String lowerCase = topic.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        sb.append(lowerCase);
        sb.append("_activeBackground");
        return sb.toString();
    }
}
