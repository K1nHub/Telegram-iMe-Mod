package com.iMe.bots.usecase;

import com.iMe.bots.data.model.database.BotsDbModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$downloadPurchase$1 extends Lambda implements Function1<BotsDbModel, Unit> {
    final /* synthetic */ long $userId;
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$downloadPurchase$1(AiBotsManager aiBotsManager, long j) {
        super(1);
        this.this$0 = aiBotsManager;
        this.$userId = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BotsDbModel botsDbModel) {
        invoke2(botsDbModel);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(BotsDbModel botsDbModel) {
        this.this$0.startBotDownloading(botsDbModel.getId(), botsDbModel.getTitle(), botsDbModel.getFile(), this.$userId);
    }
}
