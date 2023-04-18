package org.koin.core.registry;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.module.Module;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: ScopeRegistry.kt */
/* loaded from: classes4.dex */
public final class ScopeRegistry {
    public static final Companion Companion = new Companion(null);
    private static final StringQualifier rootScopeQualifier = QualifierKt.m56_q("_root_");
    private final Koin _koin;
    private final HashSet<Qualifier> _scopeDefinitions;
    private final Map<String, Scope> _scopes;
    private final Scope rootScope;

    public ScopeRegistry(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this._koin = _koin;
        HashSet<Qualifier> hashSet = new HashSet<>();
        this._scopeDefinitions = hashSet;
        Map<String, Scope> safeHashMap = KoinPlatformTools.INSTANCE.safeHashMap();
        this._scopes = safeHashMap;
        Scope scope = new Scope(rootScopeQualifier, "_root_", true, _koin);
        this.rootScope = scope;
        hashSet.add(scope.getScopeQualifier());
        safeHashMap.put(scope.getId(), scope);
    }

    public final Scope getRootScope() {
        return this.rootScope;
    }

    public final void deleteScope$koin_core(Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this._koin.getInstanceRegistry().dropScopeInstances$koin_core(scope);
        this._scopes.remove(scope.getId());
    }

    private final void loadModule(Module module) {
        this._scopeDefinitions.addAll(module.getScopes());
    }

    /* compiled from: ScopeRegistry.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StringQualifier getRootScopeQualifier() {
            return ScopeRegistry.rootScopeQualifier;
        }
    }

    public final void loadScopes(Set<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        for (Module module : modules) {
            loadModule(module);
        }
    }
}
