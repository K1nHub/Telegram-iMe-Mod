package com.iMe.bots.usecase;

import com.iMe.bots.domain.AigramBot;
import com.iMe.bots.usecase.AiBotsManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$rebuildActiveBotsList$1 extends Lambda implements Function1<List<? extends AigramBot>, Unit> {
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$rebuildActiveBotsList$1(AiBotsManager aiBotsManager) {
        super(1);
        this.this$0 = aiBotsManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends AigramBot> list) {
        invoke2(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(List<? extends AigramBot> bots) {
        Intrinsics.checkNotNullParameter(bots, "bots");
        this.this$0.getActiveBots().clear();
        this.this$0.getActiveBots().addAll(bots);
        AiBotsManager.BotsListChangedCallback botDisableCallback = this.this$0.getBotDisableCallback();
        if (botDisableCallback != null) {
            botDisableCallback.onSuccess();
        }
    }
}
