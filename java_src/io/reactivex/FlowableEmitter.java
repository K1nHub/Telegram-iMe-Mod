package io.reactivex;

import io.reactivex.disposables.Disposable;
/* loaded from: classes4.dex */
public interface FlowableEmitter<T> extends Emitter<T> {
    boolean isCancelled();

    void setDisposable(Disposable disposable);
}
