package org.koin.android.ext.koin;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.error.MissingAndroidContextException;
import org.koin.core.scope.Scope;
/* compiled from: ModuleExt.kt */
/* loaded from: classes4.dex */
public final class ModuleExtKt {
    public static final Context androidContext(Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        try {
            return (Context) scope.get(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        } catch (Exception unused) {
            throw new MissingAndroidContextException("Can't resolve Context instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }
}
