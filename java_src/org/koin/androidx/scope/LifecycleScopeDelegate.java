package org.koin.androidx.scope;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.scope.Scope;
/* compiled from: LifecycleScopeDelegate.kt */
/* loaded from: classes4.dex */
public final class LifecycleScopeDelegate<T> {
    public static final /* synthetic */ void access$createScope(LifecycleScopeDelegate lifecycleScopeDelegate) {
        throw null;
    }

    public static final /* synthetic */ Scope access$get_scope$p(LifecycleScopeDelegate lifecycleScopeDelegate) {
        throw null;
    }

    /* compiled from: LifecycleScopeDelegate.kt */
    /* renamed from: org.koin.androidx.scope.LifecycleScopeDelegate$2 */
    /* loaded from: classes4.dex */
    public final class C31802 implements DefaultLifecycleObserver {
        final /* synthetic */ LifecycleScopeDelegate<Object> this$0;

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
            LifecycleScopeDelegate.access$createScope(this.this$0);
        }

        @Override // androidx.lifecycle.FullLifecycleObserver
        public void onDestroy(LifecycleOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            StringBuilder sb = new StringBuilder();
            sb.append("Closing scope: ");
            sb.append(LifecycleScopeDelegate.access$get_scope$p(this.this$0));
            sb.append(" for ");
            throw null;
        }
    }
}
