package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.context.GlobalContext;
import org.koin.core.scope.Scope;
/* compiled from: AndroidKoinScopeExt.kt */
/* loaded from: classes6.dex */
public final class AndroidKoinScopeExtKt {
    public static final Scope getKoinScope(ComponentCallbacks componentCallbacks) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        return componentCallbacks instanceof AndroidScopeComponent ? ((AndroidScopeComponent) componentCallbacks).getScope() : componentCallbacks instanceof KoinScopeComponent ? ((KoinScopeComponent) componentCallbacks).getScope() : componentCallbacks instanceof KoinComponent ? ((KoinComponent) componentCallbacks).getKoin().getScopeRegistry().getRootScope() : GlobalContext.INSTANCE.get().getScopeRegistry().getRootScope();
    }
}
