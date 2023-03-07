package com.smedialink.bots.domain;

import com.smedialink.bots.usecase.AiBotsManager;
/* compiled from: Replier.kt */
/* loaded from: classes3.dex */
public interface Replier {
    void getResponsesFromBots(String str, long j, AiBotsManager.SmartReplierCallback smartReplierCallback);
}
