package org.koin.androidx.scope;

import androidx.lifecycle.ViewModel;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.scope.Scope;
/* compiled from: ScopeHandlerViewModel.kt */
/* loaded from: classes4.dex */
public final class ScopeHandlerViewModel extends ViewModel {
    private Scope scope;

    public final Scope getScope() {
        return this.scope;
    }

    public final void setScope(Scope scope) {
        this.scope = scope;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        Scope scope = this.scope;
        if (scope != null && scope.isNotClosed()) {
            Logger logger = scope.getLogger();
            String str = "Closing scope " + this.scope;
            Level level = Level.DEBUG;
            if (logger.isAt(level)) {
                logger.display(level, str);
            }
            scope.close();
        }
        this.scope = null;
    }
}
