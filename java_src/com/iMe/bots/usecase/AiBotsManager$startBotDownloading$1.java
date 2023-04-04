package com.iMe.bots.usecase;

import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$startBotDownloading$1 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ String $botId;
    final /* synthetic */ long $userId;
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$startBotDownloading$1(AiBotsManager aiBotsManager, String str, long j) {
        super(1);
        this.this$0 = aiBotsManager;
        this.$botId = str;
        this.$userId = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Disposable disposable) {
        this.this$0.sendBotInstalledEvent(this.$botId, this.$userId);
    }
}
