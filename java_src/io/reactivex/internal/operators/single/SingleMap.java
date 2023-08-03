package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes4.dex */
public final class SingleMap<T, R> extends Single<R> {
    final Function<? super T, ? extends R> mapper;
    final SingleSource<? extends T> source;

    public SingleMap(SingleSource<? extends T> singleSource, Function<? super T, ? extends R> function) {
        this.source = singleSource;
        this.mapper = function;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super R> singleObserver) {
        this.source.subscribe(new MapSingleObserver(singleObserver, this.mapper));
    }

    /* loaded from: classes4.dex */
    static final class MapSingleObserver<T, R> implements SingleObserver<T> {
        final Function<? super T, ? extends R> mapper;

        /* renamed from: t */
        final SingleObserver<? super R> f558t;

        MapSingleObserver(SingleObserver<? super R> singleObserver, Function<? super T, ? extends R> function) {
            this.f558t = singleObserver;
            this.mapper = function;
        }

        @Override // io.reactivex.SingleObserver, io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f558t.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver, io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                this.f558t.onSuccess(ObjectHelper.requireNonNull(this.mapper.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver, io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f558t.onError(th);
        }
    }
}
