package io.ktor.network.sockets;

import io.ktor.network.selector.SelectableBase;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.p032io.ByteWriteChannel;
import io.ktor.utils.p032io.ByteWriteChannelKt;
import io.ktor.utils.p032io.ReaderJob;
import io.ktor.utils.p032io.WriterJob;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
/* compiled from: NIOSocketImpl.kt */
/* loaded from: classes4.dex */
public abstract class NIOSocketImpl<S extends SelectableChannel & ByteChannel> extends SelectableBase implements CoroutineScope, DisposableHandle, AReadable, AWritable, CoroutineScope {
    private final S channel;
    private final AtomicBoolean closeFlag;
    private final ObjectPool<ByteBuffer> pool;
    private final AtomicReference<ReaderJob> readerJob;
    private final SelectorManager selector;
    private final CompletableJob socketContext;
    private final SocketOptions.TCPClientSocketOptions socketOptions;
    private final AtomicReference<WriterJob> writerJob;

    @Override // io.ktor.network.selector.SelectableBase, io.ktor.network.selector.Selectable
    public S getChannel() {
        return this.channel;
    }

    public final SelectorManager getSelector() {
        return this.selector;
    }

    public final ObjectPool<ByteBuffer> getPool() {
        return this.pool;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NIOSocketImpl(S channel, SelectorManager selector, ObjectPool<ByteBuffer> objectPool, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        super(channel);
        CompletableJob Job$default;
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(selector, "selector");
        this.channel = channel;
        this.selector = selector;
        this.pool = objectPool;
        this.socketOptions = tCPClientSocketOptions;
        this.closeFlag = new AtomicBoolean();
        this.readerJob = new AtomicReference<>();
        this.writerJob = new AtomicReference<>();
        Job$default = JobKt__JobKt.Job$default(null, 1, null);
        this.socketContext = Job$default;
    }

    public CompletableJob getSocketContext() {
        return this.socketContext;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return getSocketContext();
    }

    @Override // io.ktor.network.sockets.AReadable
    public final WriterJob attachForReading(final io.ktor.utils.p032io.ByteChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return (WriterJob) attachFor("reading", channel, this.writerJob, new Function0<WriterJob>(this) { // from class: io.ktor.network.sockets.NIOSocketImpl$attachForReading$1
            final /* synthetic */ NIOSocketImpl<S> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WriterJob invoke() {
                SocketOptions.TCPClientSocketOptions tCPClientSocketOptions;
                SocketOptions.TCPClientSocketOptions tCPClientSocketOptions2;
                if (this.this$0.getPool() != null) {
                    NIOSocketImpl<S> nIOSocketImpl = this.this$0;
                    io.ktor.utils.p032io.ByteChannel byteChannel = channel;
                    ReadableByteChannel readableByteChannel = (ReadableByteChannel) nIOSocketImpl.getChannel();
                    NIOSocketImpl<S> nIOSocketImpl2 = this.this$0;
                    SelectorManager selector = nIOSocketImpl2.getSelector();
                    ObjectPool<ByteBuffer> pool = this.this$0.getPool();
                    tCPClientSocketOptions2 = ((NIOSocketImpl) this.this$0).socketOptions;
                    return CIOReaderKt.attachForReadingImpl(nIOSocketImpl, byteChannel, readableByteChannel, nIOSocketImpl2, selector, pool, tCPClientSocketOptions2);
                }
                NIOSocketImpl<S> nIOSocketImpl3 = this.this$0;
                io.ktor.utils.p032io.ByteChannel byteChannel2 = channel;
                ReadableByteChannel readableByteChannel2 = (ReadableByteChannel) nIOSocketImpl3.getChannel();
                NIOSocketImpl<S> nIOSocketImpl4 = this.this$0;
                SelectorManager selector2 = nIOSocketImpl4.getSelector();
                tCPClientSocketOptions = ((NIOSocketImpl) this.this$0).socketOptions;
                return CIOReaderKt.attachForReadingDirectImpl(nIOSocketImpl3, byteChannel2, readableByteChannel2, nIOSocketImpl4, selector2, tCPClientSocketOptions);
            }
        });
    }

    @Override // io.ktor.network.sockets.AWritable
    public final ReaderJob attachForWriting(final io.ktor.utils.p032io.ByteChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return (ReaderJob) attachFor("writing", channel, this.readerJob, new Function0<ReaderJob>(this) { // from class: io.ktor.network.sockets.NIOSocketImpl$attachForWriting$1
            final /* synthetic */ NIOSocketImpl<S> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ReaderJob invoke() {
                SocketOptions.TCPClientSocketOptions tCPClientSocketOptions;
                NIOSocketImpl<S> nIOSocketImpl = this.this$0;
                NIOSocketImpl<S> nIOSocketImpl2 = this.this$0;
                SelectorManager selector = nIOSocketImpl2.getSelector();
                tCPClientSocketOptions = ((NIOSocketImpl) this.this$0).socketOptions;
                return CIOWriterKt.attachForWritingDirectImpl(nIOSocketImpl, channel, (WritableByteChannel) nIOSocketImpl.getChannel(), nIOSocketImpl2, selector, tCPClientSocketOptions);
            }
        });
    }

    @Override // io.ktor.network.selector.SelectableBase, kotlinx.coroutines.DisposableHandle
    public void dispose() {
        close();
    }

    @Override // io.ktor.network.selector.SelectableBase, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ByteWriteChannel channel;
        if (this.closeFlag.compareAndSet(false, true)) {
            ReaderJob readerJob = this.readerJob.get();
            if (readerJob != null && (channel = readerJob.getChannel()) != null) {
                ByteWriteChannelKt.close(channel);
            }
            WriterJob writerJob = this.writerJob.get();
            if (writerJob != null) {
                Job.DefaultImpls.cancel$default(writerJob, null, 1, null);
            }
            checkChannels();
        }
    }

