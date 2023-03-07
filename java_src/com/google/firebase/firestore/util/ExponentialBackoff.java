package com.google.firebase.firestore.util;

import com.google.firebase.firestore.util.AsyncQueue;
import java.util.Date;
/* loaded from: classes3.dex */
public class ExponentialBackoff {
    private final double backoffFactor;
    private long currentBaseMs;
    private final long initialDelayMs;
    private long lastAttemptTime = new Date().getTime();
    private final long maxDelayMs;
    private long nextMaxDelayMs;
    private final AsyncQueue queue;
    private final AsyncQueue.TimerId timerId;
    private AsyncQueue.DelayedTask timerTask;

    public ExponentialBackoff(AsyncQueue asyncQueue, AsyncQueue.TimerId timerId, long j, double d, long j2) {
        this.queue = asyncQueue;
        this.timerId = timerId;
        this.initialDelayMs = j;
        this.backoffFactor = d;
        this.maxDelayMs = j2;
        this.nextMaxDelayMs = j2;
        reset();
    }

    public void reset() {
        this.currentBaseMs = 0L;
    }

    public void resetToMax() {
        this.currentBaseMs = this.nextMaxDelayMs;
    }

    public void setTemporaryMaxDelay(long j) {
        this.nextMaxDelayMs = j;
    }

    public void backoffAndRun(final Runnable runnable) {
        cancel();
        long jitterDelayMs = this.currentBaseMs + jitterDelayMs();
        long max = Math.max(0L, new Date().getTime() - this.lastAttemptTime);
        long max2 = Math.max(0L, jitterDelayMs - max);
        if (this.currentBaseMs > 0) {
            Logger.debug(ExponentialBackoff.class.getSimpleName(), "Backing off for %d ms (base delay: %d ms, delay with jitter: %d ms, last attempt: %d ms ago)", Long.valueOf(max2), Long.valueOf(this.currentBaseMs), Long.valueOf(jitterDelayMs), Long.valueOf(max));
        }
        this.timerTask = this.queue.enqueueAfterDelay(this.timerId, max2, new Runnable() { // from class: com.google.firebase.firestore.util.ExponentialBackoff$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ExponentialBackoff.this.lambda$backoffAndRun$0(runnable);
            }
        });
        long j = (long) (this.currentBaseMs * this.backoffFactor);
        this.currentBaseMs = j;
        long j2 = this.initialDelayMs;
        if (j < j2) {
            this.currentBaseMs = j2;
        } else {
            long j3 = this.nextMaxDelayMs;
            if (j > j3) {
                this.currentBaseMs = j3;
            }
        }
        this.nextMaxDelayMs = this.maxDelayMs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$backoffAndRun$0(Runnable runnable) {
        this.lastAttemptTime = new Date().getTime();
        runnable.run();
    }

    public void cancel() {
        AsyncQueue.DelayedTask delayedTask = this.timerTask;
        if (delayedTask != null) {
            delayedTask.cancel();
            this.timerTask = null;
        }
    }

    private long jitterDelayMs() {
        return (long) ((Math.random() - 0.5d) * this.currentBaseMs);
    }
}
