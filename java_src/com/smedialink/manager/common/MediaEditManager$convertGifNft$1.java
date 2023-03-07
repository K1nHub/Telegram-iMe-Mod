package com.smedialink.manager.common;

import java.util.concurrent.Future;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
final class MediaEditManager$convertGifNft$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Future<Void> $gifCompressing;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaEditManager$convertGifNft$1(Future<Void> future) {
        super(0);
        this.$gifCompressing = future;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$gifCompressing.cancel(true);
    }
}
