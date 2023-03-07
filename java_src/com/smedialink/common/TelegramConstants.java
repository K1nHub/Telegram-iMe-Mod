package com.smedialink.common;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TelegramConstants.kt */
/* loaded from: classes3.dex */
public final class TelegramConstants {
    public static final TelegramConstants INSTANCE = new TelegramConstants();

    private TelegramConstants() {
    }

    public final long prepareChatIdForBotAPI(long j) {
        return Long.parseLong(Intrinsics.stringPlus("-100", Long.valueOf(j)));
    }
}
