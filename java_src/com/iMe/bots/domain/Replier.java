package com.iMe.bots.domain;

import com.iMe.bots.usecase.AiBotsManager;
/* compiled from: Replier.kt */
/* loaded from: classes3.dex */
public interface Replier {
    void getResponsesFromBots(String str, long j, AiBotsManager.SmartReplierCallback smartReplierCallback);
}
