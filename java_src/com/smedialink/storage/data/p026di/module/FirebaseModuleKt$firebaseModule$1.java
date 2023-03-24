package com.smedialink.storage.data.p026di.module;

import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.ktx.AnalyticsKt;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.smedialink.storage.data.manager.common.EnvironmentManager;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: FirebaseModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.FirebaseModuleKt$firebaseModule$1 */
/* loaded from: classes3.dex */
final class FirebaseModuleKt$firebaseModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final FirebaseModuleKt$firebaseModule$1 INSTANCE = new FirebaseModuleKt$firebaseModule$1();

    FirebaseModuleKt$firebaseModule$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Module module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C15341 c15341 = C15341.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(FirebaseDynamicLinks.class), null, c15341, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C15352 c15352 = C15352.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(FirebaseRemoteConfig.class), null, c15352, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C15363 c15363 = C15363.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(FirebaseAnalytics.class), null, c15363, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C15374 c15374 = C15374.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(FirebaseApp.class), null, c15374, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C15363 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseAnalytics> {
        public static final C15363 INSTANCE = new C15363();

        C15363() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FirebaseAnalytics invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return AnalyticsKt.getAnalytics(Firebase.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C15374 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseApp> {
        public static final C15374 INSTANCE = new C15374();

        C15374() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FirebaseApp invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return FirebaseApp.getInstance(EnvironmentManager.INSTANCE.getEnvironment().name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15341 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseDynamicLinks> {
        public static final C15341 INSTANCE = new C15341();

        C15341() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FirebaseDynamicLinks invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return FirebaseDynamicLinks.getInstance((FirebaseApp) single.get(Reflection.getOrCreateKotlinClass(FirebaseApp.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C15352 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseRemoteConfig> {
        public static final C15352 INSTANCE = new C15352();

        C15352() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FirebaseRemoteConfig invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return FirebaseModuleKt.initRemoteConfig((FirebaseApp) single.get(Reflection.getOrCreateKotlinClass(FirebaseApp.class), null, null));
        }
    }
}
