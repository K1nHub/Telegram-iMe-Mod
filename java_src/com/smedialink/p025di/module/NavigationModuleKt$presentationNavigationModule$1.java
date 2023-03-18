package com.smedialink.p025di.module;

import com.smedialink.navigation.common.router.CommonBottomNavigationRouter;
import com.smedialink.navigation.common.router.CommonTabsNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import com.smedialink.navigation.wallet.WalletBottomNavigationRouter;
import com.smedialink.navigation.wallet.coordinator.PinCodeCoordinator;
import com.smedialink.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.smedialink.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.p031ui.wallet.common.WalletTabFragment;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.system.ResourceManager;
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
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: NavigationModule.kt */
/* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1 */
/* loaded from: classes3.dex */
final class NavigationModuleKt$presentationNavigationModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final NavigationModuleKt$presentationNavigationModule$1 INSTANCE = new NavigationModuleKt$presentationNavigationModule$1();

    NavigationModuleKt$presentationNavigationModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C13591 extends Lambda implements Function2<Scope, ParametersHolder, NavigationRouter<MvpFragment>> {
        public static final C13591 INSTANCE = new C13591();

        C13591() {
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
        C13591 c13591 = C13591.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(NavigationRouter.class), common_bottom_navigator, c13591, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
        C13602 c13602 = C13602.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(NavigationRouter.class), common_tabs_navigator, c13602, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        StringQualifier wallet_root_navigator = NavigationModuleKt.getWALLET_ROOT_NAVIGATOR();
        C13613 c13613 = C13613.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory3 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(NavigationRouter.class), wallet_root_navigator, c13613, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13624 c13624 = C13624.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        Kind kind2 = Kind.Singleton;
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletFlowCoordinator.class), null, c13624, kind2, emptyList4));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C13635 c13635 = C13635.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(PinCodeCoordinator.class), null, c13635, kind2, emptyList5));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C13646 c13646 = C13646.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(TokenBuyCoordinator.class), null, c13646, kind2, emptyList6));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavigationModule.kt */
    /* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13613 extends Lambda implements Function2<Scope, ParametersHolder, NavigationRouter<WalletTabFragment>> {
        public static final C13613 INSTANCE = new C13613();

        C13613() {
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
    /* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13624 extends Lambda implements Function2<Scope, ParametersHolder, WalletFlowCoordinator> {
        public static final C13624 INSTANCE = new C13624();

        C13624() {
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
    /* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13635 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeCoordinator> {
        public static final C13635 INSTANCE = new C13635();

        C13635() {
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
    /* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13646 extends Lambda implements Function2<Scope, ParametersHolder, TokenBuyCoordinator> {
        public static final C13646 INSTANCE = new C13646();

        C13646() {
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
    /* renamed from: com.smedialink.di.module.NavigationModuleKt$presentationNavigationModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13602 extends Lambda implements Function2<Scope, ParametersHolder, NavigationRouter<MvpFragment>> {
        public static final C13602 INSTANCE = new C13602();

        C13602() {
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
