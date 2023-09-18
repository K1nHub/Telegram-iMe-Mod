package org.koin.androidx.viewmodel.parameter;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.parameter.ParametersHolder;
/* compiled from: AndroidParametersHolder.kt */
/* loaded from: classes6.dex */
public final class AndroidParametersHolder extends ParametersHolder {
    private final CreationExtras extras;

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        r2 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r2);
     */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidParametersHolder(kotlin.jvm.functions.Function0<? extends org.koin.core.parameter.ParametersHolder> r2, androidx.lifecycle.viewmodel.CreationExtras r3) {
        /*
            r1 = this;
            java.lang.String r0 = "extras"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            if (r2 == 0) goto L1b
            java.lang.Object r2 = r2.invoke()
            org.koin.core.parameter.ParametersHolder r2 = (org.koin.core.parameter.ParametersHolder) r2
            if (r2 == 0) goto L1b
            java.util.List r2 = r2.getValues()
            if (r2 == 0) goto L1b
            java.util.List r2 = kotlin.collections.CollectionsKt.toMutableList(r2)
            if (r2 != 0) goto L20
        L1b:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L20:
            r1.<init>(r2)
            r1.extras = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.androidx.viewmodel.parameter.AndroidParametersHolder.<init>(kotlin.jvm.functions.Function0, androidx.lifecycle.viewmodel.CreationExtras):void");
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public <T> T elementAt(final int i, final KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) createSavedStateHandleOrElse(clazz, new Function0<T>() { // from class: org.koin.androidx.viewmodel.parameter.AndroidParametersHolder$elementAt$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                Object elementAt;
                elementAt = super/*org.koin.core.parameter.ParametersHolder*/.elementAt(i, clazz);
                return (T) elementAt;
            }
        });
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public <T> T getOrNull(final KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) createSavedStateHandleOrElse(clazz, new Function0<T>() { // from class: org.koin.androidx.viewmodel.parameter.AndroidParametersHolder$getOrNull$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                Object orNull;
                orNull = super/*org.koin.core.parameter.ParametersHolder*/.getOrNull(clazz);
                return (T) orNull;
            }
        });
    }

    private final <T> T createSavedStateHandleOrElse(KClass<?> kClass, Function0<? extends T> function0) {
        if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(SavedStateHandle.class))) {
            return (T) SavedStateHandleSupport.createSavedStateHandle(this.extras);
        }
        return function0.invoke();
    }
}
