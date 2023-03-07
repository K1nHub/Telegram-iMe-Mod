package org.koin.core;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.time.MeasureKt;
/* compiled from: KoinApplication.kt */
/* loaded from: classes4.dex */
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
        if (this.koin.getLogger().isAt(Level.INFO)) {
            double measureDuration = MeasureKt.measureDuration(new KoinApplication$modules$duration$1(this, modules));
            int size = this.koin.getInstanceRegistry().size();
            Logger logger = this.koin.getLogger();
            logger.info("loaded " + size + " definitions - " + measureDuration + " ms");
        } else {
            loadModules(modules);
        }
        return this;
    }

    public final void createEagerInstances() {
        this.koin.createEagerInstances();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadModules(List<Module> list) {
        this.koin.loadModules(list, this.allowOverride);
    }

    /* compiled from: KoinApplication.kt */
    /* loaded from: classes4.dex */
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
