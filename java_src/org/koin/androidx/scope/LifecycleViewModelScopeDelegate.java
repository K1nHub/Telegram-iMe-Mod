package org.koin.androidx.scope;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.scope.Scope;
/* compiled from: LifecycleViewModelScopeDelegate.kt */
/* loaded from: classes4.dex */
public final class LifecycleViewModelScopeDelegate {
    public static final /* synthetic */ Scope access$get_scope$p(LifecycleViewModelScopeDelegate lifecycleViewModelScopeDelegate) {
        throw null;
    }

    /* compiled from: LifecycleViewModelScopeDelegate.kt */
    /* renamed from: org.koin.androidx.scope.LifecycleViewModelScopeDelegate$3 */
    /* loaded from: classes4.dex */
    public final class C31953 implements DefaultLifecycleObserver {
        final /* synthetic */ LifecycleViewModelScopeDelegate this$0;

        @Override // androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onDestroy(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onPause(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onResume(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onStart(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onStop(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.FullLifecycleObserver
        public void onCreate(LifecycleOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            StringBuilder sb = new StringBuilder();
            sb.append("Attach ViewModel scope: ");
            sb.append(LifecycleViewModelScopeDelegate.access$get_scope$p(this.this$0));
            sb.append(" to ");
            throw null;
        }
    }
}
