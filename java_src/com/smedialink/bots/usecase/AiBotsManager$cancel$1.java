package com.smedialink.bots.usecase;

import io.reactivex.disposables.CompositeDisposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$cancel$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$cancel$1(AiBotsManager aiBotsManager) {
        super(0);
        this.this$0 = aiBotsManager;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CompositeDisposable compositeDisposable;
        compositeDisposable = this.this$0.disposables;
        compositeDisposable.clear();
    }
}
