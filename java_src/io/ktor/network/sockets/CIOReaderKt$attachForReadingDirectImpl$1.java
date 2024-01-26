package io.ktor.network.sockets;

import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.WriterScope;
import java.nio.channels.ReadableByteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CIOReader.kt */
@DebugMetadata(m148c = "io.ktor.network.sockets.CIOReaderKt$attachForReadingDirectImpl$1", m147f = "CIOReader.kt", m146l = {96, 108, 109, 96, 108, 109}, m145m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class CIOReaderKt$attachForReadingDirectImpl$1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ByteChannel $channel;
    final /* synthetic */ ReadableByteChannel $nioChannel;
    final /* synthetic */ Selectable $selectable;
    final /* synthetic */ SelectorManager $selector;
    final /* synthetic */ SocketOptions.TCPClientSocketOptions $socketOptions;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CIOReaderKt$attachForReadingDirectImpl$1(Selectable selectable, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, ByteChannel byteChannel, ReadableByteChannel readableByteChannel, SelectorManager selectorManager, Continuation<? super CIOReaderKt$attachForReadingDirectImpl$1> continuation) {
        super(2, continuation);
        this.$selectable = selectable;
        this.$socketOptions = tCPClientSocketOptions;
        this.$channel = byteChannel;
        this.$nioChannel = readableByteChannel;
        this.$selector = selectorManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CIOReaderKt$attachForReadingDirectImpl$1 cIOReaderKt$attachForReadingDirectImpl$1 = new CIOReaderKt$attachForReadingDirectImpl$1(this.$selectable, this.$socketOptions, this.$channel, this.$nioChannel, this.$selector, continuation);
        cIOReaderKt$attachForReadingDirectImpl$1.L$0 = obj;
        return cIOReaderKt$attachForReadingDirectImpl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
        return ((CIOReaderKt$attachForReadingDirectImpl$1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0199, code lost:
        if (((java.lang.Number) r14).intValue() == 0) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0276 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0120 A[Catch: all -> 0x019e, TryCatch #6 {all -> 0x019e, blocks: (B:95:0x0228, B:36:0x0118, B:38:0x0120, B:40:0x012a, B:50:0x015c, B:54:0x0176, B:67:0x01ac, B:104:0x023b, B:105:0x023e, B:107:0x0246, B:116:0x026d), top: B:141:0x0228 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0151 A[Catch: all -> 0x01a9, TryCatch #3 {all -> 0x01a9, blocks: (B:101:0x0235, B:102:0x0238, B:44:0x0149, B:46:0x0151, B:48:0x0158, B:58:0x0193), top: B:135:0x0149 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0189 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d6 A[Catch: all -> 0x0233, TryCatch #2 {all -> 0x0233, blocks: (B:86:0x0214, B:72:0x01ce, B:74:0x01d6, B:76:0x01dc), top: B:133:0x0214 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x020d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x021d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0199 -> B:61:0x019c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x01a4 -> B:36:0x0118). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x01d6 -> B:93:0x0223). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x01da -> B:93:0x0223). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x020e -> B:133:0x0214). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOReaderKt$attachForReadingDirectImpl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
