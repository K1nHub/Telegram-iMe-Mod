package com.iMe.bots.data.model.bot;

import com.iMe.bots.data.model.Response;
import com.iMe.bots.domain.AigramBot;
import com.iMe.bots.domain.ResourceFactory;
import com.iMe.bots.domain.model.BotLanguage;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HolidaysBot.kt */
/* loaded from: classes4.dex */
public final class HolidaysBot implements AigramBot {
    private final String botId;
    private final Lazy currentDateTag$delegate;
    private final BotLanguage language;
    private final List<Response> responseSource;

    public HolidaysBot(ResourceFactory factory, boolean z) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.botId = "holidays";
        this.language = BotLanguage.RU;
        this.responseSource = factory.getHolidaysResponses(getBotId(), z);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.iMe.bots.data.model.bot.HolidaysBot$currentDateTag$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return new SimpleDateFormat("dd.MM", Locale.getDefault()).format(new Date());
            }
        });
        this.currentDateTag$delegate = lazy;
    }

    public String getBotId() {
        return this.botId;
    }

    @Override // com.iMe.bots.domain.AigramBot
    public BotLanguage getLanguage() {
        return this.language;
    }

    private final String getCurrentDateTag() {
        Object value = this.currentDateTag$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-currentDateTag>(...)");
        return (String) value;
    }

    @Override // com.iMe.bots.domain.AigramBot
    public Object getResponse(List<String> list, Continuation<? super Response> continuation) {
        Object obj;
        Iterator<T> it = this.responseSource.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Response) obj).getTag(), getCurrentDateTag())) {
                break;
            }
        }
        Response response = (Response) obj;
        if (response != null) {
            return new Response(getBotId(), response.getTag(), null, null, response.getAnswers(), 12, null);
        }
        return null;
    }
}
