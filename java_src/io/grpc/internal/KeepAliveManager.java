package io.grpc.internal;

import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.util.concurrent.MoreExecutors;
import io.grpc.Status;
import io.grpc.internal.ClientTransport;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes6.dex */
public class KeepAliveManager {
    private static final long MIN_KEEPALIVE_TIME_NANOS = TimeUnit.SECONDS.toNanos(10);
    private final boolean keepAliveDuringTransportIdle;
    private final KeepAlivePinger keepAlivePinger;
    private final long keepAliveTimeInNanos;
    private final long keepAliveTimeoutInNanos;
    private ScheduledFuture<?> pingFuture;
    private final ScheduledExecutorService scheduler;
    private final Runnable sendPing;
    private final Runnable shutdown;
    private ScheduledFuture<?> shutdownFuture;
    private State state;
    private final Stopwatch stopwatch;

    /* loaded from: classes6.dex */
    public interface KeepAlivePinger {
        void onPingTimeout();

        void ping();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public enum State {
        IDLE,
        PING_SCHEDULED,
        PING_DELAYED,
        PING_SENT,
        IDLE_AND_PING_SENT,
        DISCONNECTED
    }

    static {
        TimeUnit.MILLISECONDS.toNanos(10L);
    }

    public KeepAliveManager(KeepAlivePinger keepAlivePinger, ScheduledExecutorService scheduledExecutorService, long j, long j2, boolean z) {
        this(keepAlivePinger, scheduledExecutorService, Stopwatch.createUnstarted(), j, j2, z);
    }

