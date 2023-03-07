package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
/* loaded from: classes4.dex */
public final class QueueDrainHelper {
    public static <T, U> void drainLoop(SimplePlainQueue<T> simplePlainQueue, Observer<? super U> observer, boolean z, Disposable disposable, ObservableQueueDrain<T, U> observableQueueDrain) {
        int i = 1;
        while (!checkTerminated(observableQueueDrain.done(), simplePlainQueue.isEmpty(), observer, z, simplePlainQueue, disposable, observableQueueDrain)) {
            while (true) {
                boolean done = observableQueueDrain.done();
                T poll = simplePlainQueue.poll();
                boolean z2 = poll == null;
                if (checkTerminated(done, z2, observer, z, simplePlainQueue, disposable, observableQueueDrain)) {
                    return;
                }
                if (!z2) {
                    observableQueueDrain.accept(observer, poll);
                } else {
                    i = observableQueueDrain.leave(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }
    }

    public static <T, U> boolean checkTerminated(boolean z, boolean z2, Observer<?> observer, boolean z3, SimpleQueue<?> simpleQueue, Disposable disposable, ObservableQueueDrain<T, U> observableQueueDrain) {
        if (observableQueueDrain.cancelled()) {
            simpleQueue.clear();
            disposable.dispose();
            return true;
        } else if (z) {
            if (z3) {
                if (z2) {
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    Throwable error = observableQueueDrain.error();
                    if (error != null) {
                        observer.onError(error);
                    } else {
                        observer.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable error2 = observableQueueDrain.error();
            if (error2 != null) {
                simpleQueue.clear();
                if (disposable != null) {
                    disposable.dispose();
                }
                observer.onError(error2);
                return true;
            } else if (z2) {
                if (disposable != null) {
                    disposable.dispose();
                }
                observer.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T> SimpleQueue<T> createQueue(int i) {
        if (i < 0) {
            return new SpscLinkedArrayQueue(-i);
        }
        return new SpscArrayQueue(i);
    }
}
