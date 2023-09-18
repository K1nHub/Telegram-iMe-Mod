package io.reactivex.disposables;

import io.reactivex.functions.Action;
import io.reactivex.internal.util.ExceptionHelper;
/* loaded from: classes6.dex */
final class ActionDisposable extends ReferenceDisposable<Action> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionDisposable(Action action) {
        super(action);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.disposables.ReferenceDisposable
    public void onDisposed(Action action) {
        try {
            action.run();
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }
}
