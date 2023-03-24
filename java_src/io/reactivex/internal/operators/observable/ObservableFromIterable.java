package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicQueueDisposable;
import java.util.Iterator;
/* loaded from: classes4.dex */
public final class ObservableFromIterable<T> extends Observable<T> {
    final Iterable<? extends T> source;

    public ObservableFromIterable(Iterable<? extends T> iterable) {
        this.source = iterable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Iterator<? extends T> it = this.source.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(observer);
                    return;
                }
                FromIterableDisposable fromIterableDisposable = new FromIterableDisposable(observer, it);
                observer.onSubscribe(fromIterableDisposable);
                if (fromIterableDisposable.fusionMode) {
                    return;
                }
                fromIterableDisposable.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            EmptyDisposable.error(th2, observer);
        }
    }

    /* loaded from: classes4.dex */
    static final class FromIterableDisposable<T> extends BasicQueueDisposable<T> {
        boolean checkNext;
        volatile boolean disposed;
        boolean done;
        final Observer<? super T> downstream;
        boolean fusionMode;

        /* renamed from: it */
        final Iterator<? extends T> f455it;

        FromIterableDisposable(Observer<? super T> observer, Iterator<? extends T> it) {
            this.downstream = observer;
            this.f455it = it;
        }

        void run() {
            while (!isDisposed()) {
                try {
                    this.downstream.onNext(ObjectHelper.requireNonNull(this.f455it.next(), "The iterator returned a null value"));
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f455it.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.downstream.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        this.downstream.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    this.downstream.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) != 0) {
                this.fusionMode = true;
                return 1;
            }
            return 0;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public T poll() {
            if (this.done) {
                return null;
            }
            if (this.checkNext) {
                if (!this.f455it.hasNext()) {
                    this.done = true;
                    return null;
                }
            } else {
                this.checkNext = true;
            }
            return (T) ObjectHelper.requireNonNull(this.f455it.next(), "The iterator returned a null value");
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.done;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.done = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }
    }
}
