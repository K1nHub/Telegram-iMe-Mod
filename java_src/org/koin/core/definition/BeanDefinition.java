package org.koin.core.definition;

import java.util.List;
import java.util.Objects;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: BeanDefinition.kt */
/* loaded from: classes4.dex */
public final class BeanDefinition<T> {
    private Callbacks<T> callbacks;
    private final Function2<Scope, ParametersHolder, T> definition;
    private final Kind kind;
    private final KClass<?> primaryType;
    private Qualifier qualifier;
    private final Qualifier scopeQualifier;
    private List<? extends KClass<?>> secondaryTypes;

    /* JADX WARN: Multi-variable type inference failed */
    public BeanDefinition(Qualifier scopeQualifier, KClass<?> primaryType, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, Kind kind, List<? extends KClass<?>> secondaryTypes) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        this.scopeQualifier = scopeQualifier;
        this.primaryType = primaryType;
        this.qualifier = qualifier;
        this.definition = definition;
        this.kind = kind;
        this.secondaryTypes = secondaryTypes;
        this.callbacks = new Callbacks<>(null, 1, null);
    }

    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public final KClass<?> getPrimaryType() {
        return this.primaryType;
    }

    public final Qualifier getQualifier() {
        return this.qualifier;
    }

    public final Function2<Scope, ParametersHolder, T> getDefinition() {
        return this.definition;
    }

    public final List<KClass<?>> getSecondaryTypes() {
        return this.secondaryTypes;
    }

    public final void setSecondaryTypes(List<? extends KClass<?>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.secondaryTypes = list;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0039, code lost:
        if (r2 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r15 = this;
            org.koin.core.definition.Kind r0 = r15.kind
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 39
            r1.append(r2)
            kotlin.reflect.KClass<?> r3 = r15.primaryType
            java.lang.String r3 = org.koin.ext.KClassExtKt.getFullName(r3)
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            org.koin.core.qualifier.Qualifier r2 = r15.qualifier
            java.lang.String r3 = ""
            if (r2 == 0) goto L3b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = ",qualifier:"
            r2.append(r4)
            org.koin.core.qualifier.Qualifier r4 = r15.qualifier
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            if (r2 != 0) goto L3c
        L3b:
            r2 = r3
        L3c:
            org.koin.core.qualifier.Qualifier r4 = r15.scopeQualifier
            org.koin.core.registry.ScopeRegistry$Companion r5 = org.koin.core.registry.ScopeRegistry.Companion
            org.koin.core.qualifier.StringQualifier r5 = r5.getRootScopeQualifier()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L4c
            r4 = r3
            goto L5f
        L4c:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = ",scope:"
            r4.append(r5)
            org.koin.core.qualifier.Qualifier r5 = r15.scopeQualifier
            r4.append(r5)
            java.lang.String r4 = r4.toString()
        L5f:
            java.util.List<? extends kotlin.reflect.KClass<?>> r5 = r15.secondaryTypes
            boolean r5 = r5.isEmpty()
            r5 = r5 ^ 1
            if (r5 == 0) goto L8b
            java.util.List<? extends kotlin.reflect.KClass<?>> r6 = r15.secondaryTypes
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            org.koin.core.definition.BeanDefinition$toString$defOtherTypes$typesAsString$1 r12 = org.koin.core.definition.BeanDefinition$toString$defOtherTypes$typesAsString$1.INSTANCE
            r13 = 30
            r14 = 0
            java.lang.String r7 = ","
            java.lang.String r3 = kotlin.collections.CollectionsKt.joinToString$default(r6, r7, r8, r9, r10, r11, r12, r13, r14)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = ",binds:"
            r5.append(r6)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
        L8b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 91
            r5.append(r6)
            r5.append(r0)
            r0 = 58
            r5.append(r0)
            r5.append(r1)
            r5.append(r2)
            r5.append(r4)
            r5.append(r3)
            r0 = 93
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.definition.BeanDefinition.toString():java.lang.String");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>");
        BeanDefinition beanDefinition = (BeanDefinition) obj;
        return Intrinsics.areEqual(this.primaryType, beanDefinition.primaryType) && Intrinsics.areEqual(this.qualifier, beanDefinition.qualifier) && Intrinsics.areEqual(this.scopeQualifier, beanDefinition.scopeQualifier);
    }

    public int hashCode() {
        Qualifier qualifier = this.qualifier;
        return ((((qualifier != null ? qualifier.hashCode() : 0) * 31) + this.primaryType.hashCode()) * 31) + this.scopeQualifier.hashCode();
    }
}
