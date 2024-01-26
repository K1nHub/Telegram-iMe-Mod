package io.ktor.utils.p032io;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
/* compiled from: Coroutines.kt */
/* renamed from: io.ktor.utils.io.CoroutinesKt */
/* loaded from: classes4.dex */
public final class CoroutinesKt {
    public static final ReaderJob reader(CoroutineScope coroutineScope, CoroutineContext coroutineContext, ByteChannel channel, Function2<? super ReaderScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(block, "block");
        return launchChannel(coroutineScope, coroutineContext, channel, false, block);
    }

    public static final WriterJob writer(CoroutineScope coroutineScope, CoroutineContext coroutineContext, ByteChannel channel, Function2<? super WriterScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(block, "block");
        return launchChannel(coroutineScope, coroutineContext, channel, false, block);
    }

    private static final <S extends CoroutineScope> ChannelJob launchChannel(CoroutineScope coroutineScope, CoroutineContext coroutineContext, final ByteChannel byteChannel, boolean z, Function2<? super S, ? super Continuation<? super Unit>, ? extends Object> function2) {
        Job launch$default;
        launch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, coroutineContext, null, new CoroutinesKt$launchChannel$job$1(z, byteChannel, function2, (CoroutineDispatcher) coroutineScope.getCoroutineContext().get(CoroutineDispatcher.Key), null), 2, null);
        launch$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.utils.io.CoroutinesKt$launchChannel$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                ByteChannel.this.close(th);
            }
        });
        return new ChannelJob(launch$default, byteChannel);
    }
}
