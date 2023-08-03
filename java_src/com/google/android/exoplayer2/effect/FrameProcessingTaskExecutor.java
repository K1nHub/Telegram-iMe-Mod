package com.google.android.exoplayer2.effect;

import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.FrameProcessor;
import com.google.android.exoplayer2.util.GlUtil;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FrameProcessingTaskExecutor {
    private final FrameProcessor.Listener listener;
    private final ExecutorService singleThreadExecutorService;
    private final ConcurrentLinkedQueue<Future<?>> futures = new ConcurrentLinkedQueue<>();
    private final ConcurrentLinkedQueue<FrameProcessingTask> highPriorityTasks = new ConcurrentLinkedQueue<>();
    private final AtomicBoolean shouldCancelTasks = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$submitWithHighPriority$0() throws FrameProcessingException, GlUtil.GlException {
    }

    public FrameProcessingTaskExecutor(ExecutorService executorService, FrameProcessor.Listener listener) {
        this.singleThreadExecutorService = executorService;
        this.listener = listener;
    }

    public void submit(FrameProcessingTask frameProcessingTask) {
        if (this.shouldCancelTasks.get()) {
            return;
        }
        try {
            this.futures.add(wrapTaskAndSubmitToExecutorService(frameProcessingTask));
        } catch (RejectedExecutionException e) {
            handleException(e);
        }
    }

    public void submitWithHighPriority(FrameProcessingTask frameProcessingTask) {
        if (this.shouldCancelTasks.get()) {
            return;
        }
        this.highPriorityTasks.add(frameProcessingTask);
        submit(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.FrameProcessingTaskExecutor$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
            public final void run() {
                FrameProcessingTaskExecutor.lambda$submitWithHighPriority$0();
            }
        });
    }

    public void release(FrameProcessingTask frameProcessingTask, long j) throws InterruptedException {
        this.shouldCancelTasks.getAndSet(true);
        cancelNonStartedTasks();
        Future<?> wrapTaskAndSubmitToExecutorService = wrapTaskAndSubmitToExecutorService(frameProcessingTask);
        this.singleThreadExecutorService.shutdown();
        try {
            if (!this.singleThreadExecutorService.awaitTermination(j, TimeUnit.MILLISECONDS)) {
                this.listener.onFrameProcessingError(new FrameProcessingException("Release timed out"));
            }
            wrapTaskAndSubmitToExecutorService.get();
        } catch (ExecutionException e) {
            this.listener.onFrameProcessingError(new FrameProcessingException(e));
        }
    }

    private Future<?> wrapTaskAndSubmitToExecutorService(final FrameProcessingTask frameProcessingTask) {
        return this.singleThreadExecutorService.submit(new Runnable() { // from class: com.google.android.exoplayer2.effect.FrameProcessingTaskExecutor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FrameProcessingTaskExecutor.this.lambda$wrapTaskAndSubmitToExecutorService$1(frameProcessingTask);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$wrapTaskAndSubmitToExecutorService$1(FrameProcessingTask frameProcessingTask) {
        while (!this.highPriorityTasks.isEmpty()) {
            try {
                this.highPriorityTasks.remove().run();
            } catch (FrameProcessingException | GlUtil.GlException | RuntimeException e) {
                handleException(e);
                return;
            }
        }
        frameProcessingTask.run();
        removeFinishedFutures();
    }

    private void cancelNonStartedTasks() {
        while (!this.futures.isEmpty()) {
            this.futures.remove().cancel(false);
        }
    }

    private void handleException(Exception exc) {
        if (this.shouldCancelTasks.getAndSet(true)) {
            return;
        }
        this.listener.onFrameProcessingError(FrameProcessingException.from(exc));
        cancelNonStartedTasks();
    }

    private void removeFinishedFutures() {
        while (!this.futures.isEmpty() && this.futures.element().isDone()) {
            try {
                this.futures.remove().get();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                handleException(e);
            } catch (ExecutionException e2) {
                handleException(new IllegalStateException("Unexpected error", e2));
            }
        }
    }
}
