package org.koin.core.context;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.error.KoinAppAlreadyStartedException;
/* compiled from: GlobalContext.kt */
/* loaded from: classes4.dex */
public final class GlobalContext implements KoinContext {
    public static final GlobalContext INSTANCE = new GlobalContext();
    private static Koin _koin;

    private GlobalContext() {
    }

    @Override // org.koin.core.context.KoinContext
    public Koin get() {
        Koin koin = _koin;
        if (koin != null) {
            return koin;
        }
        throw new IllegalStateException("KoinApplication has not been started".toString());
    }

    private final void register(KoinApplication koinApplication) {
        if (_koin != null) {
            throw new KoinAppAlreadyStartedException("A Koin Application has already been started");
        }
        _koin = koinApplication.getKoin();
    }

    @Override // org.koin.core.context.KoinContext
    public KoinApplication startKoin(Function1<? super KoinApplication, Unit> appDeclaration) {
        KoinApplication init;
        Intrinsics.checkNotNullParameter(appDeclaration, "appDeclaration");
        synchronized (this) {
            init = KoinApplication.Companion.init();
            INSTANCE.register(init);
            appDeclaration.invoke(init);
            init.createEagerInstances();
        }
        return init;
    }
}
