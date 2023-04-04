package org.koin.core.module;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: Module.kt */
/* loaded from: classes4.dex */
public final class Module {
    private final boolean _createdAtStart;
    private HashSet<SingleInstanceFactory<?>> eagerInstances;

    /* renamed from: id */
    private final String f1422id;
    private final List<Module> includedModules;
    private final HashMap<String, InstanceFactory<?>> mappings;
    private final HashSet<Qualifier> scopes;

    public Module() {
        this(false, 1, null);
    }

    public Module(boolean z) {
        this._createdAtStart = z;
        this.f1422id = KoinPlatformTools.INSTANCE.generateId();
        this.eagerInstances = new HashSet<>();
        this.mappings = new HashMap<>();
        this.scopes = new HashSet<>();
        this.includedModules = new ArrayList();
    }

    public /* synthetic */ Module(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public final boolean get_createdAtStart() {
        return this._createdAtStart;
    }

    public final HashSet<SingleInstanceFactory<?>> getEagerInstances() {
        return this.eagerInstances;
    }

    public final HashMap<String, InstanceFactory<?>> getMappings() {
        return this.mappings;
    }

    public final HashSet<Qualifier> getScopes() {
        return this.scopes;
    }

    public final List<Module> getIncludedModules$koin_core() {
        return this.includedModules;
    }

    public final void indexPrimaryType(InstanceFactory<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        BeanDefinition<?> beanDefinition = instanceFactory.getBeanDefinition();
        saveMapping$default(this, BeanDefinitionKt.indexKey(beanDefinition.getPrimaryType(), beanDefinition.getQualifier(), beanDefinition.getScopeQualifier()), instanceFactory, false, 4, null);
    }

    public final void prepareForCreationAtStart(SingleInstanceFactory<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        this.eagerInstances.add(instanceFactory);
    }

    public static /* synthetic */ void saveMapping$default(Module module, String str, InstanceFactory instanceFactory, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        module.saveMapping(str, instanceFactory, z);
    }

    public final void saveMapping(String mapping, InstanceFactory<?> factory, boolean z) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (!z && this.mappings.containsKey(mapping)) {
            ModuleKt.overrideError(factory, mapping);
        }
        this.mappings.put(mapping, factory);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(Module.class), Reflection.getOrCreateKotlinClass(obj.getClass())) && Intrinsics.areEqual(this.f1422id, ((Module) obj).f1422id);
    }

    public int hashCode() {
        return this.f1422id.hashCode();
    }
}
