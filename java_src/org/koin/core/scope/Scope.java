package org.koin.core.scope;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
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
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope {
    private final ArrayList<ScopeCallback> _callbacks;
    private boolean _closed;
    private final Koin _koin;
    private final ArrayDeque<ParametersHolder> _parameterStack;
    private Object _source;

    /* renamed from: id */
    private final String f1435id;
    private final boolean isRoot;
    private final ArrayList<Scope> linkedScopes;
    private final Qualifier scopeQualifier;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            Scope scope = (Scope) obj;
            return Intrinsics.areEqual(this.scopeQualifier, scope.scopeQualifier) && Intrinsics.areEqual(this.f1435id, scope.f1435id) && this.isRoot == scope.isRoot && Intrinsics.areEqual(this._koin, scope._koin);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.scopeQualifier.hashCode() * 31) + this.f1435id.hashCode()) * 31;
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
        return this.f1435id;
    }

    public final Koin get_koin() {
        return this._koin;
    }

    public Scope(Qualifier scopeQualifier, String id, boolean z, Koin _koin) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.scopeQualifier = scopeQualifier;
        this.f1435id = id;
        this.isRoot = z;
        this._koin = _koin;
        this.linkedScopes = new ArrayList<>();
        this._callbacks = new ArrayList<>();
        this._parameterStack = new ArrayDeque<>();
    }

    public final void set_source(Object obj) {
        this._source = obj;
    }

    public final boolean getClosed() {
        return this._closed;
    }

    public final boolean isNotClosed() {
        return !getClosed();
    }

    public final ArrayDeque<ParametersHolder> get_parameterStack() {
        return this._parameterStack;
    }

    public final Logger getLogger() {
        return this._koin.getLogger();
    }

    public final <T> T getOrNull(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            return (T) get(clazz, qualifier, function0);
        } catch (ClosedScopeException unused) {
            Logger logger = this._koin.getLogger();
            String str = "* Scope closed - no instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this;
            Level level = Level.DEBUG;
            if (logger.isAt(level)) {
                logger.display(level, str);
                return null;
            }
            return null;
        } catch (NoBeanDefFoundException unused2) {
            Logger logger2 = this._koin.getLogger();
            String str2 = "* No instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this;
            Level level2 = Level.DEBUG;
            if (logger2.isAt(level2)) {
                logger2.display(level2, str2);
                return null;
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
        if (r2 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T get(kotlin.reflect.KClass<?> r9, org.koin.core.qualifier.Qualifier r10, kotlin.jvm.functions.Function0<? extends org.koin.core.parameter.ParametersHolder> r11) {
        /*
            r8 = this;
            java.lang.String r0 = "clazz"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            org.koin.core.Koin r0 = r8._koin
            org.koin.core.logger.Logger r0 = r0.getLogger()
            org.koin.core.logger.Level r1 = org.koin.core.logger.Level.DEBUG
            boolean r0 = r0.isAt(r1)
            if (r0 == 0) goto L99
            r0 = 39
            if (r10 == 0) goto L2d
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = " with qualifier '"
            r2.append(r3)
            r2.append(r10)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            if (r2 != 0) goto L2f
        L2d:
            java.lang.String r2 = ""
        L2f:
            org.koin.core.Koin r3 = r8._koin
            org.koin.core.logger.Logger r3 = r3.getLogger()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "|- '"
            r4.append(r5)
            java.lang.String r6 = org.koin.ext.KClassExtKt.getFullName(r9)
            r4.append(r6)
            r4.append(r0)
            r4.append(r2)
            java.lang.String r0 = " ..."
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.display(r1, r0)
            org.koin.mp.KoinPlatformTimeTools r0 = org.koin.p042mp.KoinPlatformTimeTools.INSTANCE
            long r2 = r0.getTimeInNanoSeconds()
            java.lang.Object r10 = r8.resolveInstance(r10, r9, r11)
            long r6 = r0.getTimeInNanoSeconds()
            long r6 = r6 - r2
            double r2 = (double) r6
            r6 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r2 = r2 / r6
            org.koin.core.Koin r11 = r8._koin
            org.koin.core.logger.Logger r11 = r11.getLogger()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r5)
            java.lang.String r9 = org.koin.ext.KClassExtKt.getFullName(r9)
            r0.append(r9)
            java.lang.String r9 = "' in "
            r0.append(r9)
            r0.append(r2)
            java.lang.String r9 = " ms"
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r11.display(r1, r9)
            goto L9d
        L99:
            java.lang.Object r10 = r8.resolveInstance(r10, r9, r11)
        L9d:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.get(kotlin.reflect.KClass, org.koin.core.qualifier.Qualifier, kotlin.jvm.functions.Function0):java.lang.Object");
    }

    private final <T> T resolveInstance(Qualifier qualifier, KClass<?> kClass, Function0<? extends ParametersHolder> function0) {
        if (this._closed) {
            throw new ClosedScopeException("Scope '" + this.f1435id + "' is closed");
        }
        ParametersHolder invoke = function0 != null ? function0.invoke() : null;
        if (invoke != null) {
            Logger logger = this._koin.getLogger();
            Level level = Level.DEBUG;
            if (logger.isAt(level)) {
                logger.display(level, "| >> parameters " + invoke + ' ');
            }
            KoinPlatformTools.INSTANCE.m1639synchronized(this, new Scope$resolveInstance$2(this, invoke));
        }
        T t = (T) resolveValue(qualifier, kClass, new InstanceContext(this._koin.getLogger(), this, invoke), function0);
        if (invoke != null) {
            Logger logger2 = this._koin.getLogger();
            Level level2 = Level.DEBUG;
            if (logger2.isAt(level2)) {
                logger2.display(level2, "| << parameters");
            }
            KoinPlatformTools.INSTANCE.m1639synchronized(this, new Scope$resolveInstance$3(this));
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5 */
    private final <T> T resolveValue(Qualifier qualifier, KClass<?> kClass, InstanceContext instanceContext, Function0<? extends ParametersHolder> function0) {
        Object obj;
        T t = (T) this._koin.getInstanceRegistry().resolveInstance$koin_core(qualifier, kClass, this.scopeQualifier, instanceContext);
        if (t == null) {
            Logger logger = this._koin.getLogger();
            String str = "|- ? t:'" + KClassExtKt.getFullName(kClass) + "' - q:'" + qualifier + "' look in injected parameters";
            Level level = Level.DEBUG;
            if (logger.isAt(level)) {
                logger.display(level, str);
            }
            ParametersHolder firstOrNull = this._parameterStack.firstOrNull();
            Object obj2 = null;
            t = firstOrNull != null ? (T) firstOrNull.getOrNull(kClass) : null;
            if (t == null) {
                Logger logger2 = this._koin.getLogger();
                String str2 = "|- ? t:'" + KClassExtKt.getFullName(kClass) + "' - q:'" + qualifier + "' look at scope source";
                if (logger2.isAt(level)) {
                    logger2.display(level, str2);
                }
                Object obj3 = this._source;
                if (obj3 != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(obj3.getClass()), kClass) && qualifier == null && (obj = this._source) != null) {
                    obj2 = obj;
                }
                t = obj2;
                if (t == null) {
                    Logger logger3 = this._koin.getLogger();
                    String str3 = "|- ? t:'" + KClassExtKt.getFullName(kClass) + "' - q:'" + qualifier + "' look in other scopes";
                    if (logger3.isAt(level)) {
                        logger3.display(level, str3);
                    }
                    t = (T) findInOtherScope(kClass, qualifier, function0);
                    if (t == null) {
                        KoinPlatformTools.INSTANCE.m1639synchronized(this, new Scope$resolveValue$4$1(this));
                        Logger logger4 = this._koin.getLogger();
                        if (logger4.isAt(level)) {
                            logger4.display(level, "|- << parameters");
                        }
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

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0018, code lost:
        if (r4 == null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void throwDefinitionNotFound(org.koin.core.qualifier.Qualifier r4, kotlin.reflect.KClass<?> r5) {
        /*
            r3 = this;
            if (r4 == 0) goto L1a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = " & qualifier:'"
            r0.append(r1)
            r0.append(r4)
            r4 = 39
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            if (r4 != 0) goto L1c
        L1a:
            java.lang.String r4 = ""
        L1c:
            org.koin.core.error.NoBeanDefFoundException r0 = new org.koin.core.error.NoBeanDefFoundException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "No definition found for class:'"
            r1.append(r2)
            java.lang.String r5 = org.koin.ext.KClassExtKt.getFullName(r5)
            r1.append(r5)
            java.lang.String r5 = "' q:'"
            r1.append(r5)
            r1.append(r4)
            java.lang.String r4 = "'. Check your definitions!"
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.throwDefinitionNotFound(org.koin.core.qualifier.Qualifier, kotlin.reflect.KClass):java.lang.Void");
    }

    public final void close() {
        KoinPlatformTools.INSTANCE.m1639synchronized(this, new Scope$close$1(this));
    }

    public String toString() {
        return "['" + this.f1435id + "']";
    }
}
