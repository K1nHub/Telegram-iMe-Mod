package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public final class SingleDoFinally<T> extends Single<T> {
    final Action onFinally;
    final SingleSource<T> source;

    public SingleDoFinally(SingleSource<T> singleSource, Action action) {
        this.source = singleSource;
        this.onFinally = action;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super T> singleObserver) {
        this.source.subscribe(new DoFinallyObserver(singleObserver, this.onFinally));
    }

    /* loaded from: classes4.dex */
    static final class DoFinallyObserver<T> extends AtomicInteger implements SingleObserver<T>, Disposable {
        final SingleObserver<? super T> downstream;
        final Action onFinally;
        Disposable upstream;

        DoFinallyObserver(SingleObserver<? super T> singleObserver, Action action) {
            this.downstream = singleObserver;
            this.onFinally = action;
        }

        @Override // io.reactivex.SingleObserver, io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver, io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
            runFinally();
        }

        @Override // io.reactivex.SingleObserver, io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            }
        }
    }
}
