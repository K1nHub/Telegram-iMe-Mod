package org.koin.core.scope;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.Koin;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.error.NoBeanDefFoundException;
import org.koin.core.instance.InstanceContext;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope {
    private final ArrayList<Object> _callbacks;
    private boolean _closed;
    private final Koin _koin;
    private final ArrayDeque<ParametersHolder> _parameterStack;
    private Object _source;

    /* renamed from: id */
    private final String f1415id;
    private final boolean isRoot;
    private final ArrayList<Scope> linkedScopes;
    private final Qualifier scopeQualifier;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            Scope scope = (Scope) obj;
            return Intrinsics.areEqual(this.scopeQualifier, scope.scopeQualifier) && Intrinsics.areEqual(this.f1415id, scope.f1415id) && this.isRoot == scope.isRoot && Intrinsics.areEqual(this._koin, scope._koin);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.scopeQualifier.hashCode() * 31) + this.f1415id.hashCode()) * 31;
        boolean z = this.isRoot;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this._koin.hashCode();
    }

    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public final String getId() {
        return this.f1415id;
    }

    public Scope(Qualifier scopeQualifier, String id, boolean z, Koin _koin) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.scopeQualifier = scopeQualifier;
        this.f1415id = id;
        this.isRoot = z;
        this._koin = _koin;
        this.linkedScopes = new ArrayList<>();
        this._callbacks = new ArrayList<>();
        this._parameterStack = new ArrayDeque<>();
    }

    public final <T> T getOrNull(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            return (T) get(clazz, qualifier, function0);
        } catch (ClosedScopeException unused) {
            Logger logger = this._koin.getLogger();
            logger.debug("|- Scope closed - no instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this);
            return null;
        } catch (NoBeanDefFoundException unused2) {
            Logger logger2 = this._koin.getLogger();
            logger2.debug("|- No instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T get(kotlin.reflect.KClass<?> r6, org.koin.core.qualifier.Qualifier r7, kotlin.jvm.functions.Function0<? extends org.koin.core.parameter.ParametersHolder> r8) {
        /*
            r5 = this;
            java.lang.String r0 = "clazz"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            org.koin.core.Koin r0 = r5._koin
            org.koin.core.logger.Logger r0 = r0.getLogger()
            org.koin.core.logger.Level r1 = org.koin.core.logger.Level.DEBUG
            boolean r0 = r0.isAt(r1)
            if (r0 == 0) goto L96
            r0 = 39
            if (r7 == 0) goto L2d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " with qualifier '"
            r1.append(r2)
            r1.append(r7)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            if (r1 != 0) goto L2f
        L2d:
            java.lang.String r1 = ""
        L2f:
            org.koin.core.Koin r2 = r5._koin
            org.koin.core.logger.Logger r2 = r2.getLogger()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "+- '"
            r3.append(r4)
            java.lang.String r4 = org.koin.ext.KClassExtKt.getFullName(r6)
            r3.append(r4)
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.debug(r0)
            org.koin.core.scope.Scope$get$1 r0 = new org.koin.core.scope.Scope$get$1
            r0.<init>(r5, r7, r6, r8)
            kotlin.Pair r7 = org.koin.core.time.MeasureKt.measureDurationForResult(r0)
            java.lang.Object r8 = r7.component1()
            java.lang.Object r7 = r7.component2()
            java.lang.Number r7 = (java.lang.Number) r7
            double r0 = r7.doubleValue()
            org.koin.core.Koin r7 = r5._koin
            org.koin.core.logger.Logger r7 = r7.getLogger()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "|- '"
            r2.append(r3)
            java.lang.String r6 = org.koin.ext.KClassExtKt.getFullName(r6)
            r2.append(r6)
            java.lang.String r6 = "' in "
            r2.append(r6)
            r2.append(r0)
            java.lang.String r6 = " ms"
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            r7.debug(r6)
            return r8
        L96:
            java.lang.Object r6 = r5.resolveInstance(r7, r6, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.get(kotlin.reflect.KClass, org.koin.core.qualifier.Qualifier, kotlin.jvm.functions.Function0):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T resolveInstance(Qualifier qualifier, KClass<?> kClass, Function0<? extends ParametersHolder> function0) {
        if (this._closed) {
            throw new ClosedScopeException("Scope '" + this.f1415id + "' is closed");
        }
        ParametersHolder invoke = function0 != null ? function0.invoke() : null;
        if (invoke != null) {
            this._koin.getLogger().log(Level.DEBUG, new Scope$resolveInstance$1(invoke));
            this._parameterStack.addFirst(invoke);
        }
        T t = (T) resolveValue(qualifier, kClass, new InstanceContext(this._koin, this, invoke), function0);
        if (invoke != null) {
            this._koin.getLogger().log(Level.DEBUG, Scope$resolveInstance$2.INSTANCE);
            this._parameterStack.removeFirstOrNull();
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    private final <T> T resolveValue(Qualifier qualifier, KClass<?> kClass, InstanceContext instanceContext, Function0<? extends ParametersHolder> function0) {
        T t = (T) this._koin.getInstanceRegistry().resolveInstance$koin_core(qualifier, kClass, this.scopeQualifier, instanceContext);
        if (t == null) {
            Logger logger = this._koin.getLogger();
            Level level = Level.DEBUG;
            logger.log(level, new Scope$resolveValue$1$1(kClass, qualifier));
            ParametersHolder firstOrNull = this._parameterStack.firstOrNull();
            Object obj = null;
            obj = null;
            t = firstOrNull != null ? (T) firstOrNull.getOrNull(kClass) : null;
            if (t == null) {
                this._koin.getLogger().log(level, new Scope$resolveValue$2$1(kClass, qualifier));
                Object obj2 = this._source;
                if (obj2 != null && kClass.isInstance(obj2)) {
                    obj = this._source;
                }
                t = obj;
                if (t == null) {
                    this._koin.getLogger().log(level, new Scope$resolveValue$3$1(kClass, qualifier));
                    t = (T) findInOtherScope(kClass, qualifier, function0);
                    if (t == null) {
                        this._parameterStack.clear();
                        this._koin.getLogger().log(level, Scope$resolveValue$4$1.INSTANCE);
                        throwDefinitionNotFound(qualifier, kClass);
                        throw new KotlinNothingValueException();
                    }
                }
            }
        }
        return t;
    }

    private final <T> T findInOtherScope(KClass<?> kClass, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Iterator<Scope> it = this.linkedScopes.iterator();
        T t = null;
        while (it.hasNext() && (t = (T) it.next().getOrNull(kClass, qualifier, function0)) == null) {
        }
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r5 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void throwDefinitionNotFound(org.koin.core.qualifier.Qualifier r5, kotlin.reflect.KClass<?> r6) {
        /*
            r4 = this;
            r0 = 39
            if (r5 == 0) goto L1a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " & qualifier:'"
            r1.append(r2)
            r1.append(r5)
            r1.append(r0)
            java.lang.String r5 = r1.toString()
            if (r5 != 0) goto L1c
        L1a:
            java.lang.String r5 = ""
        L1c:
            org.koin.core.error.NoBeanDefFoundException r1 = new org.koin.core.error.NoBeanDefFoundException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "|- No definition found for class:'"
            r2.append(r3)
            java.lang.String r6 = org.koin.ext.KClassExtKt.getFullName(r6)
            r2.append(r6)
            r2.append(r0)
            r2.append(r5)
            java.lang.String r5 = ". Check your definitions!"
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r1.<init>(r5)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.throwDefinitionNotFound(org.koin.core.qualifier.Qualifier, kotlin.reflect.KClass):java.lang.Void");
    }

    public String toString() {
        return "['" + this.f1415id + "']";
    }
}
