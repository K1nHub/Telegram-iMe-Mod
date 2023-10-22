package io.ktor.network.sockets;

import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.WriterScope;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: CIOReader.kt */
@DebugMetadata(m143c = "io.ktor.network.sockets.CIOReaderKt$attachForReadingImpl$1", m142f = "CIOReader.kt", m141l = {44, 44, 55}, m140m = "invokeSuspend")
/* loaded from: classes4.dex */
final class CIOReaderKt$attachForReadingImpl$1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ByteBuffer $buffer;
    final /* synthetic */ ByteChannel $channel;
    final /* synthetic */ ReadableByteChannel $nioChannel;
    final /* synthetic */ ObjectPool<ByteBuffer> $pool;
    final /* synthetic */ Selectable $selectable;
    final /* synthetic */ SelectorManager $selector;
    final /* synthetic */ SocketOptions.TCPClientSocketOptions $socketOptions;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CIOReaderKt$attachForReadingImpl$1(SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, ByteChannel byteChannel, Selectable selectable, ByteBuffer byteBuffer, ObjectPool<ByteBuffer> objectPool, ReadableByteChannel readableByteChannel, SelectorManager selectorManager, Continuation<? super CIOReaderKt$attachForReadingImpl$1> continuation) {
        super(2, continuation);
        this.$socketOptions = tCPClientSocketOptions;
        this.$channel = byteChannel;
        this.$selectable = selectable;
        this.$buffer = byteBuffer;
        this.$pool = objectPool;
        this.$nioChannel = readableByteChannel;
        this.$selector = selectorManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CIOReaderKt$attachForReadingImpl$1 cIOReaderKt$attachForReadingImpl$1 = new CIOReaderKt$attachForReadingImpl$1(this.$socketOptions, this.$channel, this.$selectable, this.$buffer, this.$pool, this.$nioChannel, this.$selector, continuation);
        cIOReaderKt$attachForReadingImpl$1.L$0 = obj;
        return cIOReaderKt$attachForReadingImpl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
        return ((CIOReaderKt$attachForReadingImpl$1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b A[Catch: all -> 0x01a2, TryCatch #2 {all -> 0x01a2, blocks: (B:43:0x0103, B:45:0x010b, B:48:0x012c, B:50:0x0130), top: B:89:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0130 A[Catch: all -> 0x01a2, TRY_LEAVE, TryCatch #2 {all -> 0x01a2, blocks: (B:43:0x0103, B:45:0x010b, B:48:0x012c, B:50:0x0130), top: B:89:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013c A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:68:0x0199, B:30:0x00a9, B:33:0x00c9, B:35:0x00d1, B:38:0x00f0, B:52:0x0137, B:54:0x013c, B:56:0x0143, B:65:0x016f, B:41:0x00f6, B:51:0x0132, B:72:0x01a3, B:73:0x01a6), top: B:85:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016f A[Catch: all -> 0x01a0, TRY_ENTER, TryCatch #0 {all -> 0x01a0, blocks: (B:68:0x0199, B:30:0x00a9, B:33:0x00c9, B:35:0x00d1, B:38:0x00f0, B:52:0x0137, B:54:0x013c, B:56:0x0143, B:65:0x016f, B:41:0x00f6, B:51:0x0132, B:72:0x01a3, B:73:0x01a6), top: B:85:0x000c }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00f2 -> B:33:0x00c9). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x012e -> B:89:0x0103). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0196 -> B:68:0x0199). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOReaderKt$attachForReadingImpl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