    private final <J extends Job> J attachFor(String str, io.ktor.utils.p032io.ByteChannel byteChannel, AtomicReference<J> atomicReference, Function0<? extends J> function0) {
        if (this.closeFlag.get()) {
            Throwable closedChannelException = new ClosedChannelException();
            byteChannel.close(closedChannelException);
            throw closedChannelException;
        }
        J invoke = function0.invoke();
        if (!atomicReference.compareAndSet(null, invoke)) {
            IllegalStateException illegalStateException = new IllegalStateException(str + " channel has already been set");
            Job.DefaultImpls.cancel$default(invoke, null, 1, null);
            throw illegalStateException;
        } else if (this.closeFlag.get()) {
            Throwable closedChannelException2 = new ClosedChannelException();
            Job.DefaultImpls.cancel$default(invoke, null, 1, null);
            byteChannel.close(closedChannelException2);
            throw closedChannelException2;
        } else {
            byteChannel.attachJob(invoke);
            invoke.invokeOnCompletion(new Function1<Throwable, Unit>(this) { // from class: io.ktor.network.sockets.NIOSocketImpl$attachFor$1
                final /* synthetic */ NIOSocketImpl<S> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    this.this$0.checkChannels();
                }
            });
            return invoke;
        }
    }

    private final Throwable actualClose() {
        try {
            getChannel().close();
            super.close();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        this.selector.notifyClosed(this);
        return th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkChannels() {
        if (this.closeFlag.get() && getCompletedOrNotStarted(this.readerJob) && getCompletedOrNotStarted(this.writerJob)) {
            Throwable exception = getException(this.readerJob);
            Throwable exception2 = getException(this.writerJob);
            Throwable combine = combine(combine(exception, exception2), actualClose());
            if (combine == null) {
                getSocketContext().complete();
            } else {
                getSocketContext().completeExceptionally(combine);
            }
        }
    }

    private final Throwable combine(Throwable th, Throwable th2) {
        if (th == null) {
            return th2;
        }
        if (th2 == null || th == th2) {
            return th;
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        return th;
    }

    private final boolean getCompletedOrNotStarted(AtomicReference<? extends Job> atomicReference) {
        Job job = atomicReference.get();
        return job == null || job.isCompleted();
    }

    private final Throwable getException(AtomicReference<? extends Job> atomicReference) {
        CancellationException cancellationException;
        Job job = atomicReference.get();
        if (job != null) {
            if (!job.isCancelled()) {
                job = null;
            }
            if (job == null || (cancellationException = job.getCancellationException()) == null) {
                return null;
            }
            return cancellationException.getCause();
        }
        return null;
    }
}
