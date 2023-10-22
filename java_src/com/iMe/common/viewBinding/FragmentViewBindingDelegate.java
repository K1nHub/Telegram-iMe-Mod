package com.iMe.common.viewBinding;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
/* compiled from: FragmentViewBindingDelegate.kt */
/* loaded from: classes3.dex */
public final class FragmentViewBindingDelegate<T extends ViewBinding> implements ReadOnlyProperty<Fragment, T> {
    private final Method bindMethod;
    private T binding;
    private final Fragment fragment;

    public FragmentViewBindingDelegate(Class<T> bindingClass, Fragment fragment) {
        Intrinsics.checkNotNullParameter(bindingClass, "bindingClass");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
        this.bindMethod = bindingClass.getMethod("bind", View.class);
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public /* bridge */ /* synthetic */ Object getValue(Fragment fragment, KProperty kProperty) {
        return getValue2(fragment, (KProperty<?>) kProperty);
    }

    /* renamed from: getValue  reason: avoid collision after fix types in other method */
    public T getValue2(Fragment thisRef, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        T t = this.binding;
        if (t != null) {
            return t;
        }
        if (!this.fragment.getViewLifecycleOwner().getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.INITIALIZED)) {
            throw new IllegalStateException("Should not attempt to get bindings when Fragment views are destroyed.".toString());
        }
        this.fragment.getViewLifecycleOwner().getLifecycle().addObserver(new LifecycleEventObserver(this) { // from class: com.iMe.common.viewBinding.FragmentViewBindingDelegate$getValue$2
            final /* synthetic */ FragmentViewBindingDelegate<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event == Lifecycle.Event.ON_DESTROY) {
                    ((FragmentViewBindingDelegate) this.this$0).binding = null;
                }
            }
        });
        Object invoke = this.bindMethod.invoke(null, thisRef.requireView());
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type T of com.iMe.common.viewBinding.FragmentViewBindingDelegate");
        T t2 = (T) invoke;
        this.binding = t2;
        Intrinsics.checkNotNull(t2, "null cannot be cast to non-null type T of com.iMe.common.viewBinding.FragmentViewBindingDelegate");
        return t2;
    }
}
