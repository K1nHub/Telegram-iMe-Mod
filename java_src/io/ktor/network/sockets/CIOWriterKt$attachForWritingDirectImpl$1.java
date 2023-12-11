package io.ktor.network.sockets;

import io.ktor.network.selector.SelectInterest;
import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.LookAheadSuspendSession;
import io.ktor.utils.p032io.ReaderScope;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;
import java.nio.channels.WritableByteChannel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CIOWriter.kt */
@DebugMetadata(m145c = "io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1", m144f = "CIOWriter.kt", m143l = {86}, m142m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class CIOWriterKt$attachForWritingDirectImpl$1 extends SuspendLambda implements Function2<ReaderScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ByteChannel $channel;
    final /* synthetic */ WritableByteChannel $nioChannel;
    final /* synthetic */ Selectable $selectable;
    final /* synthetic */ SelectorManager $selector;
    final /* synthetic */ SocketOptions.TCPClientSocketOptions $socketOptions;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CIOWriterKt$attachForWritingDirectImpl$1(Selectable selectable, ByteChannel byteChannel, WritableByteChannel writableByteChannel, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, SelectorManager selectorManager, Continuation<? super CIOWriterKt$attachForWritingDirectImpl$1> continuation) {
        super(2, continuation);
        this.$selectable = selectable;
        this.$channel = byteChannel;
        this.$nioChannel = writableByteChannel;
        this.$socketOptions = tCPClientSocketOptions;
        this.$selector = selectorManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CIOWriterKt$attachForWritingDirectImpl$1 cIOWriterKt$attachForWritingDirectImpl$1 = new CIOWriterKt$attachForWritingDirectImpl$1(this.$selectable, this.$channel, this.$nioChannel, this.$socketOptions, this.$selector, continuation);
        cIOWriterKt$attachForWritingDirectImpl$1.L$0 = obj;
        return cIOWriterKt$attachForWritingDirectImpl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ReaderScope readerScope, Continuation<? super Unit> continuation) {
        return ((CIOWriterKt$attachForWritingDirectImpl$1) create(readerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        WritableByteChannel writableByteChannel;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ReaderScope readerScope = (ReaderScope) this.L$0;
                this.$selectable.interestOp(SelectInterest.WRITE, false);
                ByteChannel byteChannel = this.$channel;
                C26611 c26611 = new C26611(this.$socketOptions, readerScope, byteChannel, this.$nioChannel, this.$selectable, this.$selector, null);
                this.label = 1;
                if (byteChannel.lookAheadSuspend(c26611, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            if (writableByteChannel instanceof SocketChannel) {
                try {
                    if (JavaSocketOptionsKt.getJava7NetworkApisAvailable()) {
                        ((SocketChannel) this.$nioChannel).shutdownOutput();
                    } else {
                        ((SocketChannel) this.$nioChannel).socket().shutdownOutput();
                    }
                } catch (ClosedChannelException unused) {
                }
            }
            return Unit.INSTANCE;
        } finally {
            this.$selectable.interestOp(SelectInterest.WRITE, false);
            if (this.$nioChannel instanceof SocketChannel) {
                try {
                    if (JavaSocketOptionsKt.getJava7NetworkApisAvailable()) {
                        ((SocketChannel) this.$nioChannel).shutdownOutput();
                    } else {
                        ((SocketChannel) this.$nioChannel).socket().shutdownOutput();
                    }
                } catch (ClosedChannelException unused2) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CIOWriter.kt */
    @DebugMetadata(m145c = "io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1$1", m144f = "CIOWriter.kt", m143l = {99, 111, 111}, m142m = "invokeSuspend")
    /* renamed from: io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1$1 */
    /* loaded from: classes4.dex */
    public static final class C26611 extends SuspendLambda implements Function2<LookAheadSuspendSession, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReaderScope $$this$reader;
        final /* synthetic */ ByteChannel $channel;
        final /* synthetic */ WritableByteChannel $nioChannel;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26611(SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, ReaderScope readerScope, ByteChannel byteChannel, WritableByteChannel writableByteChannel, Selectable selectable, SelectorManager selectorManager, Continuation<? super C26611> continuation) {
            super(2, continuation);
            this.$socketOptions = tCPClientSocketOptions;
            this.$$this$reader = readerScope;
            this.$channel = byteChannel;
            this.$nioChannel = writableByteChannel;
            this.$selectable = selectable;
            this.$selector = selectorManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C26611 c26611 = new C26611(this.$socketOptions, this.$$this$reader, this.$channel, this.$nioChannel, this.$selectable, this.$selector, continuation);
            c26611.L$0 = obj;
            return c26611;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(LookAheadSuspendSession lookAheadSuspendSession, Continuation<? super Unit> continuation) {
            return ((C26611) create(lookAheadSuspendSession, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x010f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00bb -> B:35:0x00e7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00dc -> B:24:0x00b6). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x013f -> B:40:0x0107). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0141 -> B:64:0x018c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0158 -> B:69:0x0178). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0175 -> B:69:0x0178). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instructions count: 409
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1.C26611.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
