package com.iMe.bots.domain;

import com.iMe.bots.data.model.Response;
import com.iMe.bots.domain.model.BotLanguage;
import java.util.List;
import kotlin.coroutines.Continuation;
/* compiled from: AigramBot.kt */
/* loaded from: classes4.dex */
public interface AigramBot {
    BotLanguage getLanguage();

    Object getResponse(List<String> list, Continuation<? super Response> continuation);
}
