package org.koin.core.context;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.KoinApplication;
import org.koin.p041mp.KoinPlatformTools;
/* compiled from: DefaultContextExt.kt */
/* loaded from: classes4.dex */
public final class DefaultContextExtKt {
    public static final KoinApplication startKoin(Function1<? super KoinApplication, Unit> appDeclaration) {
        Intrinsics.checkNotNullParameter(appDeclaration, "appDeclaration");
        return KoinPlatformTools.INSTANCE.defaultContext().startKoin(appDeclaration);
    }
}
