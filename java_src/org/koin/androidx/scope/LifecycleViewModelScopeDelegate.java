package org.koin.androidx.scope;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;
/* compiled from: LifecycleViewModelScopeDelegate.kt */
/* loaded from: classes4.dex */
public final class LifecycleViewModelScopeDelegate {
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
    /* renamed from: org.koin.androidx.scope.LifecycleViewModelScopeDelegate$2 */
    /* loaded from: classes4.dex */
    public final class C31372 implements DefaultLifecycleObserver {
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
