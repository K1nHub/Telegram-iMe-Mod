package org.koin.core;

import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.extension.ExtensionManager;
import org.koin.core.logger.EmptyLogger;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.module.ModuleKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.InstanceRegistry;
import org.koin.core.registry.PropertyRegistry;
import org.koin.core.registry.ScopeRegistry;
import org.koin.p043mp.KoinPlatformTimeTools;
/* compiled from: Koin.kt */
/* loaded from: classes4.dex */
public final class Koin {
    private Logger logger;
    private final ScopeRegistry scopeRegistry = new ScopeRegistry(this);
    private final InstanceRegistry instanceRegistry = new InstanceRegistry(this);

    public Koin() {
        new PropertyRegistry(this);
        new ExtensionManager(this);
        this.logger = new EmptyLogger();
    }

    public final ScopeRegistry getScopeRegistry() {
        return this.scopeRegistry;
    }

    public final InstanceRegistry getInstanceRegistry() {
        return this.instanceRegistry;
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final void setupLogger(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public final <T> T get(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.scopeRegistry.getRootScope().get(clazz, qualifier, function0);
    }

    public static /* synthetic */ void loadModules$default(Koin koin, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        koin.loadModules(list, z);
    }

    public final void loadModules(List<Module> modules, boolean z) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Set<Module> flatten$default = ModuleKt.flatten$default(modules, null, 2, null);
        this.instanceRegistry.loadModules$koin_core(flatten$default, z);
        this.scopeRegistry.loadScopes(flatten$default);
    }

    public final void createEagerInstances() {
        KoinPlatformTimeTools koinPlatformTimeTools;
        Logger logger = this.logger;
        Level level = Level.DEBUG;
        if (logger.isAt(level)) {
            logger.display(level, "Eager instances ...");
        }
        long timeInNanoSeconds = KoinPlatformTimeTools.INSTANCE.getTimeInNanoSeconds();
        this.instanceRegistry.createAllEagerInstances$koin_core();
        double doubleValue = ((Number) new Pair(Unit.INSTANCE, Double.valueOf((koinPlatformTimeTools.getTimeInNanoSeconds() - timeInNanoSeconds) / 1000000.0d)).getSecond()).doubleValue();
        Logger logger2 = this.logger;
        String str = "Eager instances created in " + doubleValue + " ms";
        if (logger2.isAt(level)) {
            logger2.display(level, str);
        }
    }
}
