package io.ktor.network.sockets;

import io.ktor.network.selector.SelectInterest;
import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.CoroutinesKt;
import io.ktor.utils.p032io.WriterJob;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
/* compiled from: CIOReader.kt */
/* loaded from: classes4.dex */
public final class CIOReaderKt {
    public static final WriterJob attachForReadingImpl(CoroutineScope coroutineScope, ByteChannel channel, ReadableByteChannel nioChannel, Selectable selectable, SelectorManager selector, ObjectPool<ByteBuffer> pool, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(nioChannel, "nioChannel");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(pool, "pool");
        return CoroutinesKt.writer(coroutineScope, Dispatchers.getUnconfined().plus(new CoroutineName("cio-from-nio-reader")), channel, new CIOReaderKt$attachForReadingImpl$1(tCPClientSocketOptions, channel, selectable, pool.borrow(), pool, nioChannel, selector, null));
    }

    public static final WriterJob attachForReadingDirectImpl(CoroutineScope coroutineScope, ByteChannel channel, ReadableByteChannel nioChannel, Selectable selectable, SelectorManager selector, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(nioChannel, "nioChannel");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selector, "selector");
        return CoroutinesKt.writer(coroutineScope, Dispatchers.getUnconfined().plus(new CoroutineName("cio-from-nio-reader")), channel, new CIOReaderKt$attachForReadingDirectImpl$1(selectable, tCPClientSocketOptions, channel, nioChannel, selector, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object readFrom(io.ktor.utils.p032io.ByteWriteChannel r7, final java.nio.channels.ReadableByteChannel r8, kotlin.coroutines.Continuation<? super java.lang.Integer> r9) {
        /*
            boolean r0 = r9 instanceof io.ktor.network.sockets.CIOReaderKt$readFrom$1
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.network.sockets.CIOReaderKt$readFrom$1 r0 = (io.ktor.network.sockets.CIOReaderKt$readFrom$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.sockets.CIOReaderKt$readFrom$1 r0 = new io.ktor.network.sockets.CIOReaderKt$readFrom$1
            r0.<init>(r9)
        L18:
            r4 = r0
            java.lang.Object r9 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2e
            java.lang.Object r7 = r4.L$0
            kotlin.jvm.internal.Ref$IntRef r7 = (kotlin.jvm.internal.Ref$IntRef) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L56
        L2e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$IntRef r9 = new kotlin.jvm.internal.Ref$IntRef
            r9.<init>()
            r3 = 0
            io.ktor.network.sockets.CIOReaderKt$readFrom$2 r5 = new io.ktor.network.sockets.CIOReaderKt$readFrom$2
            r5.<init>()
            r8 = 1
            r6 = 0
            r4.L$0 = r9
            r4.label = r2
            r1 = r7
            r2 = r3
            r3 = r5
            r5 = r8
            java.lang.Object r7 = io.ktor.utils.p032io.ByteWriteChannel.DefaultImpls.write$default(r1, r2, r3, r4, r5, r6)
            if (r7 != r0) goto L55
            return r0
        L55:
            r7 = r9
        L56:
            int r7 = r7.element
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOReaderKt.readFrom(io.ktor.utils.io.ByteWriteChannel, java.nio.channels.ReadableByteChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object selectForRead(Selectable selectable, SelectorManager selectorManager, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        SelectInterest selectInterest = SelectInterest.READ;
        selectable.interestOp(selectInterest, true);
        Object select = selectorManager.select(selectable, selectInterest, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return select == coroutine_suspended ? select : Unit.INSTANCE;
    }
}
