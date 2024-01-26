package org.koin.core.module;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.instance.InstanceFactory;
/* compiled from: Module.kt */
/* loaded from: classes4.dex */
public final class ModuleKt {
    public static final void overrideError(InstanceFactory<?> factory, String mapping) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        throw new DefinitionOverrideException("Already existing definition for " + factory.getBeanDefinition() + " at " + mapping);
    }

    public static /* synthetic */ Set flatten$default(List list, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            set = SetsKt__SetsKt.emptySet();
        }
        return flatten(list, set);
    }

    public static final Set<Module> flatten(List<Module> modules, Set<Module> newModules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Intrinsics.checkNotNullParameter(newModules, "newModules");
        while (!modules.isEmpty()) {
            Module module = (Module) CollectionsKt.first((List<? extends Object>) modules);
            if (module == null) {
                throw new IllegalStateException("Flatten - No head element in list".toString());
            }
            modules = modules.subList(1, modules.size());
            if (module.getIncludedModules().isEmpty()) {
                newModules = SetsKt___SetsKt.plus(newModules, module);
            } else {
                modules = CollectionsKt___CollectionsKt.plus((Collection) module.getIncludedModules(), (Iterable) modules);
                newModules = SetsKt___SetsKt.plus(newModules, module);
            }
        }
        return newModules;
    }
}
