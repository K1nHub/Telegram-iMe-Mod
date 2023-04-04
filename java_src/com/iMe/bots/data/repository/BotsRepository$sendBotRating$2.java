package com.iMe.bots.data.repository;

import com.iMe.bots.data.database.BotsDao;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotsRepository.kt */
/* loaded from: classes3.dex */
public final class BotsRepository$sendBotRating$2 extends Lambda implements Function1<Integer, Unit> {
    final /* synthetic */ String $botId;
    final /* synthetic */ BotsRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotsRepository$sendBotRating$2(BotsRepository botsRepository, String str) {
        super(1);
        this.this$0 = botsRepository;
        this.$botId = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke2(num);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Integer it) {
        BotsDao botsDao;
        botsDao = this.this$0.botsDao;
        String str = this.$botId;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        botsDao.saveOwnRating(str, it.intValue());
    }
}
