package io.grpc.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import io.grpc.ClientStreamTracer;
import io.grpc.Compressor;
import io.grpc.Deadline;
import io.grpc.DecompressorRegistry;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.HedgingPolicy;
import io.grpc.internal.RetryPolicy;
import io.grpc.internal.StreamListener;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class RetriableStream<ReqT> implements ClientStream {
    private static final Status CANCELLED_BECAUSE_COMMITTED;
    static final Metadata.Key<String> GRPC_PREVIOUS_RPC_ATTEMPTS;
    static final Metadata.Key<String> GRPC_RETRY_PUSHBACK_MS;
    private static Random random;
    private final Executor callExecutor;
    private final long channelBufferLimit;
    private final ChannelBufferMeter channelBufferUsed;
    private final Metadata headers;
    private HedgingPolicy hedgingPolicy;
    private final HedgingPolicy.Provider hedgingPolicyProvider;
    private boolean isHedging;
    private ClientStreamListener masterListener;
    private final MethodDescriptor<ReqT, ?> method;
    private long nextBackoffIntervalNanos;
    private final long perRpcBufferLimit;
    private long perRpcBufferUsed;
    private RetryPolicy retryPolicy;
    private final RetryPolicy.Provider retryPolicyProvider;
    private final ScheduledExecutorService scheduledExecutorService;
    private FutureCanceller scheduledHedging;
    private FutureCanceller scheduledRetry;
    private final Throttle throttle;
    private final Object lock = new Object();
    private final InsightBuilder closedSubstreamsInsight = new InsightBuilder();
    private volatile State state = new State(new ArrayList(8), Collections.emptyList(), null, null, false, false, false, 0);
    private final AtomicBoolean noMoreTransparentRetry = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public interface BufferEntry {
        void runWith(Substream substream);
    }

    abstract ClientStream newSubstream(ClientStreamTracer.Factory factory, Metadata metadata);

    abstract void postCommit();

    abstract Status prestart();

    static {
        Metadata.AsciiMarshaller<String> asciiMarshaller = Metadata.ASCII_STRING_MARSHALLER;
        GRPC_PREVIOUS_RPC_ATTEMPTS = Metadata.Key.m685of("grpc-previous-rpc-attempts", asciiMarshaller);
        GRPC_RETRY_PUSHBACK_MS = Metadata.Key.m685of("grpc-retry-pushback-ms", asciiMarshaller);
        CANCELLED_BECAUSE_COMMITTED = Status.CANCELLED.withDescription("Stream thrown away because RetriableStream committed");
        random = new Random();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RetriableStream(MethodDescriptor<ReqT, ?> methodDescriptor, Metadata metadata, ChannelBufferMeter channelBufferMeter, long j, long j2, Executor executor, ScheduledExecutorService scheduledExecutorService, RetryPolicy.Provider provider, HedgingPolicy.Provider provider2, Throttle throttle) {
        this.method = methodDescriptor;
        this.channelBufferUsed = channelBufferMeter;
        this.perRpcBufferLimit = j;
        this.channelBufferLimit = j2;
        this.callExecutor = executor;
        this.scheduledExecutorService = scheduledExecutorService;
        this.headers = metadata;
        this.retryPolicyProvider = (RetryPolicy.Provider) Preconditions.checkNotNull(provider, "retryPolicyProvider");
        this.hedgingPolicyProvider = (HedgingPolicy.Provider) Preconditions.checkNotNull(provider2, "hedgingPolicyProvider");
        this.throttle = throttle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable commit(final Substream substream) {
        final Future<?> future;
        final Future<?> future2;
        synchronized (this.lock) {
            if (this.state.winningSubstream != null) {
                return null;
            }
            final Collection<Substream> collection = this.state.drainedSubstreams;
            this.state = this.state.committed(substream);
            this.channelBufferUsed.addAndGet(-this.perRpcBufferUsed);
            FutureCanceller futureCanceller = this.scheduledRetry;
            if (futureCanceller != null) {
                Future<?> markCancelled = futureCanceller.markCancelled();
                this.scheduledRetry = null;
                future = markCancelled;
            } else {
                future = null;
            }
            FutureCanceller futureCanceller2 = this.scheduledHedging;
            if (futureCanceller2 != null) {
                Future<?> markCancelled2 = futureCanceller2.markCancelled();
                this.scheduledHedging = null;
                future2 = markCancelled2;
            } else {
                future2 = null;
            }
            return new Runnable() { // from class: io.grpc.internal.RetriableStream.1CommitTask
                @Override // java.lang.Runnable
                public void run() {
                    for (Substream substream2 : collection) {
                        if (substream2 != substream) {
                            substream2.stream.cancel(RetriableStream.CANCELLED_BECAUSE_COMMITTED);
                        }
                    }
                    Future future3 = future;
                    if (future3 != null) {
                        future3.cancel(false);
                    }
                    Future future4 = future2;
                    if (future4 != null) {
                        future4.cancel(false);
                    }
                    RetriableStream.this.postCommit();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void commitAndRun(Substream substream) {
        Runnable commit = commit(substream);
        if (commit != null) {
            commit.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Substream createSubstream(int i) {
        Substream substream = new Substream(i);
        final BufferSizeTracer bufferSizeTracer = new BufferSizeTracer(substream);
        substream.stream = newSubstream(new ClientStreamTracer.Factory(this) { // from class: io.grpc.internal.RetriableStream.1
            @Override // io.grpc.ClientStreamTracer.Factory
            public ClientStreamTracer newClientStreamTracer(ClientStreamTracer.StreamInfo streamInfo, Metadata metadata) {
                return bufferSizeTracer;
            }
        }, updateHeaders(this.headers, i));
        return substream;
    }

    final Metadata updateHeaders(Metadata metadata, int i) {
        Metadata metadata2 = new Metadata();
        metadata2.merge(metadata);
        if (i > 0) {
            metadata2.put(GRPC_PREVIOUS_RPC_ATTEMPTS, String.valueOf(i));
        }
        return metadata2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drain(Substream substream) {
        ArrayList<BufferEntry> arrayList = null;
        int i = 0;
        while (true) {
            synchronized (this.lock) {
                State state = this.state;
                Substream substream2 = state.winningSubstream;
                if (substream2 == null || substream2 == substream) {
                    if (i == state.buffer.size()) {
                        this.state = state.substreamDrained(substream);
                        return;
                    } else if (substream.closed) {
                        return;
                    } else {
                        int min = Math.min(i + 128, state.buffer.size());
                        if (arrayList == null) {
                            arrayList = new ArrayList(state.buffer.subList(i, min));
                        } else {
                            arrayList.clear();
                            arrayList.addAll(state.buffer.subList(i, min));
                        }
                        for (BufferEntry bufferEntry : arrayList) {
                            State state2 = this.state;
                            Substream substream3 = state2.winningSubstream;
                            if (substream3 == null || substream3 == substream) {
                                if (state2.cancelled) {
                                    Preconditions.checkState(substream3 == substream, "substream should be CANCELLED_BECAUSE_COMMITTED already");
                                    return;
                                }
                                bufferEntry.runWith(substream);
                            }
                        }
                        i = min;
                    }
                } else {
                    substream.stream.cancel(CANCELLED_BECAUSE_COMMITTED);
                    return;
                }
            }
        }
    }

    @Override // io.grpc.internal.ClientStream
    public final void start(ClientStreamListener clientStreamListener) {
        Throttle throttle;
        this.masterListener = clientStreamListener;
        Status prestart = prestart();
        if (prestart != null) {
            cancel(prestart);
            return;
        }
        synchronized (this.lock) {
            this.state.buffer.add(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1StartEntry
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.start(new Sublistener(substream));
                }
            });
        }
        Substream createSubstream = createSubstream(0);
        Preconditions.checkState(this.hedgingPolicy == null, "hedgingPolicy has been initialized unexpectedly");
        HedgingPolicy hedgingPolicy = this.hedgingPolicyProvider.get();
        this.hedgingPolicy = hedgingPolicy;
        if (!HedgingPolicy.DEFAULT.equals(hedgingPolicy)) {
            this.isHedging = true;
            this.retryPolicy = RetryPolicy.DEFAULT;
            FutureCanceller futureCanceller = null;
            synchronized (this.lock) {
                this.state = this.state.addActiveHedge(createSubstream);
                if (hasPotentialHedging(this.state) && ((throttle = this.throttle) == null || throttle.isAboveThreshold())) {
                    futureCanceller = new FutureCanceller(this.lock);
                    this.scheduledHedging = futureCanceller;
                }
            }
            if (futureCanceller != null) {
                futureCanceller.setFuture(this.scheduledExecutorService.schedule(new HedgingRunnable(futureCanceller), this.hedgingPolicy.hedgingDelayNanos, TimeUnit.NANOSECONDS));
            }
        }
        drain(createSubstream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushbackHedging(Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            freezeHedging();
            return;
        }
        synchronized (this.lock) {
            FutureCanceller futureCanceller = this.scheduledHedging;
            if (futureCanceller == null) {
                return;
            }
            Future<?> markCancelled = futureCanceller.markCancelled();
            FutureCanceller futureCanceller2 = new FutureCanceller(this.lock);
            this.scheduledHedging = futureCanceller2;
            if (markCancelled != null) {
                markCancelled.cancel(false);
            }
            futureCanceller2.setFuture(this.scheduledExecutorService.schedule(new HedgingRunnable(futureCanceller2), num.intValue(), TimeUnit.MILLISECONDS));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class HedgingRunnable implements Runnable {
        final FutureCanceller scheduledHedgingRef;

        HedgingRunnable(FutureCanceller futureCanceller) {
            this.scheduledHedgingRef = futureCanceller;
        }

        @Override // java.lang.Runnable
        public void run() {
            RetriableStream.this.callExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.HedgingRunnable.1
                @Override // java.lang.Runnable
                public void run() {
                    FutureCanceller futureCanceller;
                    boolean z;
                    RetriableStream retriableStream = RetriableStream.this;
                    Substream createSubstream = retriableStream.createSubstream(retriableStream.state.hedgingAttemptCount);
                    synchronized (RetriableStream.this.lock) {
                        futureCanceller = null;
                        z = false;
                        if (HedgingRunnable.this.scheduledHedgingRef.isCancelled()) {
                            z = true;
                        } else {
                            RetriableStream retriableStream2 = RetriableStream.this;
                            retriableStream2.state = retriableStream2.state.addActiveHedge(createSubstream);
                            RetriableStream retriableStream3 = RetriableStream.this;
                            if (retriableStream3.hasPotentialHedging(retriableStream3.state) && (RetriableStream.this.throttle == null || RetriableStream.this.throttle.isAboveThreshold())) {
                                RetriableStream retriableStream4 = RetriableStream.this;
                                futureCanceller = new FutureCanceller(retriableStream4.lock);
                                retriableStream4.scheduledHedging = futureCanceller;
                            } else {
                                RetriableStream retriableStream5 = RetriableStream.this;
                                retriableStream5.state = retriableStream5.state.freezeHedging();
                                RetriableStream.this.scheduledHedging = null;
                            }
                        }
                    }
                    if (!z) {
                        if (futureCanceller != null) {
                            futureCanceller.setFuture(RetriableStream.this.scheduledExecutorService.schedule(new HedgingRunnable(futureCanceller), RetriableStream.this.hedgingPolicy.hedgingDelayNanos, TimeUnit.NANOSECONDS));
                        }
                        RetriableStream.this.drain(createSubstream);
                        return;
                    }
                    createSubstream.stream.cancel(Status.CANCELLED.withDescription("Unneeded hedging"));
                }
            });
        }
    }

    @Override // io.grpc.internal.ClientStream
    public final void cancel(Status status) {
        Substream substream = new Substream(0);
        substream.stream = new NoopClientStream();
        Runnable commit = commit(substream);
        if (commit != null) {
            this.masterListener.closed(status, new Metadata());
            commit.run();
            return;
        }
        this.state.winningSubstream.stream.cancel(status);
        synchronized (this.lock) {
            this.state = this.state.cancelled();
        }
    }

    private void delayOrExecute(BufferEntry bufferEntry) {
        Collection<Substream> collection;
        synchronized (this.lock) {
            if (!this.state.passThrough) {
                this.state.buffer.add(bufferEntry);
            }
            collection = this.state.drainedSubstreams;
        }
        for (Substream substream : collection) {
            bufferEntry.runWith(substream);
        }
    }

    @Override // io.grpc.internal.Stream
    public final void writeMessage(InputStream inputStream) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void sendMessage(final ReqT reqt) {
        State state = this.state;
        if (state.passThrough) {
            state.winningSubstream.stream.writeMessage(this.method.streamRequest(reqt));
        } else {
            delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1SendMessageEntry
                /* JADX WARN: Multi-variable type inference failed */
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.writeMessage(RetriableStream.this.method.streamRequest(reqt));
                }
            });
        }
    }

    @Override // io.grpc.internal.Stream
    public final void request(final int i) {
        State state = this.state;
        if (state.passThrough) {
            state.winningSubstream.stream.request(i);
        } else {
            delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1RequestEntry
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.request(i);
                }
            });
        }
    }

    @Override // io.grpc.internal.Stream
    public final void flush() {
        State state = this.state;
        if (state.passThrough) {
            state.winningSubstream.stream.flush();
        } else {
            delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1FlushEntry
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.flush();
                }
            });
        }
    }

    @Override // io.grpc.internal.Stream
    public final void setCompressor(final Compressor compressor) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1CompressorEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setCompressor(compressor);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setFullStreamDecompression(final boolean z) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1FullStreamDecompressionEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setFullStreamDecompression(z);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void halfClose() {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1HalfCloseEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.halfClose();
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setAuthority(final String str) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1AuthorityEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setAuthority(str);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setDecompressorRegistry(final DecompressorRegistry decompressorRegistry) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1DecompressorRegistryEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setDecompressorRegistry(decompressorRegistry);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setMaxInboundMessageSize(final int i) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1MaxInboundMessageSizeEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setMaxInboundMessageSize(i);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setMaxOutboundMessageSize(final int i) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1MaxOutboundMessageSizeEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setMaxOutboundMessageSize(i);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setDeadline(final Deadline deadline) {
        delayOrExecute(new BufferEntry(this) { // from class: io.grpc.internal.RetriableStream.1DeadlineEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setDeadline(deadline);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public void appendTimeoutInsight(InsightBuilder insightBuilder) {
        State state;
        synchronized (this.lock) {
            insightBuilder.appendKeyValue("closed", this.closedSubstreamsInsight);
            state = this.state;
        }
        if (state.winningSubstream != null) {
            InsightBuilder insightBuilder2 = new InsightBuilder();
            state.winningSubstream.stream.appendTimeoutInsight(insightBuilder2);
            insightBuilder.appendKeyValue("committed", insightBuilder2);
            return;
        }
        InsightBuilder insightBuilder3 = new InsightBuilder();
        for (Substream substream : state.drainedSubstreams) {
            InsightBuilder insightBuilder4 = new InsightBuilder();
            substream.stream.appendTimeoutInsight(insightBuilder4);
            insightBuilder3.append(insightBuilder4);
        }
        insightBuilder.appendKeyValue(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, insightBuilder3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasPotentialHedging(State state) {
        return state.winningSubstream == null && state.hedgingAttemptCount < this.hedgingPolicy.maxAttempts && !state.hedgingFrozen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void freezeHedging() {
        Future<?> future;
        synchronized (this.lock) {
            FutureCanceller futureCanceller = this.scheduledHedging;
            future = null;
            if (futureCanceller != null) {
                Future<?> markCancelled = futureCanceller.markCancelled();
                this.scheduledHedging = null;
                future = markCancelled;
            }
            this.state = this.state.freezeHedging();
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    /* loaded from: classes4.dex */
    private final class Sublistener implements ClientStreamListener {
        final Substream substream;

        Sublistener(Substream substream) {
            this.substream = substream;
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void headersRead(Metadata metadata) {
            RetriableStream.this.commitAndRun(this.substream);
            if (RetriableStream.this.state.winningSubstream == this.substream) {
                RetriableStream.this.masterListener.headersRead(metadata);
                if (RetriableStream.this.throttle != null) {
                    RetriableStream.this.throttle.onSuccess();
                }
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void closed(Status status, Metadata metadata) {
            closed(status, ClientStreamListener.RpcProgress.PROCESSED, metadata);
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void closed(Status status, ClientStreamListener.RpcProgress rpcProgress, Metadata metadata) {
            FutureCanceller futureCanceller;
            synchronized (RetriableStream.this.lock) {
                RetriableStream retriableStream = RetriableStream.this;
                retriableStream.state = retriableStream.state.substreamClosed(this.substream);
                RetriableStream.this.closedSubstreamsInsight.append(status.getCode());
            }
            Substream substream = this.substream;
            if (substream.bufferLimitExceeded) {
                RetriableStream.this.commitAndRun(substream);
                if (RetriableStream.this.state.winningSubstream == this.substream) {
                    RetriableStream.this.masterListener.closed(status, metadata);
                    return;
                }
                return;
            }
            if (RetriableStream.this.state.winningSubstream == null) {
                boolean z = false;
                if (rpcProgress == ClientStreamListener.RpcProgress.REFUSED && RetriableStream.this.noMoreTransparentRetry.compareAndSet(false, true)) {
                    final Substream createSubstream = RetriableStream.this.createSubstream(this.substream.previousAttemptCount);
                    if (RetriableStream.this.isHedging) {
                        synchronized (RetriableStream.this.lock) {
                            RetriableStream retriableStream2 = RetriableStream.this;
                            retriableStream2.state = retriableStream2.state.replaceActiveHedge(this.substream, createSubstream);
                            RetriableStream retriableStream3 = RetriableStream.this;
                            if (!retriableStream3.hasPotentialHedging(retriableStream3.state) && RetriableStream.this.state.activeHedges.size() == 1) {
                                z = true;
                            }
                        }
                        if (z) {
                            RetriableStream.this.commitAndRun(createSubstream);
                        }
                    } else {
                        if (RetriableStream.this.retryPolicy == null) {
                            RetriableStream retriableStream4 = RetriableStream.this;
                            retriableStream4.retryPolicy = retriableStream4.retryPolicyProvider.get();
                        }
                        if (RetriableStream.this.retryPolicy.maxAttempts == 1) {
                            RetriableStream.this.commitAndRun(createSubstream);
                        }
                    }
                    RetriableStream.this.callExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RetriableStream.this.drain(createSubstream);
                        }
                    });
                    return;
                }
                if (rpcProgress == ClientStreamListener.RpcProgress.DROPPED) {
                    if (RetriableStream.this.isHedging) {
                        RetriableStream.this.freezeHedging();
                    }
                } else {
                    RetriableStream.this.noMoreTransparentRetry.set(true);
                    if (RetriableStream.this.retryPolicy == null) {
                        RetriableStream retriableStream5 = RetriableStream.this;
                        retriableStream5.retryPolicy = retriableStream5.retryPolicyProvider.get();
                        RetriableStream retriableStream6 = RetriableStream.this;
                        retriableStream6.nextBackoffIntervalNanos = retriableStream6.retryPolicy.initialBackoffNanos;
                    }
                    RetryPlan makeRetryDecision = makeRetryDecision(status, metadata);
                    if (makeRetryDecision.shouldRetry) {
                        synchronized (RetriableStream.this.lock) {
                            RetriableStream retriableStream7 = RetriableStream.this;
                            futureCanceller = new FutureCanceller(retriableStream7.lock);
                            retriableStream7.scheduledRetry = futureCanceller;
                        }
                        futureCanceller.setFuture(RetriableStream.this.scheduledExecutorService.schedule(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.2
                            @Override // java.lang.Runnable
                            public void run() {
                                RetriableStream.this.callExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Sublistener sublistener = Sublistener.this;
                                        RetriableStream.this.drain(RetriableStream.this.createSubstream(sublistener.substream.previousAttemptCount + 1));
                                    }
                                });
                            }
                        }, makeRetryDecision.backoffNanos, TimeUnit.NANOSECONDS));
                        return;
                    }
                    z = makeRetryDecision.isFatal;
                    RetriableStream.this.pushbackHedging(makeRetryDecision.hedgingPushbackMillis);
                }
                if (RetriableStream.this.isHedging) {
                    synchronized (RetriableStream.this.lock) {
                        RetriableStream retriableStream8 = RetriableStream.this;
                        retriableStream8.state = retriableStream8.state.removeActiveHedge(this.substream);
                        if (!z) {
                            RetriableStream retriableStream9 = RetriableStream.this;
                            if (retriableStream9.hasPotentialHedging(retriableStream9.state) || !RetriableStream.this.state.activeHedges.isEmpty()) {
                                return;
                            }
                        }
                    }
                }
            }
            RetriableStream.this.commitAndRun(this.substream);
            if (RetriableStream.this.state.winningSubstream == this.substream) {
                RetriableStream.this.masterListener.closed(status, metadata);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00e7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private io.grpc.internal.RetriableStream.RetryPlan makeRetryDecision(io.grpc.Status r13, io.grpc.Metadata r14) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.RetriableStream.Sublistener.makeRetryDecision(io.grpc.Status, io.grpc.Metadata):io.grpc.internal.RetriableStream$RetryPlan");
        }

        @Override // io.grpc.internal.StreamListener
        public void messagesAvailable(StreamListener.MessageProducer messageProducer) {
            State state = RetriableStream.this.state;
            Preconditions.checkState(state.winningSubstream != null, "Headers should be received prior to messages.");
            if (state.winningSubstream != this.substream) {
                return;
            }
            RetriableStream.this.masterListener.messagesAvailable(messageProducer);
        }

        @Override // io.grpc.internal.StreamListener
        public void onReady() {
            if (RetriableStream.this.state.drainedSubstreams.contains(this.substream)) {
                RetriableStream.this.masterListener.onReady();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class State {
        final Collection<Substream> activeHedges;
        final List<BufferEntry> buffer;
        final boolean cancelled;
        final Collection<Substream> drainedSubstreams;
        final int hedgingAttemptCount;
        final boolean hedgingFrozen;
        final boolean passThrough;
        final Substream winningSubstream;

        State(List<BufferEntry> list, Collection<Substream> collection, Collection<Substream> collection2, Substream substream, boolean z, boolean z2, boolean z3, int i) {
            this.buffer = list;
            this.drainedSubstreams = (Collection) Preconditions.checkNotNull(collection, "drainedSubstreams");
            this.winningSubstream = substream;
            this.activeHedges = collection2;
            this.cancelled = z;
            this.passThrough = z2;
            this.hedgingFrozen = z3;
            this.hedgingAttemptCount = i;
            boolean z4 = false;
            Preconditions.checkState(!z2 || list == null, "passThrough should imply buffer is null");
            Preconditions.checkState((z2 && substream == null) ? false : true, "passThrough should imply winningSubstream != null");
            Preconditions.checkState(!z2 || (collection.size() == 1 && collection.contains(substream)) || (collection.size() == 0 && substream.closed), "passThrough should imply winningSubstream is drained");
            Preconditions.checkState((z && substream == null) ? z4 : true, "cancelled should imply committed");
        }

        State cancelled() {
            return new State(this.buffer, this.drainedSubstreams, this.activeHedges, this.winningSubstream, true, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        State substreamDrained(Substream substream) {
            Collection unmodifiableCollection;
            Preconditions.checkState(!this.passThrough, "Already passThrough");
            if (substream.closed) {
                unmodifiableCollection = this.drainedSubstreams;
            } else if (this.drainedSubstreams.isEmpty()) {
                unmodifiableCollection = Collections.singletonList(substream);
            } else {
                ArrayList arrayList = new ArrayList(this.drainedSubstreams);
                arrayList.add(substream);
                unmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            Collection collection = unmodifiableCollection;
            Substream substream2 = this.winningSubstream;
            boolean z = substream2 != null;
            List<BufferEntry> list = this.buffer;
            if (z) {
                Preconditions.checkState(substream2 == substream, "Another RPC attempt has already committed");
                list = null;
            }
            return new State(list, collection, this.activeHedges, this.winningSubstream, this.cancelled, z, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        State substreamClosed(Substream substream) {
            substream.closed = true;
            if (this.drainedSubstreams.contains(substream)) {
                ArrayList arrayList = new ArrayList(this.drainedSubstreams);
                arrayList.remove(substream);
                return new State(this.buffer, Collections.unmodifiableCollection(arrayList), this.activeHedges, this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
            }
            return this;
        }

        State committed(Substream substream) {
            List<BufferEntry> list;
            Collection emptyList;
            boolean z;
            Preconditions.checkState(this.winningSubstream == null, "Already committed");
            List<BufferEntry> list2 = this.buffer;
            if (this.drainedSubstreams.contains(substream)) {
                list = null;
                z = true;
                emptyList = Collections.singleton(substream);
            } else {
                list = list2;
                emptyList = Collections.emptyList();
                z = false;
            }
            return new State(list, emptyList, this.activeHedges, substream, this.cancelled, z, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        State freezeHedging() {
            return this.hedgingFrozen ? this : new State(this.buffer, this.drainedSubstreams, this.activeHedges, this.winningSubstream, this.cancelled, this.passThrough, true, this.hedgingAttemptCount);
        }

        State addActiveHedge(Substream substream) {
            Collection unmodifiableCollection;
            Preconditions.checkState(!this.hedgingFrozen, "hedging frozen");
            Preconditions.checkState(this.winningSubstream == null, "already committed");
            if (this.activeHedges == null) {
                unmodifiableCollection = Collections.singleton(substream);
            } else {
                ArrayList arrayList = new ArrayList(this.activeHedges);
                arrayList.add(substream);
                unmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            return new State(this.buffer, this.drainedSubstreams, unmodifiableCollection, this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount + 1);
        }

        State removeActiveHedge(Substream substream) {
            ArrayList arrayList = new ArrayList(this.activeHedges);
            arrayList.remove(substream);
            return new State(this.buffer, this.drainedSubstreams, Collections.unmodifiableCollection(arrayList), this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        State replaceActiveHedge(Substream substream, Substream substream2) {
            ArrayList arrayList = new ArrayList(this.activeHedges);
            arrayList.remove(substream);
            arrayList.add(substream2);
            return new State(this.buffer, this.drainedSubstreams, Collections.unmodifiableCollection(arrayList), this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class Substream {
        boolean bufferLimitExceeded;
        boolean closed;
        final int previousAttemptCount;
        ClientStream stream;

        Substream(int i) {
            this.previousAttemptCount = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class BufferSizeTracer extends ClientStreamTracer {
        long bufferNeeded;
        private final Substream substream;

        BufferSizeTracer(Substream substream) {
            this.substream = substream;
        }

        @Override // io.grpc.StreamTracer
        public void outboundWireSize(long j) {
            if (RetriableStream.this.state.winningSubstream != null) {
                return;
            }
            synchronized (RetriableStream.this.lock) {
                if (RetriableStream.this.state.winningSubstream == null && !this.substream.closed) {
                    long j2 = this.bufferNeeded + j;
                    this.bufferNeeded = j2;
                    if (j2 <= RetriableStream.this.perRpcBufferUsed) {
                        return;
                    }
                    if (this.bufferNeeded <= RetriableStream.this.perRpcBufferLimit) {
                        long addAndGet = RetriableStream.this.channelBufferUsed.addAndGet(this.bufferNeeded - RetriableStream.this.perRpcBufferUsed);
                        RetriableStream.this.perRpcBufferUsed = this.bufferNeeded;
                        if (addAndGet > RetriableStream.this.channelBufferLimit) {
                            this.substream.bufferLimitExceeded = true;
                        }
                    } else {
                        this.substream.bufferLimitExceeded = true;
                    }
                    Substream substream = this.substream;
                    Runnable commit = substream.bufferLimitExceeded ? RetriableStream.this.commit(substream) : null;
                    if (commit != null) {
                        commit.run();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class ChannelBufferMeter {
        private final AtomicLong bufferUsed = new AtomicLong();

        long addAndGet(long j) {
            return this.bufferUsed.addAndGet(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class Throttle {
        final int maxTokens;
        final int threshold;
        final AtomicInteger tokenCount;
        final int tokenRatio;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Throttle(float f, float f2) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.tokenCount = atomicInteger;
            this.tokenRatio = (int) (f2 * 1000.0f);
            int i = (int) (f * 1000.0f);
            this.maxTokens = i;
            this.threshold = i / 2;
            atomicInteger.set(i);
        }

        boolean isAboveThreshold() {
            return this.tokenCount.get() > this.threshold;
        }

        boolean onQualifiedFailureThenCheckIsAboveThreshold() {
            int i;
            int i2;
            do {
                i = this.tokenCount.get();
                if (i == 0) {
                    return false;
                }
                i2 = i - 1000;
            } while (!this.tokenCount.compareAndSet(i, Math.max(i2, 0)));
            return i2 > this.threshold;
        }

        void onSuccess() {
            int i;
            int i2;
            do {
                i = this.tokenCount.get();
                i2 = this.maxTokens;
                if (i == i2) {
                    return;
                }
            } while (!this.tokenCount.compareAndSet(i, Math.min(this.tokenRatio + i, i2)));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Throttle) {
                Throttle throttle = (Throttle) obj;
                return this.maxTokens == throttle.maxTokens && this.tokenRatio == throttle.tokenRatio;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(Integer.valueOf(this.maxTokens), Integer.valueOf(this.tokenRatio));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class RetryPlan {
        final long backoffNanos;
        final Integer hedgingPushbackMillis;
        final boolean isFatal;
        final boolean shouldRetry;

        RetryPlan(boolean z, boolean z2, long j, Integer num) {
            this.shouldRetry = z;
            this.isFatal = z2;
            this.backoffNanos = j;
            this.hedgingPushbackMillis = num;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class FutureCanceller {
        boolean cancelled;
        Future<?> future;
        final Object lock;

        FutureCanceller(Object obj) {
            this.lock = obj;
        }

        void setFuture(Future<?> future) {
            synchronized (this.lock) {
                if (!this.cancelled) {
                    this.future = future;
                }
            }
        }

        Future<?> markCancelled() {
            this.cancelled = true;
            return this.future;
        }

        boolean isCancelled() {
            return this.cancelled;
        }
    }
}
