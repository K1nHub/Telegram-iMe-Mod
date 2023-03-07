package com.smedialink.bots.domain;

import com.smedialink.bots.data.model.Response;
import com.smedialink.bots.domain.model.BotLanguage;
import java.util.List;
import kotlin.coroutines.Continuation;
/* compiled from: AigramBot.kt */
/* loaded from: classes3.dex */
public interface AigramBot {
    BotLanguage getLanguage();

    Object getResponse(List<String> list, Continuation<? super Response> continuation);
}
