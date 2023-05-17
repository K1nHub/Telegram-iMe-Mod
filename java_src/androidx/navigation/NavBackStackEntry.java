package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.AbstractSavedStateViewModelFactory;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavBackStackEntry.kt */
/* loaded from: classes.dex */
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public static final Companion Companion = new Companion(null);
    private final Bundle arguments;
    private final Context context;
    private final Lazy defaultFactory$delegate;
    private NavDestination destination;
    private Lifecycle.State hostLifecycleState;

    /* renamed from: id */
    private final String f46id;
    private LifecycleRegistry lifecycle;
    private Lifecycle.State maxLifecycle;
    private final Bundle savedState;
    private final Lazy savedStateHandle$delegate;
    private boolean savedStateRegistryAttached;
    private final SavedStateRegistryController savedStateRegistryController;
    private final NavViewModelStoreProvider viewModelStoreProvider;

    public /* synthetic */ NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2);
    }

    private NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
        Lazy lazy;
        Lazy lazy2;
        this.context = context;
        this.destination = navDestination;
        this.arguments = bundle;
        this.hostLifecycleState = state;
        this.viewModelStoreProvider = navViewModelStoreProvider;
        this.f46id = str;
        this.savedState = bundle2;
        this.lifecycle = new LifecycleRegistry(this);
        this.savedStateRegistryController = SavedStateRegistryController.Companion.create(this);
        lazy = LazyKt__LazyJVMKt.lazy(new NavBackStackEntry$defaultFactory$2(this));
        this.defaultFactory$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new NavBackStackEntry$savedStateHandle$2(this));
        this.savedStateHandle$delegate = lazy2;
        this.maxLifecycle = Lifecycle.State.INITIALIZED;
    }

    public final NavDestination getDestination() {
        return this.destination;
    }

    public final void setDestination(NavDestination navDestination) {
        Intrinsics.checkNotNullParameter(navDestination, "<set-?>");
        this.destination = navDestination;
    }

    public final Bundle getArguments() {
        return this.arguments;
    }

    public final String getId() {
        return this.f46id;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry(NavBackStackEntry entry, Bundle bundle) {
        this(entry.context, entry.destination, bundle, entry.hostLifecycleState, entry.viewModelStoreProvider, entry.f46id, entry.savedState);
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.hostLifecycleState = entry.hostLifecycleState;
        setMaxLifecycle(entry.maxLifecycle);
    }

    /* compiled from: NavBackStackEntry.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavBackStackEntry create$default(Companion companion, Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, int i, Object obj) {
            String str2;
            Bundle bundle3 = (i & 4) != 0 ? null : bundle;
            Lifecycle.State state2 = (i & 8) != 0 ? Lifecycle.State.CREATED : state;
            NavViewModelStoreProvider navViewModelStoreProvider2 = (i & 16) != 0 ? null : navViewModelStoreProvider;
            if ((i & 32) != 0) {
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
                str2 = uuid;
            } else {
                str2 = str;
            }
            return companion.create(context, navDestination, bundle3, state2, navViewModelStoreProvider2, str2, (i & 64) != 0 ? null : bundle2);
        }

        public final NavBackStackEntry create(Context context, NavDestination destination, Bundle bundle, Lifecycle.State hostLifecycleState, NavViewModelStoreProvider navViewModelStoreProvider, String id, Bundle bundle2) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            Intrinsics.checkNotNullParameter(hostLifecycleState, "hostLifecycleState");
            Intrinsics.checkNotNullParameter(id, "id");
            return new NavBackStackEntry(context, destination, bundle, hostLifecycleState, navViewModelStoreProvider, id, bundle2, null);
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    public final Lifecycle.State getMaxLifecycle() {
        return this.maxLifecycle;
    }

    public final void setMaxLifecycle(Lifecycle.State maxState) {
        Intrinsics.checkNotNullParameter(maxState, "maxState");
        this.maxLifecycle = maxState;
        updateState();
    }

    public final void handleLifecycleEvent(Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Lifecycle.State targetState = event.getTargetState();
        Intrinsics.checkNotNullExpressionValue(targetState, "event.targetState");
        this.hostLifecycleState = targetState;
        updateState();
    }

    public final void updateState() {
        if (!this.savedStateRegistryAttached) {
            this.savedStateRegistryController.performAttach();
            this.savedStateRegistryAttached = true;
            if (this.viewModelStoreProvider != null) {
                SavedStateHandleSupport.enableSavedStateHandles(this);
            }
            this.savedStateRegistryController.performRestore(this.savedState);
        }
        if (this.hostLifecycleState.ordinal() < this.maxLifecycle.ordinal()) {
            this.lifecycle.setCurrentState(this.hostLifecycleState);
        } else {
            this.lifecycle.setCurrentState(this.maxLifecycle);
        }
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        if (!this.savedStateRegistryAttached) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).".toString());
        }
        if (!(this.lifecycle.getCurrentState() != Lifecycle.State.DESTROYED)) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.".toString());
        }
        NavViewModelStoreProvider navViewModelStoreProvider = this.viewModelStoreProvider;
        if (navViewModelStoreProvider == null) {
            throw new IllegalStateException("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.".toString());
        }
        return navViewModelStoreProvider.getViewModelStore(this.f46id);
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(null, 1, null);
        Context context = this.context;
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Application application = applicationContext instanceof Application ? applicationContext : null;
        if (application != null) {
            mutableCreationExtras.set(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        mutableCreationExtras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        mutableCreationExtras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this);
        Bundle bundle = this.arguments;
        if (bundle != null) {
            mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistryController.getSavedStateRegistry();
    }

    public final void saveState(Bundle outBundle) {
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        this.savedStateRegistryController.performSave(outBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 0
            if (r7 == 0) goto L83
            boolean r1 = r7 instanceof androidx.navigation.NavBackStackEntry
            if (r1 != 0) goto L9
            goto L83
        L9:
            java.lang.String r1 = r6.f46id
            androidx.navigation.NavBackStackEntry r7 = (androidx.navigation.NavBackStackEntry) r7
            java.lang.String r2 = r7.f46id
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            r2 = 1
            if (r1 == 0) goto L83
            androidx.navigation.NavDestination r1 = r6.destination
            androidx.navigation.NavDestination r3 = r7.destination
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            androidx.lifecycle.LifecycleRegistry r1 = r6.lifecycle
            androidx.lifecycle.LifecycleRegistry r3 = r7.lifecycle
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            androidx.savedstate.SavedStateRegistry r1 = r6.getSavedStateRegistry()
            androidx.savedstate.SavedStateRegistry r3 = r7.getSavedStateRegistry()
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            android.os.Bundle r1 = r6.arguments
            android.os.Bundle r3 = r7.arguments
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 != 0) goto L82
            android.os.Bundle r1 = r6.arguments
            if (r1 == 0) goto L7f
            java.util.Set r1 = r1.keySet()
            if (r1 == 0) goto L7f
            boolean r3 = r1.isEmpty()
            if (r3 == 0) goto L54
        L52:
            r7 = r2
            goto L7b
        L54:
            java.util.Iterator r1 = r1.iterator()
        L58:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L52
            java.lang.Object r3 = r1.next()
            java.lang.String r3 = (java.lang.String) r3
            android.os.Bundle r4 = r6.arguments
            java.lang.Object r4 = r4.get(r3)
            android.os.Bundle r5 = r7.arguments
            if (r5 == 0) goto L73
            java.lang.Object r3 = r5.get(r3)
            goto L74
        L73:
            r3 = 0
        L74:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r3)
            if (r3 != 0) goto L58
            r7 = r0
        L7b:
            if (r7 != r2) goto L7f
            r7 = r2
            goto L80
        L7f:
            r7 = r0
        L80:
            if (r7 == 0) goto L83
        L82:
            r0 = r2
        L83:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavBackStackEntry.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Set<String> keySet;
        int hashCode = (this.f46id.hashCode() * 31) + this.destination.hashCode();
        Bundle bundle = this.arguments;
        if (bundle != null && (keySet = bundle.keySet()) != null) {
            for (String str : keySet) {
                int i = hashCode * 31;
                Object obj = this.arguments.get(str);
                hashCode = i + (obj != null ? obj.hashCode() : 0);
            }
        }
        return (((hashCode * 31) + this.lifecycle.hashCode()) * 31) + getSavedStateRegistry().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavBackStackEntry.kt */
    /* loaded from: classes.dex */
    public static final class NavResultSavedStateFactory extends AbstractSavedStateViewModelFactory {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavResultSavedStateFactory(SavedStateRegistryOwner owner) {
            super(owner, null);
            Intrinsics.checkNotNullParameter(owner, "owner");
        }

        @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
        protected <T extends ViewModel> T create(String key, Class<T> modelClass, SavedStateHandle handle) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(handle, "handle");
            return new SavedStateViewModel(handle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavBackStackEntry.kt */
    /* loaded from: classes.dex */
    public static final class SavedStateViewModel extends ViewModel {
        private final SavedStateHandle handle;

        public SavedStateViewModel(SavedStateHandle handle) {
            Intrinsics.checkNotNullParameter(handle, "handle");
            this.handle = handle;
        }

        public final SavedStateHandle getHandle() {
            return this.handle;
        }
    }
}
