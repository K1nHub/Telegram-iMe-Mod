package org.koin.androidx.scope;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;
/* compiled from: LifecycleViewModelScopeDelegate.kt */
/* loaded from: classes4.dex */
public final class LifecycleViewModelScopeDelegate implements ReadOnlyProperty<LifecycleOwner, Scope> {
    public static final /* synthetic */ Function1 access$getCreateScope$p(LifecycleViewModelScopeDelegate lifecycleViewModelScopeDelegate) {
        throw null;
    }

    public static final /* synthetic */ Koin access$getKoin$p(LifecycleViewModelScopeDelegate lifecycleViewModelScopeDelegate) {
        throw null;
    }

    public static final /* synthetic */ void access$set_scope$p(LifecycleViewModelScopeDelegate lifecycleViewModelScopeDelegate, Scope scope) {
        throw null;
    }

    /* compiled from: LifecycleViewModelScopeDelegate.kt */
    @Metadata(m152bv = {1, 0, 3}, m151d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, m150d2 = {"org/koin/androidx/scope/LifecycleViewModelScopeDelegate$2", "Landroidx/lifecycle/DefaultLifecycleObserver;", "koin-android_release"}, m149k = 1, m148mv = {1, 5, 1})
    /* renamed from: org.koin.androidx.scope.LifecycleViewModelScopeDelegate$2 */
    /* loaded from: classes4.dex */
    public final class C35352 implements DefaultLifecycleObserver {
        final /* synthetic */ ScopeHandlerViewModel $scopeViewModel;
        final /* synthetic */ LifecycleViewModelScopeDelegate this$0;

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onCreate(LifecycleOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            if (this.$scopeViewModel.getScope() == null) {
                this.$scopeViewModel.setScope((Scope) LifecycleViewModelScopeDelegate.access$getCreateScope$p(this.this$0).invoke(LifecycleViewModelScopeDelegate.access$getKoin$p(this.this$0)));
            }
            LifecycleViewModelScopeDelegate.access$set_scope$p(this.this$0, this.$scopeViewModel.getScope());
        }
    }
}
