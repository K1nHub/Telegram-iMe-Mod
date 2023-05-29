package androidx.navigation;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavBackStackEntry;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavBackStackEntry.kt */
/* loaded from: classes.dex */
public final class NavBackStackEntry$savedStateHandle$2 extends Lambda implements Function0<SavedStateHandle> {
    final /* synthetic */ NavBackStackEntry this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry$savedStateHandle$2(NavBackStackEntry navBackStackEntry) {
        super(0);
        this.this$0 = navBackStackEntry;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SavedStateHandle invoke() {
        boolean z;
        LifecycleRegistry lifecycleRegistry;
        z = this.this$0.savedStateRegistryAttached;
        if (z) {
            lifecycleRegistry = this.this$0.lifecycle;
            if (!(lifecycleRegistry.getCurrentState() != Lifecycle.State.DESTROYED)) {
                throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.".toString());
            }
            return ((NavBackStackEntry.SavedStateViewModel) new ViewModelProvider(this.this$0, new NavBackStackEntry.NavResultSavedStateFactory(this.this$0)).get(NavBackStackEntry.SavedStateViewModel.class)).getHandle();
        }
        throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).".toString());
    }
}