    KeepAliveManager(KeepAlivePinger keepAlivePinger, ScheduledExecutorService scheduledExecutorService, Stopwatch stopwatch, long j, long j2, boolean z) {
        this.state = State.IDLE;
        this.shutdown = new LogExceptionRunnable(new Runnable() { // from class: io.grpc.internal.KeepAliveManager.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z2;
                synchronized (KeepAliveManager.this) {
                    State state = KeepAliveManager.this.state;
                    State state2 = State.DISCONNECTED;
                    if (state != state2) {
                        KeepAliveManager.this.state = state2;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    KeepAliveManager.this.keepAlivePinger.onPingTimeout();
                }
            }
        });
        this.sendPing = new LogExceptionRunnable(new Runnable() { // from class: io.grpc.internal.KeepAliveManager.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z2;
                synchronized (KeepAliveManager.this) {
                    KeepAliveManager.this.pingFuture = null;
                    State state = KeepAliveManager.this.state;
                    State state2 = State.PING_SCHEDULED;
                    if (state != state2) {
                        if (KeepAliveManager.this.state == State.PING_DELAYED) {
                            KeepAliveManager keepAliveManager = KeepAliveManager.this;
                            ScheduledExecutorService scheduledExecutorService2 = keepAliveManager.scheduler;
                            Runnable runnable = KeepAliveManager.this.sendPing;
                            long j3 = KeepAliveManager.this.keepAliveTimeInNanos;
                            Stopwatch stopwatch2 = KeepAliveManager.this.stopwatch;
                            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                            keepAliveManager.pingFuture = scheduledExecutorService2.schedule(runnable, j3 - stopwatch2.elapsed(timeUnit), timeUnit);
                            KeepAliveManager.this.state = state2;
                        }
                        z2 = false;
                    } else {
                        z2 = true;
                        KeepAliveManager.this.state = State.PING_SENT;
                        KeepAliveManager keepAliveManager2 = KeepAliveManager.this;
                        keepAliveManager2.shutdownFuture = keepAliveManager2.scheduler.schedule(KeepAliveManager.this.shutdown, KeepAliveManager.this.keepAliveTimeoutInNanos, TimeUnit.NANOSECONDS);
                    }
                }
                if (z2) {
                    KeepAliveManager.this.keepAlivePinger.ping();
                }
            }
        });
        this.keepAlivePinger = (KeepAlivePinger) Preconditions.checkNotNull(keepAlivePinger, "keepAlivePinger");
        this.scheduler = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService, "scheduler");
        this.stopwatch = (Stopwatch) Preconditions.checkNotNull(stopwatch, "stopwatch");
        this.keepAliveTimeInNanos = j;
        this.keepAliveTimeoutInNanos = j2;
        this.keepAliveDuringTransportIdle = z;
        stopwatch.reset().start();
    }

    public synchronized void onTransportStarted() {
        if (this.keepAliveDuringTransportIdle) {
            onTransportActive();
        }
    }

    public synchronized void onDataReceived() {
        this.stopwatch.reset().start();
        State state = this.state;
        State state2 = State.PING_SCHEDULED;
        if (state == state2) {
            this.state = State.PING_DELAYED;
        } else if (state == State.PING_SENT || state == State.IDLE_AND_PING_SENT) {
            ScheduledFuture<?> scheduledFuture = this.shutdownFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            if (this.state == State.IDLE_AND_PING_SENT) {
                this.state = State.IDLE;
                return;
            }
            this.state = state2;
            Preconditions.checkState(this.pingFuture == null, "There should be no outstanding pingFuture");
            this.pingFuture = this.scheduler.schedule(this.sendPing, this.keepAliveTimeInNanos, TimeUnit.NANOSECONDS);
        }
    }

    public synchronized void onTransportActive() {
        State state = this.state;
        if (state == State.IDLE) {
            this.state = State.PING_SCHEDULED;
            if (this.pingFuture == null) {
                ScheduledExecutorService scheduledExecutorService = this.scheduler;
                Runnable runnable = this.sendPing;
                long j = this.keepAliveTimeInNanos;
                Stopwatch stopwatch = this.stopwatch;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                this.pingFuture = scheduledExecutorService.schedule(runnable, j - stopwatch.elapsed(timeUnit), timeUnit);
            }
        } else if (state == State.IDLE_AND_PING_SENT) {
            this.state = State.PING_SENT;
        }
    }

    public synchronized void onTransportIdle() {
        if (this.keepAliveDuringTransportIdle) {
            return;
        }
        State state = this.state;
        if (state == State.PING_SCHEDULED || state == State.PING_DELAYED) {
            this.state = State.IDLE;
        }
        if (this.state == State.PING_SENT) {
            this.state = State.IDLE_AND_PING_SENT;
        }
    }

    public synchronized void onTransportTermination() {
        State state = this.state;
        State state2 = State.DISCONNECTED;
        if (state != state2) {
            this.state = state2;
            ScheduledFuture<?> scheduledFuture = this.shutdownFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            ScheduledFuture<?> scheduledFuture2 = this.pingFuture;
            if (scheduledFuture2 != null) {
                scheduledFuture2.cancel(false);
                this.pingFuture = null;
            }
        }
    }

    public static long clampKeepAliveTimeInNanos(long j) {
        return Math.max(j, MIN_KEEPALIVE_TIME_NANOS);
    }

    /* loaded from: classes6.dex */
    public static final class ClientKeepAlivePinger implements KeepAlivePinger {
        private final ConnectionClientTransport transport;

        public ClientKeepAlivePinger(ConnectionClientTransport connectionClientTransport) {
            this.transport = connectionClientTransport;
        }

        @Override // io.grpc.internal.KeepAliveManager.KeepAlivePinger
        public void ping() {
            this.transport.ping(new ClientTransport.PingCallback() { // from class: io.grpc.internal.KeepAliveManager.ClientKeepAlivePinger.1
                @Override // io.grpc.internal.ClientTransport.PingCallback
                public void onSuccess(long j) {
                }

                @Override // io.grpc.internal.ClientTransport.PingCallback
                public void onFailure(Throwable th) {
                    ClientKeepAlivePinger.this.transport.shutdownNow(Status.UNAVAILABLE.withDescription("Keepalive failed. The connection is likely gone"));
                }
            }, MoreExecutors.directExecutor());
        }

        @Override // io.grpc.internal.KeepAliveManager.KeepAlivePinger
        public void onPingTimeout() {
            this.transport.shutdownNow(Status.UNAVAILABLE.withDescription("Keepalive failed. The connection is likely gone"));
        }
    }
}
