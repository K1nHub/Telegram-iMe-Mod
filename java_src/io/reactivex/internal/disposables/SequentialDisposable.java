package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
public final class SequentialDisposable extends AtomicReference<Disposable> implements Disposable {
    public SequentialDisposable() {
    }

    public SequentialDisposable(Disposable disposable) {
        lazySet(disposable);
    }

    public boolean update(Disposable disposable) {
        return DisposableHelper.set(this, disposable);
    }

    public boolean replace(Disposable disposable) {
        return DisposableHelper.replace(this, disposable);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }
}
