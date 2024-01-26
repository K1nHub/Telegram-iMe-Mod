package org.koin.core.module;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.p041mp.KoinPlatformTools;
/* compiled from: Module.kt */
/* loaded from: classes4.dex */
public final class Module {
    private final boolean _createdAtStart;
    private HashSet<SingleInstanceFactory<?>> eagerInstances;

    /* renamed from: id */
    private final String f1519id;
    private final List<Module> includedModules;
    private final HashMap<String, InstanceFactory<?>> mappings;
    private final HashSet<Qualifier> scopes;

    public Module() {
        this(false, 1, null);
    }

    public Module(boolean z) {
        this._createdAtStart = z;
        this.f1519id = KoinPlatformTools.INSTANCE.generateId();
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

    public final List<Module> getIncludedModules() {
        return this.includedModules;
    }

    public final void indexPrimaryType(InstanceFactory<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        BeanDefinition<?> beanDefinition = instanceFactory.getBeanDefinition();
        saveMapping(BeanDefinitionKt.indexKey(beanDefinition.getPrimaryType(), beanDefinition.getQualifier(), beanDefinition.getScopeQualifier()), instanceFactory);
    }

    public final void indexSecondaryTypes(InstanceFactory<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        BeanDefinition<?> beanDefinition = instanceFactory.getBeanDefinition();
        Iterator<T> it = beanDefinition.getSecondaryTypes().iterator();
        while (it.hasNext()) {
            saveMapping(BeanDefinitionKt.indexKey((KClass) it.next(), beanDefinition.getQualifier(), beanDefinition.getScopeQualifier()), instanceFactory);
        }
    }

    public final void prepareForCreationAtStart(SingleInstanceFactory<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        this.eagerInstances.add(instanceFactory);
    }

    public final void saveMapping(String mapping, InstanceFactory<?> factory) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.mappings.put(mapping, factory);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Module.class == obj.getClass() && Intrinsics.areEqual(this.f1519id, ((Module) obj).f1519id);
    }

    public int hashCode() {
        return this.f1519id.hashCode();
    }
}
