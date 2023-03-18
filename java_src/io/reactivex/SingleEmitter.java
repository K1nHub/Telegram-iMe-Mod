package io.reactivex;
/* loaded from: classes4.dex */
public interface SingleEmitter<T> {
    void onError(Throwable th);

    void onSuccess(T t);

    boolean tryOnError(Throwable th);
}
