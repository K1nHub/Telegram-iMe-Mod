package com.google.firebase.firestore.util;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.firestore.util.AsyncQueue;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class AsyncQueue {
    private final ArrayList<TimerId> timerIdsToSkip = new ArrayList<>();
    private final ArrayList<DelayedTask> delayedTasks = new ArrayList<>();
    private final SynchronizedShutdownAwareExecutor executor = new SynchronizedShutdownAwareExecutor();

    /* loaded from: classes3.dex */
    public enum TimerId {
        ALL,
        LISTEN_STREAM_IDLE,
        LISTEN_STREAM_CONNECTION_BACKOFF,
        WRITE_STREAM_IDLE,
        WRITE_STREAM_CONNECTION_BACKOFF,
        ONLINE_STATE_TIMEOUT,
        GARBAGE_COLLECTION,
        RETRY_TRANSACTION,
        CONNECTIVITY_ATTEMPT_TIMER,
        INDEX_BACKFILL
    }

    /* loaded from: classes3.dex */
    public class DelayedTask {
        private ScheduledFuture scheduledFuture;
        private final Runnable task;

        private DelayedTask(TimerId timerId, long j, Runnable runnable) {
            this.task = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start(long j) {
            this.scheduledFuture = AsyncQueue.this.executor.schedule(new Runnable() { // from class: com.google.firebase.firestore.util.AsyncQueue$DelayedTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncQueue.DelayedTask.this.handleDelayElapsed();
                }
            }, j, TimeUnit.MILLISECONDS);
        }

        public void cancel() {
            AsyncQueue.this.verifyIsCurrentThread();
            ScheduledFuture scheduledFuture = this.scheduledFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                markDone();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleDelayElapsed() {
            AsyncQueue.this.verifyIsCurrentThread();
            if (this.scheduledFuture != null) {
                markDone();
                this.task.run();
            }
        }

        private void markDone() {
            Assert.hardAssert(this.scheduledFuture != null, "Caller should have verified scheduledFuture is non-null.", new Object[0]);
            this.scheduledFuture = null;
            AsyncQueue.this.removeDelayedTask(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class SynchronizedShutdownAwareExecutor implements Executor {
        private final ScheduledThreadPoolExecutor internalExecutor;
        private boolean isShuttingDown;
        private final Thread thread;

        /* loaded from: classes3.dex */
        private class DelayedStartFactory implements Runnable, ThreadFactory {
            private Runnable delegate;
            private final CountDownLatch latch;

            private DelayedStartFactory() {
                this.latch = new CountDownLatch(1);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.latch.await();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
                this.delegate.run();
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Assert.hardAssert(this.delegate == null, "Only one thread may be created in an AsyncQueue.", new Object[0]);
                this.delegate = runnable;
                this.latch.countDown();
                return SynchronizedShutdownAwareExecutor.this.thread;
            }
        }

        SynchronizedShutdownAwareExecutor() {
            DelayedStartFactory delayedStartFactory = new DelayedStartFactory();
            Thread newThread = java.util.concurrent.Executors.defaultThreadFactory().newThread(delayedStartFactory);
            this.thread = newThread;
            newThread.setName("FirestoreWorker");
            newThread.setDaemon(true);
            newThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.google.firebase.firestore.util.AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    AsyncQueue.SynchronizedShutdownAwareExecutor.this.lambda$new$0(thread, th);
                }
            });
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, delayedStartFactory, AsyncQueue.this) { // from class: com.google.firebase.firestore.util.AsyncQueue.SynchronizedShutdownAwareExecutor.1
                @Override // java.util.concurrent.ThreadPoolExecutor
                protected void afterExecute(Runnable runnable, Throwable th) {
                    super.afterExecute(runnable, th);
                    if (th == null && (runnable instanceof Future)) {
                        Future future = (Future) runnable;
                        try {
                            if (future.isDone()) {
                                future.get();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        } catch (CancellationException unused2) {
                        } catch (ExecutionException e) {
                            th = e.getCause();
                        }
                    }
                    if (th != null) {
                        AsyncQueue.this.panic(th);
                    }
                }
            };
            this.internalExecutor = scheduledThreadPoolExecutor;
            scheduledThreadPoolExecutor.setKeepAliveTime(3L, TimeUnit.SECONDS);
            this.isShuttingDown = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(Thread thread, Throwable th) {
            AsyncQueue.this.panic(th);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean isShuttingDown() {
            return this.isShuttingDown;
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(Runnable runnable) {
            if (!this.isShuttingDown) {
                this.internalExecutor.execute(runnable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T> Task<T> executeAndReportResult(final Callable<T> callable) {
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            try {
                execute(new Runnable() { // from class: com.google.firebase.firestore.util.AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AsyncQueue.SynchronizedShutdownAwareExecutor.lambda$executeAndReportResult$1(TaskCompletionSource.this, callable);
                    }
                });
            } catch (RejectedExecutionException unused) {
                Logger.warn(AsyncQueue.class.getSimpleName(), "Refused to enqueue task after panic", new Object[0]);
            }
            return taskCompletionSource.getTask();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$executeAndReportResult$1(TaskCompletionSource taskCompletionSource, Callable callable) {
            try {
                taskCompletionSource.setResult(callable.call());
            } catch (Exception e) {
                taskCompletionSource.setException(e);
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.isShuttingDown) {
                return null;
            }
            return this.internalExecutor.schedule(runnable, j, timeUnit);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void shutdownNow() {
            this.internalExecutor.shutdownNow();
        }
    }

    public Executor getExecutor() {
        return this.executor;
    }

    public void verifyIsCurrentThread() {
        Thread currentThread = Thread.currentThread();
        if (this.executor.thread != currentThread) {
            throw Assert.fail("We are running on the wrong thread. Expected to be on the AsyncQueue thread %s/%d but was %s/%d", this.executor.thread.getName(), Long.valueOf(this.executor.thread.getId()), currentThread.getName(), Long.valueOf(currentThread.getId()));
        }
    }

    public <T> Task<T> enqueue(Callable<T> callable) {
        return this.executor.executeAndReportResult(callable);
    }

    public Task<Void> enqueue(final Runnable runnable) {
        return enqueue(new Callable() { // from class: com.google.firebase.firestore.util.AsyncQueue$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void run;
                run = runnable.run();
                return run;
            }
        });
    }

    public boolean isShuttingDown() {
        return this.executor.isShuttingDown();
    }

    public void enqueueAndForget(Runnable runnable) {
        enqueue(runnable);
    }

    public DelayedTask enqueueAfterDelay(TimerId timerId, long j, Runnable runnable) {
        if (this.timerIdsToSkip.contains(timerId)) {
            j = 0;
        }
        DelayedTask createAndScheduleDelayedTask = createAndScheduleDelayedTask(timerId, j, runnable);
        this.delayedTasks.add(createAndScheduleDelayedTask);
        return createAndScheduleDelayedTask;
    }

    public void panic(final Throwable th) {
        this.executor.shutdownNow();
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.firebase.firestore.util.AsyncQueue$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AsyncQueue.lambda$panic$3(th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$panic$3(Throwable th) {
        if (th instanceof OutOfMemoryError) {
            OutOfMemoryError outOfMemoryError = new OutOfMemoryError("Firestore (23.0.4) ran out of memory. Check your queries to make sure they are not loading an excessive amount of data.");
            outOfMemoryError.initCause(th);
            throw outOfMemoryError;
        }
        throw new RuntimeException("Internal error in Cloud Firestore (23.0.4).", th);
    }

    private DelayedTask createAndScheduleDelayedTask(TimerId timerId, long j, Runnable runnable) {
        DelayedTask delayedTask = new DelayedTask(timerId, System.currentTimeMillis() + j, runnable);
        delayedTask.start(j);
        return delayedTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeDelayedTask(DelayedTask delayedTask) {
        Assert.hardAssert(this.delayedTasks.remove(delayedTask), "Delayed task not found.", new Object[0]);
    }
}
