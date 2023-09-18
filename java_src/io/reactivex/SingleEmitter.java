package io.reactivex;
/* loaded from: classes6.dex */
public interface SingleEmitter<T> {
    boolean isDisposed();

    void onError(Throwable th);

    void onSuccess(T t);

    boolean tryOnError(Throwable th);
}
