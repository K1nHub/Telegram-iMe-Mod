package com.iMe.p023di.module;

import com.iMe.navigation.common.router.CommonBottomNavigationRouter;
import com.iMe.navigation.common.router.CommonTabsNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.navigation.wallet.WalletBottomNavigationRouter;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.wallet.common.WalletTabFragment;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
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
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: NavigationModule.kt */
/* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1 */
/* loaded from: classes3.dex */
final class NavigationModuleKt$presentationNavigationModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final NavigationModuleKt$presentationNavigationModule$1 INSTANCE = new NavigationModuleKt$presentationNavigationModule$1();

    NavigationModuleKt$presentationNavigationModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C13201 extends Lambda implements Function2<Scope, ParametersHolder, NavigationRouter<MvpFragment>> {
        public static final C13201 INSTANCE = new C13201();

        C13201() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NavigationRouter<MvpFragment> invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CommonBottomNavigationRouter();
        }
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
        List emptyList5;
        List emptyList6;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        StringQualifier common_bottom_navigator = NavigationModuleKt.getCOMMON_BOTTOM_NAVIGATOR();
        C13201 c13201 = C13201.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(NavigationRouter.class), common_bottom_navigator, c13201, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
        C13212 c13212 = C13212.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(NavigationRouter.class), common_tabs_navigator, c13212, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        StringQualifier wallet_root_navigator = NavigationModuleKt.getWALLET_ROOT_NAVIGATOR();
        C13223 c13223 = C13223.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory3 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(NavigationRouter.class), wallet_root_navigator, c13223, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        C13234 c13234 = C13234.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        Kind kind2 = Kind.Singleton;
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletFlowCoordinator.class), null, c13234, kind2, emptyList4));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C13245 c13245 = C13245.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(PinCodeCoordinator.class), null, c13245, kind2, emptyList5));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C13256 c13256 = C13256.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(TokenBuyCoordinator.class), null, c13256, kind2, emptyList6));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13223 extends Lambda implements Function2<Scope, ParametersHolder, NavigationRouter<WalletTabFragment>> {
        public static final C13223 INSTANCE = new C13223();

        C13223() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NavigationRouter<WalletTabFragment> invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletBottomNavigationRouter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13234 extends Lambda implements Function2<Scope, ParametersHolder, WalletFlowCoordinator> {
        public static final C13234 INSTANCE = new C13234();

        C13234() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletFlowCoordinator invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletFlowCoordinator((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (PinCodeCoordinator) single.get(Reflection.getOrCreateKotlinClass(PinCodeCoordinator.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13245 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeCoordinator> {
        public static final C13245 INSTANCE = new C13245();

        C13245() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PinCodeCoordinator invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new PinCodeCoordinator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13256 extends Lambda implements Function2<Scope, ParametersHolder, TokenBuyCoordinator> {
        public static final C13256 INSTANCE = new C13256();

        C13256() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TokenBuyCoordinator invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TokenBuyCoordinator((ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13212 extends Lambda implements Function2<Scope, ParametersHolder, NavigationRouter<MvpFragment>> {
        public static final C13212 INSTANCE = new C13212();

        C13212() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NavigationRouter<MvpFragment> invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CommonTabsNavigationRouter(((Boolean) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Boolean.class))).booleanValue());
        }
    }
}