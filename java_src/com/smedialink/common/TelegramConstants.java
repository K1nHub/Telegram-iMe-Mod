package com.smedialink.common;
/* compiled from: TelegramConstants.kt */
/* loaded from: classes3.dex */
public final class TelegramConstants {
    public static final TelegramConstants INSTANCE = new TelegramConstants();

    private TelegramConstants() {
    }

    public final long prepareChatIdForBotAPI(long j) {
        return Long.parseLong("-100" + j);
    }
}
