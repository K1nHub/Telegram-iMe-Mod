package com.smedialink.bots.usecase;

import android.util.Log;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$sendBotRatingEvent$1 extends Lambda implements Function1<Integer, Unit> {
    final /* synthetic */ String $botId;
    final /* synthetic */ int $rating;
    final /* synthetic */ long $userId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$sendBotRatingEvent$1(String str, int i, long j) {
        super(1);
        this.$botId = str;
        this.$rating = i;
        this.$userId = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke2(num);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Integer num) {
        Log.d("Remote event", "Bot " + this.$botId + " rating " + this.$rating + " event, user id " + this.$userId);
    }
}
