package org.orbitmvi.orbit.viewmodel;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.orbitmvi.orbit.ContainerHost;
/* compiled from: ContainerHostExtensions.kt */
/* loaded from: classes6.dex */
public final class ContainerHostExtensionsKt {
    public static final <STATE, SIDE_EFFECT> void observe(ContainerHost<STATE, SIDE_EFFECT> containerHost, LifecycleOwner lifecycleOwner, Function2<? super STATE, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super SIDE_EFFECT, ? super Continuation<? super Unit>, ? extends Object> function22) {
        Intrinsics.checkNotNullParameter(containerHost, "<this>");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new ContainerHostExtensionsKt$observe$1(lifecycleOwner, function2, function22, containerHost, null), 3, null);
    }
}
