package org.koin.core.definition;

import kotlin.jvm.internal.Intrinsics;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.module.Module;
/* compiled from: KoinDefinition.kt */
/* loaded from: classes4.dex */
public final class KoinDefinition<R> {
    private final InstanceFactory<R> factory;
    private final Module module;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KoinDefinition) {
            KoinDefinition koinDefinition = (KoinDefinition) obj;
            return Intrinsics.areEqual(this.module, koinDefinition.module) && Intrinsics.areEqual(this.factory, koinDefinition.factory);
        }
        return false;
    }

    public int hashCode() {
        return (this.module.hashCode() * 31) + this.factory.hashCode();
    }

    public String toString() {
        return "KoinDefinition(module=" + this.module + ", factory=" + this.factory + ')';
    }

    public KoinDefinition(Module module, InstanceFactory<R> factory) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.module = module;
        this.factory = factory;
    }

    public final InstanceFactory<R> getFactory() {
        return this.factory;
    }

    public final Module getModule() {
        return this.module;
    }
}
