package io.grpc.internal;

import com.google.android.exoplayer2.C0468C;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.MoreExecutors;
import io.grpc.CallOptions;
import io.grpc.ClientCall;
import io.grpc.Codec;
import io.grpc.Compressor;
import io.grpc.CompressorRegistry;
import io.grpc.Context;
import io.grpc.Contexts;
import io.grpc.Deadline;
import io.grpc.DecompressorRegistry;
import io.grpc.InternalDecompressorRegistry;
import io.grpc.LoadBalancer;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.StreamListener;
import io.perfmark.Link;
import io.perfmark.PerfMark;
import io.perfmark.Tag;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ClientCallImpl<ReqT, RespT> extends ClientCall<ReqT, RespT> {
    private final Executor callExecutor;
    private final CallOptions callOptions;
    private boolean cancelCalled;
    private volatile boolean cancelListenersShouldBeRemoved;
    private ClientCallImpl<ReqT, RespT>.ContextCancellationListener cancellationListener;
    private final CallTracer channelCallsTracer;
    private final ClientTransportProvider clientTransportProvider;
    private final Context context;
    private final ScheduledExecutorService deadlineCancellationExecutor;
    private volatile ScheduledFuture<?> deadlineCancellationNotifyApplicationFuture;
    private volatile ScheduledFuture<?> deadlineCancellationSendToServerFuture;
    private boolean fullStreamDecompression;
    private boolean halfCloseCalled;
    private final MethodDescriptor<ReqT, RespT> method;
    private final boolean retryEnabled;
    private ClientStream stream;
    private final Tag tag;
    private final boolean unaryRequest;
    private static final Logger log = Logger.getLogger(ClientCallImpl.class.getName());
    private static final byte[] FULL_STREAM_DECOMPRESSION_ENCODINGS = "gzip".getBytes(Charset.forName(C0468C.ASCII_NAME));
    static final long DEADLINE_EXPIRATION_CANCEL_DELAY_NANOS = TimeUnit.SECONDS.toNanos(1);
    private DecompressorRegistry decompressorRegistry = DecompressorRegistry.getDefaultInstance();
    private CompressorRegistry compressorRegistry = CompressorRegistry.getDefaultInstance();
    private boolean observerClosed = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface ClientTransportProvider {
        ClientTransport get(LoadBalancer.PickSubchannelArgs pickSubchannelArgs);

        <ReqT> ClientStream newRetriableStream(MethodDescriptor<ReqT, ?> methodDescriptor, CallOptions callOptions, Metadata metadata, Context context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientCallImpl(MethodDescriptor<ReqT, RespT> methodDescriptor, Executor executor, CallOptions callOptions, ClientTransportProvider clientTransportProvider, ScheduledExecutorService scheduledExecutorService, CallTracer callTracer, boolean z) {
        Executor serializingExecutor;
        boolean z2 = false;
        this.method = methodDescriptor;
        Tag createTag = PerfMark.createTag(methodDescriptor.getFullMethodName(), System.identityHashCode(this));
        this.tag = createTag;
        if (executor == MoreExecutors.directExecutor()) {
            serializingExecutor = new SerializeReentrantCallsDirectExecutor();
        } else {
            serializingExecutor = new SerializingExecutor(executor);
        }
        this.callExecutor = serializingExecutor;
        this.channelCallsTracer = callTracer;
        this.context = Context.current();
        this.unaryRequest = (methodDescriptor.getType() == MethodDescriptor.MethodType.UNARY || methodDescriptor.getType() == MethodDescriptor.MethodType.SERVER_STREAMING) ? true : true;
        this.callOptions = callOptions;
        this.clientTransportProvider = clientTransportProvider;
        this.deadlineCancellationExecutor = scheduledExecutorService;
        this.retryEnabled = z;
        PerfMark.event("ClientCall.<init>", createTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class ContextCancellationListener implements Context.CancellationListener {
        private ClientCall.Listener<RespT> observer;

        private ContextCancellationListener(ClientCall.Listener<RespT> listener) {
            this.observer = listener;
        }

        @Override // io.grpc.Context.CancellationListener
        public void cancelled(Context context) {
            if (context.getDeadline() == null || !context.getDeadline().isExpired()) {
                ClientCallImpl.this.stream.cancel(Contexts.statusFromCancelled(context));
                return;
            }
            ClientCallImpl.this.delayedCancelOnDeadlineExceeded(Contexts.statusFromCancelled(context), this.observer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientCallImpl<ReqT, RespT> setFullStreamDecompression(boolean z) {
        this.fullStreamDecompression = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientCallImpl<ReqT, RespT> setDecompressorRegistry(DecompressorRegistry decompressorRegistry) {
        this.decompressorRegistry = decompressorRegistry;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientCallImpl<ReqT, RespT> setCompressorRegistry(CompressorRegistry compressorRegistry) {
        this.compressorRegistry = compressorRegistry;
        return this;
    }

    static void prepareHeaders(Metadata metadata, DecompressorRegistry decompressorRegistry, Compressor compressor, boolean z) {
        Metadata.Key<String> key = GrpcUtil.MESSAGE_ENCODING_KEY;
        metadata.discardAll(key);
        if (compressor != Codec.Identity.NONE) {
            metadata.put(key, compressor.getMessageEncoding());
        }
        Metadata.Key<byte[]> key2 = GrpcUtil.MESSAGE_ACCEPT_ENCODING_KEY;
        metadata.discardAll(key2);
        byte[] rawAdvertisedMessageEncodings = InternalDecompressorRegistry.getRawAdvertisedMessageEncodings(decompressorRegistry);
        if (rawAdvertisedMessageEncodings.length != 0) {
            metadata.put(key2, rawAdvertisedMessageEncodings);
        }
        metadata.discardAll(GrpcUtil.CONTENT_ENCODING_KEY);
        Metadata.Key<byte[]> key3 = GrpcUtil.CONTENT_ACCEPT_ENCODING_KEY;
        metadata.discardAll(key3);
        if (z) {
            metadata.put(key3, FULL_STREAM_DECOMPRESSION_ENCODINGS);
        }
    }

    @Override // io.grpc.ClientCall
    public void start(ClientCall.Listener<RespT> listener, Metadata metadata) {
        PerfMark.startTask("ClientCall.start", this.tag);
        try {
            startInternal(listener, metadata);
        } finally {
            PerfMark.stopTask("ClientCall.start", this.tag);
        }
    }

    private void startInternal(ClientCall.Listener<RespT> listener, Metadata metadata) {
        Compressor compressor;
        boolean z = false;
        Preconditions.checkState(this.stream == null, "Already started");
        Preconditions.checkState(!this.cancelCalled, "call was cancelled");
        Preconditions.checkNotNull(listener, "observer");
        Preconditions.checkNotNull(metadata, "headers");
        if (this.context.isCancelled()) {
            this.stream = NoopClientStream.INSTANCE;
            executeCloseObserverInContext(listener, Contexts.statusFromCancelled(this.context));
            return;
        }
        String compressor2 = this.callOptions.getCompressor();
        if (compressor2 != null) {
            compressor = this.compressorRegistry.lookupCompressor(compressor2);
            if (compressor == null) {
                this.stream = NoopClientStream.INSTANCE;
                executeCloseObserverInContext(listener, Status.INTERNAL.withDescription(String.format("Unable to find compressor by name %s", compressor2)));
                return;
            }
        } else {
            compressor = Codec.Identity.NONE;
        }
        prepareHeaders(metadata, this.decompressorRegistry, compressor, this.fullStreamDecompression);
        Deadline effectiveDeadline = effectiveDeadline();
        if (effectiveDeadline != null && effectiveDeadline.isExpired()) {
            z = true;
        }
        if (!z) {
            logIfContextNarrowedTimeout(effectiveDeadline, this.context.getDeadline(), this.callOptions.getDeadline());
            if (this.retryEnabled) {
                this.stream = this.clientTransportProvider.newRetriableStream(this.method, this.callOptions, metadata, this.context);
            } else {
                ClientTransport clientTransport = this.clientTransportProvider.get(new PickSubchannelArgsImpl(this.method, metadata, this.callOptions));
                Context attach = this.context.attach();
                try {
                    this.stream = clientTransport.newStream(this.method, metadata, this.callOptions);
                } finally {
                    this.context.detach(attach);
                }
            }
        } else {
            this.stream = new FailingClientStream(Status.DEADLINE_EXCEEDED.withDescription("ClientCall started after deadline exceeded: " + effectiveDeadline));
        }
        if (this.callOptions.getAuthority() != null) {
            this.stream.setAuthority(this.callOptions.getAuthority());
        }
        if (this.callOptions.getMaxInboundMessageSize() != null) {
            this.stream.setMaxInboundMessageSize(this.callOptions.getMaxInboundMessageSize().intValue());
        }
        if (this.callOptions.getMaxOutboundMessageSize() != null) {
            this.stream.setMaxOutboundMessageSize(this.callOptions.getMaxOutboundMessageSize().intValue());
        }
        if (effectiveDeadline != null) {
            this.stream.setDeadline(effectiveDeadline);
        }
        this.stream.setCompressor(compressor);
        boolean z2 = this.fullStreamDecompression;
        if (z2) {
            this.stream.setFullStreamDecompression(z2);
        }
        this.stream.setDecompressorRegistry(this.decompressorRegistry);
        this.channelCallsTracer.reportCallStarted();
        this.cancellationListener = new ContextCancellationListener(listener);
        this.stream.start(new ClientStreamListenerImpl(listener));
        this.context.addListener(this.cancellationListener, MoreExecutors.directExecutor());
        if (effectiveDeadline != null && !effectiveDeadline.equals(this.context.getDeadline()) && this.deadlineCancellationExecutor != null && !(this.stream instanceof FailingClientStream)) {
            this.deadlineCancellationNotifyApplicationFuture = startDeadlineNotifyApplicationTimer(effectiveDeadline, listener);
        }
        if (this.cancelListenersShouldBeRemoved) {
            removeContextListenerAndCancelDeadlineFuture();
        }
    }

    private static void logIfContextNarrowedTimeout(Deadline deadline, Deadline deadline2, Deadline deadline3) {
        Logger logger = log;
        if (logger.isLoggable(Level.FINE) && deadline != null && deadline.equals(deadline2)) {
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            StringBuilder sb = new StringBuilder(String.format("Call timeout set to '%d' ns, due to context deadline.", Long.valueOf(Math.max(0L, deadline.timeRemaining(timeUnit)))));
            if (deadline3 == null) {
                sb.append(" Explicit call timeout was not set.");
            } else {
                sb.append(String.format(" Explicit call timeout was '%d' ns.", Long.valueOf(deadline3.timeRemaining(timeUnit))));
            }
            logger.fine(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeContextListenerAndCancelDeadlineFuture() {
        this.context.removeListener(this.cancellationListener);
        ScheduledFuture<?> scheduledFuture = this.deadlineCancellationSendToServerFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        ScheduledFuture<?> scheduledFuture2 = this.deadlineCancellationNotifyApplicationFuture;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
        }
    }

    private ScheduledFuture<?> startDeadlineNotifyApplicationTimer(Deadline deadline, final ClientCall.Listener<RespT> listener) {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        final long timeRemaining = deadline.timeRemaining(timeUnit);
        return this.deadlineCancellationExecutor.schedule(new LogExceptionRunnable(new Runnable() { // from class: io.grpc.internal.ClientCallImpl.1DeadlineExceededNotifyApplicationTimer
            @Override // java.lang.Runnable
            public void run() {
                ClientCallImpl.this.delayedCancelOnDeadlineExceeded(ClientCallImpl.this.buildDeadlineExceededStatusWithRemainingNanos(timeRemaining), listener);
            }
        }), timeRemaining, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Status buildDeadlineExceededStatusWithRemainingNanos(long j) {
        InsightBuilder insightBuilder = new InsightBuilder();
        this.stream.appendTimeoutInsight(insightBuilder);
        long abs = Math.abs(j);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long nanos = abs / timeUnit.toNanos(1L);
        long abs2 = Math.abs(j) % timeUnit.toNanos(1L);
        StringBuilder sb = new StringBuilder();
        sb.append("deadline exceeded after ");
        if (j < 0) {
            sb.append('-');
        }
        sb.append(nanos);
        sb.append(String.format(".%09d", Long.valueOf(abs2)));
        sb.append("s. ");
        sb.append(insightBuilder);
        return Status.DEADLINE_EXCEEDED.augmentDescription(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delayedCancelOnDeadlineExceeded(final Status status, ClientCall.Listener<RespT> listener) {
        if (this.deadlineCancellationSendToServerFuture != null) {
            return;
        }
        this.deadlineCancellationSendToServerFuture = this.deadlineCancellationExecutor.schedule(new LogExceptionRunnable(new Runnable() { // from class: io.grpc.internal.ClientCallImpl.1DeadlineExceededSendCancelToServerTimer
            @Override // java.lang.Runnable
            public void run() {
                ClientCallImpl.this.stream.cancel(status);
            }
        }), DEADLINE_EXPIRATION_CANCEL_DELAY_NANOS, TimeUnit.NANOSECONDS);
        executeCloseObserverInContext(listener, status);
    }

    private void executeCloseObserverInContext(final ClientCall.Listener<RespT> listener, final Status status) {
        this.callExecutor.execute(new ContextRunnable() { // from class: io.grpc.internal.ClientCallImpl.1CloseInContext
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(ClientCallImpl.this.context);
            }

            @Override // io.grpc.internal.ContextRunnable
            public void runInContext() {
                ClientCallImpl.this.closeObserver(listener, status, new Metadata());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeObserver(ClientCall.Listener<RespT> listener, Status status, Metadata metadata) {
        if (this.observerClosed) {
            return;
        }
        this.observerClosed = true;
        listener.onClose(status, metadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Deadline effectiveDeadline() {
        return min(this.callOptions.getDeadline(), this.context.getDeadline());
    }

    private static Deadline min(Deadline deadline, Deadline deadline2) {
        return deadline == null ? deadline2 : deadline2 == null ? deadline : deadline.minimum(deadline2);
    }

    @Override // io.grpc.ClientCall
    public void request(int i) {
        PerfMark.startTask("ClientCall.request", this.tag);
        try {
            boolean z = true;
            Preconditions.checkState(this.stream != null, "Not started");
            if (i < 0) {
                z = false;
            }
            Preconditions.checkArgument(z, "Number requested must be non-negative");
            this.stream.request(i);
        } finally {
            PerfMark.stopTask("ClientCall.cancel", this.tag);
        }
    }

    @Override // io.grpc.ClientCall
    public void halfClose() {
        PerfMark.startTask("ClientCall.halfClose", this.tag);
        try {
            halfCloseInternal();
        } finally {
            PerfMark.stopTask("ClientCall.halfClose", this.tag);
        }
    }

    private void halfCloseInternal() {
        Preconditions.checkState(this.stream != null, "Not started");
        Preconditions.checkState(!this.cancelCalled, "call was cancelled");
        Preconditions.checkState(!this.halfCloseCalled, "call already half-closed");
        this.halfCloseCalled = true;
        this.stream.halfClose();
    }

    @Override // io.grpc.ClientCall
    public void sendMessage(ReqT reqt) {
        PerfMark.startTask("ClientCall.sendMessage", this.tag);
        try {
            sendMessageInternal(reqt);
        } finally {
            PerfMark.stopTask("ClientCall.sendMessage", this.tag);
        }
    }

    private void sendMessageInternal(ReqT reqt) {
        Preconditions.checkState(this.stream != null, "Not started");
        Preconditions.checkState(!this.cancelCalled, "call was cancelled");
        Preconditions.checkState(!this.halfCloseCalled, "call was half-closed");
        try {
            ClientStream clientStream = this.stream;
            if (clientStream instanceof RetriableStream) {
                ((RetriableStream) clientStream).sendMessage(reqt);
            } else {
                clientStream.writeMessage(this.method.streamRequest(reqt));
            }
            if (this.unaryRequest) {
                return;
            }
            this.stream.flush();
        } catch (Error e) {
            this.stream.cancel(Status.CANCELLED.withDescription("Client sendMessage() failed with Error"));
            throw e;
        } catch (RuntimeException e2) {
            this.stream.cancel(Status.CANCELLED.withCause(e2).withDescription("Failed to stream message"));
        }
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("method", this.method).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ClientStreamListenerImpl implements ClientStreamListener {
        private boolean closed;
        private final ClientCall.Listener<RespT> observer;

        public ClientStreamListenerImpl(ClientCall.Listener<RespT> listener) {
            this.observer = (ClientCall.Listener) Preconditions.checkNotNull(listener, "observer");
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void headersRead(final Metadata metadata) {
            PerfMark.startTask("ClientStreamListener.headersRead", ClientCallImpl.this.tag);
            final Link linkOut = PerfMark.linkOut();
            try {
                ClientCallImpl.this.callExecutor.execute(new ContextRunnable() { // from class: io.grpc.internal.ClientCallImpl.ClientStreamListenerImpl.1HeadersRead
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(ClientCallImpl.this.context);
                    }

                    @Override // io.grpc.internal.ContextRunnable
                    public void runInContext() {
                        PerfMark.startTask("ClientCall$Listener.headersRead", ClientCallImpl.this.tag);
                        PerfMark.linkIn(linkOut);
                        try {
                            runInternal();
                        } finally {
                            PerfMark.stopTask("ClientCall$Listener.headersRead", ClientCallImpl.this.tag);
                        }
                    }

                    private void runInternal() {
                        if (ClientStreamListenerImpl.this.closed) {
                            return;
                        }
                        try {
                            ClientStreamListenerImpl.this.observer.onHeaders(metadata);
                        } catch (Throwable th) {
                            Status withDescription = Status.CANCELLED.withCause(th).withDescription("Failed to read headers");
                            ClientCallImpl.this.stream.cancel(withDescription);
                            ClientStreamListenerImpl.this.close(withDescription, new Metadata());
                        }
                    }
                });
            } finally {
                PerfMark.stopTask("ClientStreamListener.headersRead", ClientCallImpl.this.tag);
            }
        }

        @Override // io.grpc.internal.StreamListener
        public void messagesAvailable(final StreamListener.MessageProducer messageProducer) {
            PerfMark.startTask("ClientStreamListener.messagesAvailable", ClientCallImpl.this.tag);
            final Link linkOut = PerfMark.linkOut();
            try {
                ClientCallImpl.this.callExecutor.execute(new ContextRunnable() { // from class: io.grpc.internal.ClientCallImpl.ClientStreamListenerImpl.1MessagesAvailable
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(ClientCallImpl.this.context);
                    }

                    @Override // io.grpc.internal.ContextRunnable
                    public void runInContext() {
                        PerfMark.startTask("ClientCall$Listener.messagesAvailable", ClientCallImpl.this.tag);
                        PerfMark.linkIn(linkOut);
                        try {
                            runInternal();
                        } finally {
                            PerfMark.stopTask("ClientCall$Listener.messagesAvailable", ClientCallImpl.this.tag);
                        }
                    }

                    private void runInternal() {
                        if (ClientStreamListenerImpl.this.closed) {
                            GrpcUtil.closeQuietly(messageProducer);
                            return;
                        }
                        while (true) {
                            try {
                                InputStream next = messageProducer.next();
                                if (next == null) {
                                    return;
                                }
                                ClientStreamListenerImpl.this.observer.onMessage(ClientCallImpl.this.method.parseResponse(next));
                                next.close();
                            } catch (Throwable th) {
                                GrpcUtil.closeQuietly(messageProducer);
                                Status withDescription = Status.CANCELLED.withCause(th).withDescription("Failed to read message.");
                                ClientCallImpl.this.stream.cancel(withDescription);
                                ClientStreamListenerImpl.this.close(withDescription, new Metadata());
                                return;
                            }
                        }
                    }
                });
            } finally {
                PerfMark.stopTask("ClientStreamListener.messagesAvailable", ClientCallImpl.this.tag);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void close(Status status, Metadata metadata) {
            this.closed = true;
            ClientCallImpl.this.cancelListenersShouldBeRemoved = true;
            try {
                ClientCallImpl.this.closeObserver(this.observer, status, metadata);
            } finally {
                ClientCallImpl.this.removeContextListenerAndCancelDeadlineFuture();
                ClientCallImpl.this.channelCallsTracer.reportCallEnded(status.isOk());
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void closed(Status status, Metadata metadata) {
            closed(status, ClientStreamListener.RpcProgress.PROCESSED, metadata);
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void closed(Status status, ClientStreamListener.RpcProgress rpcProgress, Metadata metadata) {
            PerfMark.startTask("ClientStreamListener.closed", ClientCallImpl.this.tag);
            try {
                closedInternal(status, rpcProgress, metadata);
            } finally {
                PerfMark.stopTask("ClientStreamListener.closed", ClientCallImpl.this.tag);
            }
        }

        private void closedInternal(final Status status, ClientStreamListener.RpcProgress rpcProgress, final Metadata metadata) {
            Deadline effectiveDeadline = ClientCallImpl.this.effectiveDeadline();
            if (status.getCode() == Status.Code.CANCELLED && effectiveDeadline != null && effectiveDeadline.isExpired()) {
                InsightBuilder insightBuilder = new InsightBuilder();
                ClientCallImpl.this.stream.appendTimeoutInsight(insightBuilder);
                Status status2 = Status.DEADLINE_EXCEEDED;
                status = status2.augmentDescription("ClientCall was cancelled at or after deadline. " + insightBuilder);
                metadata = new Metadata();
            }
            final Link linkOut = PerfMark.linkOut();
            ClientCallImpl.this.callExecutor.execute(new ContextRunnable() { // from class: io.grpc.internal.ClientCallImpl.ClientStreamListenerImpl.1StreamClosed
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(ClientCallImpl.this.context);
                }

                @Override // io.grpc.internal.ContextRunnable
                public void runInContext() {
                    PerfMark.startTask("ClientCall$Listener.onClose", ClientCallImpl.this.tag);
                    PerfMark.linkIn(linkOut);
                    try {
                        runInternal();
                    } finally {
                        PerfMark.stopTask("ClientCall$Listener.onClose", ClientCallImpl.this.tag);
                    }
                }

                private void runInternal() {
                    if (ClientStreamListenerImpl.this.closed) {
                        return;
                    }
                    ClientStreamListenerImpl.this.close(status, metadata);
                }
            });
        }

        @Override // io.grpc.internal.StreamListener
        public void onReady() {
            if (ClientCallImpl.this.method.getType().clientSendsOneMessage()) {
                return;
            }
            PerfMark.startTask("ClientStreamListener.onReady", ClientCallImpl.this.tag);
            final Link linkOut = PerfMark.linkOut();
            try {
                ClientCallImpl.this.callExecutor.execute(new ContextRunnable() { // from class: io.grpc.internal.ClientCallImpl.ClientStreamListenerImpl.1StreamOnReady
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(ClientCallImpl.this.context);
                    }

                    @Override // io.grpc.internal.ContextRunnable
                    public void runInContext() {
                        PerfMark.startTask("ClientCall$Listener.onReady", ClientCallImpl.this.tag);
                        PerfMark.linkIn(linkOut);
                        try {
                            runInternal();
                        } finally {
                            PerfMark.stopTask("ClientCall$Listener.onReady", ClientCallImpl.this.tag);
                        }
                    }

                    private void runInternal() {
                        try {
                            ClientStreamListenerImpl.this.observer.onReady();
                        } catch (Throwable th) {
                            Status withDescription = Status.CANCELLED.withCause(th).withDescription("Failed to call onReady.");
                            ClientCallImpl.this.stream.cancel(withDescription);
                            ClientStreamListenerImpl.this.close(withDescription, new Metadata());
                        }
                    }
                });
            } finally {
                PerfMark.stopTask("ClientStreamListener.onReady", ClientCallImpl.this.tag);
            }
        }
    }
}
