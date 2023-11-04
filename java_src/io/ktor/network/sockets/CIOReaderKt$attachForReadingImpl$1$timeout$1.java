package io.ktor.network.sockets;

import io.ktor.utils.p032io.ByteChannel;
import java.net.SocketTimeoutException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
/* compiled from: CIOReader.kt */
@DebugMetadata(m145c = "io.ktor.network.sockets.CIOReaderKt$attachForReadingImpl$1$timeout$1", m144f = "CIOReader.kt", m143l = {}, m142m = "invokeSuspend")
/* loaded from: classes4.dex */
final class CIOReaderKt$attachForReadingImpl$1$timeout$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ ByteChannel $channel;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CIOReaderKt$attachForReadingImpl$1$timeout$1(ByteChannel byteChannel, Continuation<? super CIOReaderKt$attachForReadingImpl$1$timeout$1> continuation) {
        super(1, continuation);
        this.$channel = byteChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new CIOReaderKt$attachForReadingImpl$1$timeout$1(this.$channel, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((CIOReaderKt$attachForReadingImpl$1$timeout$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$channel.close(new SocketTimeoutException());
        return Unit.INSTANCE;
    }
}
