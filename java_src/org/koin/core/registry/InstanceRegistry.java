package org.koin.core.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.instance.InstanceContext;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.module.ModuleKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: InstanceRegistry.kt */
/* loaded from: classes6.dex */
public final class InstanceRegistry {
    private final Map<String, InstanceFactory<?>> _instances;
    private final Koin _koin;
    private final HashMap<Integer, SingleInstanceFactory<?>> eagerInstances;

    public InstanceRegistry(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this._koin = _koin;
        this._instances = KoinPlatformTools.INSTANCE.safeHashMap();
        this.eagerInstances = new HashMap<>();
    }

    private final void addAllEagerInstances(Module module) {
        for (SingleInstanceFactory<?> singleInstanceFactory : module.getEagerInstances()) {
            this.eagerInstances.put(Integer.valueOf(singleInstanceFactory.hashCode()), singleInstanceFactory);
        }
    }

    public final void createAllEagerInstances$koin_core() {
        Collection<SingleInstanceFactory<?>> values = this.eagerInstances.values();
        Intrinsics.checkNotNullExpressionValue(values, "eagerInstances.values");
        createEagerInstances(values);
        this.eagerInstances.clear();
    }

    private final void loadModule(Module module, boolean z) {
        for (Map.Entry<String, InstanceFactory<?>> entry : module.getMappings().entrySet()) {
            saveMapping$default(this, z, entry.getKey(), entry.getValue(), false, 8, null);
        }
    }

    public static /* synthetic */ void saveMapping$default(InstanceRegistry instanceRegistry, boolean z, String str, InstanceFactory instanceFactory, boolean z2, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        instanceRegistry.saveMapping(z, str, instanceFactory, z2);
    }

    public final void saveMapping(boolean z, String mapping, InstanceFactory<?> factory, boolean z2) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (this._instances.containsKey(mapping)) {
            if (!z) {
                ModuleKt.overrideError(factory, mapping);
            } else if (z2) {
                Logger logger = this._koin.getLogger();
                String str = "(+) override index '" + mapping + "' -> '" + factory.getBeanDefinition() + '\'';
                Level level = Level.WARNING;
                if (logger.isAt(level)) {
                    logger.display(level, str);
                }
            }
        }
        Logger logger2 = this._koin.getLogger();
        String str2 = "(+) index '" + mapping + "' -> '" + factory.getBeanDefinition() + '\'';
        Level level2 = Level.DEBUG;
        if (logger2.isAt(level2)) {
            logger2.display(level2, str2);
        }
        this._instances.put(mapping, factory);
    }

    private final void createEagerInstances(Collection<? extends SingleInstanceFactory<?>> collection) {
        if (!collection.isEmpty()) {
            InstanceContext instanceContext = new InstanceContext(this._koin.getLogger(), this._koin.getScopeRegistry().getRootScope(), null, 4, null);
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                ((SingleInstanceFactory) it.next()).get(instanceContext);
            }
        }
    }

    public final InstanceFactory<?> resolveDefinition$koin_core(KClass<?> clazz, Qualifier qualifier, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        return this._instances.get(BeanDefinitionKt.indexKey(clazz, qualifier, scopeQualifier));
    }

    public final <T> T resolveInstance$koin_core(Qualifier qualifier, KClass<?> clazz, Qualifier scopeQualifier, InstanceContext instanceContext) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        InstanceFactory<?> resolveDefinition$koin_core = resolveDefinition$koin_core(clazz, qualifier, scopeQualifier);
        Object obj = resolveDefinition$koin_core != null ? resolveDefinition$koin_core.get(instanceContext) : null;
        if (obj == null) {
            return null;
        }
        return (T) obj;
    }

    public final void dropScopeInstances$koin_core(Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Collection<InstanceFactory<?>> values = this._instances.values();
        ArrayList<ScopedInstanceFactory> arrayList = new ArrayList();
        for (Object obj : values) {
            if (obj instanceof ScopedInstanceFactory) {
                arrayList.add(obj);
            }
        }
        for (ScopedInstanceFactory scopedInstanceFactory : arrayList) {
            scopedInstanceFactory.drop(scope);
        }
    }

    public final int size() {
        return this._instances.size();
    }

    public final void loadModules$koin_core(Set<Module> modules, boolean z) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        for (Module module : modules) {
            loadModule(module, z);
            addAllEagerInstances(module);
        }
    }
}
