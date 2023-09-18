package org.koin.core;

import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.p042mp.KoinPlatformTimeTools;
/* compiled from: KoinApplication.kt */
/* loaded from: classes6.dex */
public final class KoinApplication {
    public static final Companion Companion = new Companion(null);
    private boolean allowOverride;
    private final Koin koin;

    public /* synthetic */ KoinApplication(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private KoinApplication() {
        this.koin = new Koin();
        this.allowOverride = true;
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final KoinApplication modules(List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Logger logger = this.koin.getLogger();
        Level level = Level.INFO;
        if (logger.isAt(level)) {
            KoinPlatformTimeTools koinPlatformTimeTools = KoinPlatformTimeTools.INSTANCE;
            long timeInNanoSeconds = koinPlatformTimeTools.getTimeInNanoSeconds();
            loadModules(modules);
            double doubleValue = ((Number) new Pair(Unit.INSTANCE, Double.valueOf((koinPlatformTimeTools.getTimeInNanoSeconds() - timeInNanoSeconds) / 1000000.0d)).getSecond()).doubleValue();
            int size = this.koin.getInstanceRegistry().size();
            Logger logger2 = this.koin.getLogger();
            logger2.display(level, "loaded " + size + " definitions in " + doubleValue + " ms");
        } else {
            loadModules(modules);
        }
        return this;
    }

    public final void createEagerInstances() {
        this.koin.createEagerInstances();
    }

    private final void loadModules(List<Module> list) {
        this.koin.loadModules(list, this.allowOverride);
    }

    /* compiled from: KoinApplication.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KoinApplication init() {
            return new KoinApplication(null);
        }
    }
}
