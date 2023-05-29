package com.iMe.storage.data.p026di.module;

import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.ktx.AnalyticsKt;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: FirebaseModule.kt */
/* renamed from: com.iMe.storage.data.di.module.FirebaseModuleKt$firebaseModule$1 */
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
        C16491 c16491 = C16491.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(FirebaseDynamicLinks.class), null, c16491, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C16502 c16502 = C16502.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(FirebaseRemoteConfig.class), null, c16502, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C16513 c16513 = C16513.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(FirebaseAnalytics.class), null, c16513, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C16524 c16524 = C16524.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(FirebaseApp.class), null, c16524, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16513 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseAnalytics> {
        public static final C16513 INSTANCE = new C16513();

        C16513() {
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
    /* renamed from: com.iMe.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C16524 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseApp> {
        public static final C16524 INSTANCE = new C16524();

        C16524() {
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
    /* renamed from: com.iMe.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16491 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseDynamicLinks> {
        public static final C16491 INSTANCE = new C16491();

        C16491() {
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
    /* renamed from: com.iMe.storage.data.di.module.FirebaseModuleKt$firebaseModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16502 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseRemoteConfig> {
        public static final C16502 INSTANCE = new C16502();

        C16502() {
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
