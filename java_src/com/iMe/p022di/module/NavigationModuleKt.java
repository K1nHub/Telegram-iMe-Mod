package com.iMe.p022di.module;

import com.iMe.navigation.common.router.CommonBottomNavigationRouter;
import com.iMe.navigation.common.router.CommonTabsNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.navigation.wallet.WalletBottomNavigationRouter;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.p030ui.wallet.common.WalletTabFragment;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: NavigationModule.kt */
/* renamed from: com.iMe.di.module.NavigationModuleKt */
/* loaded from: classes3.dex */
public final class NavigationModuleKt {
    private static final StringQualifier COMMON_BOTTOM_NAVIGATOR = QualifierKt.named("COMMON_BOTTOM_NAVIGATOR");
    private static final StringQualifier COMMON_TABS_NAVIGATOR = QualifierKt.named("COMMON_TABS_NAVIGATOR");
    private static final StringQualifier WALLET_ROOT_NAVIGATOR = QualifierKt.named("WALLET_ROOT_NAVIGATOR");
    private static Module presentationNavigationModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1
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
            C12541 c12541 = new Function2<Scope, ParametersHolder, NavigationRouter<MvpFragment>>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final NavigationRouter<MvpFragment> invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CommonBottomNavigationRouter();
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(NavigationRouter.class), common_bottom_navigator, c12541, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
            C12552 c12552 = new Function2<Scope, ParametersHolder, NavigationRouter<MvpFragment>>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final NavigationRouter<MvpFragment> invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CommonTabsNavigationRouter(((Boolean) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Boolean.class))).booleanValue());
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(NavigationRouter.class), common_tabs_navigator, c12552, kind, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            StringQualifier wallet_root_navigator = NavigationModuleKt.getWALLET_ROOT_NAVIGATOR();
            C12563 c12563 = new Function2<Scope, ParametersHolder, NavigationRouter<WalletTabFragment>>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final NavigationRouter<WalletTabFragment> invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletBottomNavigationRouter();
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory3 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(NavigationRouter.class), wallet_root_navigator, c12563, kind, emptyList3));
            module.indexPrimaryType(factoryInstanceFactory3);
            new KoinDefinition(module, factoryInstanceFactory3);
            C12574 c12574 = new Function2<Scope, ParametersHolder, WalletFlowCoordinator>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final WalletFlowCoordinator invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletFlowCoordinator((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (PinCodeCoordinator) single.get(Reflection.getOrCreateKotlinClass(PinCodeCoordinator.class), null, null), (ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) single.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            Kind kind2 = Kind.Singleton;
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletFlowCoordinator.class), null, c12574, kind2, emptyList4));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C12585 c12585 = new Function2<Scope, ParametersHolder, PinCodeCoordinator>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final PinCodeCoordinator invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PinCodeCoordinator();
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(PinCodeCoordinator.class), null, c12585, kind2, emptyList5));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C12596 c12596 = new Function2<Scope, ParametersHolder, TokenBuyCoordinator>() { // from class: com.iMe.di.module.NavigationModuleKt$presentationNavigationModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final TokenBuyCoordinator invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TokenBuyCoordinator((ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(TokenBuyCoordinator.class), null, c12596, kind2, emptyList6));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
        }
    }, 1, null);

    public static final StringQualifier getCOMMON_BOTTOM_NAVIGATOR() {
        return COMMON_BOTTOM_NAVIGATOR;
    }

    public static final StringQualifier getCOMMON_TABS_NAVIGATOR() {
        return COMMON_TABS_NAVIGATOR;
    }

    public static final StringQualifier getWALLET_ROOT_NAVIGATOR() {
        return WALLET_ROOT_NAVIGATOR;
    }

    public static final Module getPresentationNavigationModule() {
        return presentationNavigationModule;
    }
}
