package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
public final class ScheduledDirectTask extends AbstractDirectTask implements Callable<Void> {
    public ScheduledDirectTask(Runnable runnable) {
        super(runnable);
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            return null;
        } finally {
            lazySet(AbstractDirectTask.FINISHED);
            this.runner = null;
        }
    }
}
