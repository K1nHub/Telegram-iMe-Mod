package com.smedialink.p025di.module;

import com.smedialink.p031ui.adapter.FiltersRecycleAdapter;
import com.smedialink.p031ui.adapter.provider.BannerProvider;
import com.smedialink.p031ui.adapter.provider.BinanceAccountProvider;
import com.smedialink.p031ui.adapter.provider.BinanceTokenBalanceProvider;
import com.smedialink.p031ui.adapter.provider.BinanceTransactionProvider;
import com.smedialink.p031ui.adapter.provider.CampaignProvider;
import com.smedialink.p031ui.adapter.provider.CardButtonProvider;
import com.smedialink.p031ui.adapter.provider.CategoryWithCampaignsProvider;
import com.smedialink.p031ui.adapter.provider.CexProtocolProvider;
import com.smedialink.p031ui.adapter.provider.CreateAccountProvider;
import com.smedialink.p031ui.adapter.provider.CreateCampaignProvider;
import com.smedialink.p031ui.adapter.provider.CryptoAccountProvider;
import com.smedialink.p031ui.adapter.provider.DexProtocolProvider;
import com.smedialink.p031ui.adapter.provider.FilterProvider;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.adapter.provider.HeaderProvider;
import com.smedialink.p031ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.smedialink.p031ui.adapter.provider.HeaderWithRightButtonProvider;
import com.smedialink.p031ui.adapter.provider.NftCollectionProvider;
import com.smedialink.p031ui.adapter.provider.NftTokenProvider;
import com.smedialink.p031ui.adapter.provider.SelectTokenProvider;
import com.smedialink.p031ui.adapter.provider.SelectableHeaderProvider;
import com.smedialink.p031ui.adapter.provider.ServiceProvider;
import com.smedialink.p031ui.adapter.provider.SimplexFooterProvider;
import com.smedialink.p031ui.adapter.provider.SimplexProductProvider;
import com.smedialink.p031ui.adapter.provider.StakingCalculatorProgrammeProvider;
import com.smedialink.p031ui.adapter.provider.StakingDashboardProvider;
import com.smedialink.p031ui.adapter.provider.StakingOperationProvider;
import com.smedialink.p031ui.adapter.provider.StakingProgrammeProvider;
import com.smedialink.p031ui.adapter.provider.TokenBalanceProvider;
import com.smedialink.p031ui.adapter.provider.TokenTransactionProvider;
import com.smedialink.p031ui.adapter.provider.TotalBalanceProvider;
import com.smedialink.p031ui.wallet.home.p032v2.adapter.BannersRecycleAdapter;
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
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: ItemProviderModule.kt */
/* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1 */
/* loaded from: classes3.dex */
final class ItemProviderModuleKt$presentationItemProviderModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final ItemProviderModuleKt$presentationItemProviderModule$1 INSTANCE = new ItemProviderModuleKt$presentationItemProviderModule$1();

    ItemProviderModuleKt$presentationItemProviderModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C13191 extends Lambda implements Function2<Scope, ParametersHolder, BannerProvider> {
        public static final C13191 INSTANCE = new C13191();

        C13191() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BannerProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BannerProvider((BannersRecycleAdapter) factory.get(Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13302 extends Lambda implements Function2<Scope, ParametersHolder, CreateAccountProvider> {
        public static final C13302 INSTANCE = new C13302();

        C13302() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateAccountProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CreateAccountProvider();
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Module module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        List emptyList6;
        List emptyList7;
        List emptyList8;
        List emptyList9;
        List emptyList10;
        List emptyList11;
        List emptyList12;
        List emptyList13;
        List emptyList14;
        List emptyList15;
        List emptyList16;
        List emptyList17;
        List emptyList18;
        List emptyList19;
        List emptyList20;
        List emptyList21;
        List emptyList22;
        List emptyList23;
        List emptyList24;
        List emptyList25;
        List emptyList26;
        List emptyList27;
        List emptyList28;
        List emptyList29;
        List emptyList30;
        List emptyList31;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C13191 c13191 = C13191.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BannerProvider.class), null, c13191, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13302 c13302 = C13302.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, c13302, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13413 c13413 = C13413.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, c13413, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13444 c13444 = C13444.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, c13444, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C13455 c13455 = C13455.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, c13455, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C13466 c13466 = C13466.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, c13466, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C13477 c13477 = C13477.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, c13477, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C13488 c13488 = C13488.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectTokenProvider.class), null, c13488, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C13499 c13499 = C13499.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, c13499, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C132010 c132010 = C132010.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, c132010, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C132111 c132111 = C132111.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, c132111, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C132212 c132212 = C132212.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, c132212, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C132313 c132313 = C132313.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, c132313, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C132414 c132414 = C132414.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, c132414, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C132515 c132515 = C132515.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, c132515, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C132616 c132616 = C132616.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, c132616, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C132717 c132717 = C132717.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, c132717, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C132818 c132818 = C132818.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, c132818, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C132919 c132919 = C132919.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, c132919, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C133120 c133120 = C133120.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, c133120, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C133221 c133221 = C133221.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, c133221, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C133322 c133322 = C133322.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, c133322, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C133423 c133423 = C133423.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, c133423, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C133524 c133524 = C133524.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, c133524, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C133625 c133625 = C133625.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, c133625, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C133726 c133726 = C133726.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FilterProvider.class), null, c133726, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
        C133827 c133827 = C133827.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, c133827, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new Pair(module, factoryInstanceFactory27);
        C133928 c133928 = C133928.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, c133928, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new Pair(module, factoryInstanceFactory28);
        C134029 c134029 = C134029.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(StakingDashboardProvider.class), null, c134029, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new Pair(module, factoryInstanceFactory29);
        C134230 c134230 = C134230.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, c134230, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new Pair(module, factoryInstanceFactory30);
        C134331 c134331 = C134331.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, c134331, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new Pair(module, factoryInstanceFactory31);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13413 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccountProvider> {
        public static final C13413 INSTANCE = new C13413();

        C13413() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoAccountProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoAccountProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13444 extends Lambda implements Function2<Scope, ParametersHolder, HeaderProvider> {
        public static final C13444 INSTANCE = new C13444();

        C13444() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final HeaderProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new HeaderProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13455 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithNetworkSwitcherProvider> {
        public static final C13455 INSTANCE = new C13455();

        C13455() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final HeaderWithNetworkSwitcherProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new HeaderWithNetworkSwitcherProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13466 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithRightButtonProvider> {
        public static final C13466 INSTANCE = new C13466();

        C13466() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final HeaderWithRightButtonProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new HeaderWithRightButtonProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C13477 extends Lambda implements Function2<Scope, ParametersHolder, SelectableHeaderProvider> {
        public static final C13477 INSTANCE = new C13477();

        C13477() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SelectableHeaderProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SelectableHeaderProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C13488 extends Lambda implements Function2<Scope, ParametersHolder, SelectTokenProvider> {
        public static final C13488 INSTANCE = new C13488();

        C13488() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SelectTokenProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SelectTokenProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C13499 extends Lambda implements Function2<Scope, ParametersHolder, GlobalStateProvider> {
        public static final C13499 INSTANCE = new C13499();

        C13499() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GlobalStateProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new GlobalStateProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C132010 extends Lambda implements Function2<Scope, ParametersHolder, ServiceProvider> {
        public static final C132010 INSTANCE = new C132010();

        C132010() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ServiceProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ServiceProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C132111 extends Lambda implements Function2<Scope, ParametersHolder, TokenBalanceProvider> {
        public static final C132111 INSTANCE = new C132111();

        C132111() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TokenBalanceProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TokenBalanceProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C132212 extends Lambda implements Function2<Scope, ParametersHolder, TotalBalanceProvider> {
        public static final C132212 INSTANCE = new C132212();

        C132212() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TotalBalanceProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TotalBalanceProvider((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C132313 extends Lambda implements Function2<Scope, ParametersHolder, NftCollectionProvider> {
        public static final C132313 INSTANCE = new C132313();

        C132313() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NftCollectionProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new NftCollectionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C132414 extends Lambda implements Function2<Scope, ParametersHolder, NftTokenProvider> {
        public static final C132414 INSTANCE = new C132414();

        C132414() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NftTokenProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new NftTokenProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C132515 extends Lambda implements Function2<Scope, ParametersHolder, CexProtocolProvider> {
        public static final C132515 INSTANCE = new C132515();

        C132515() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CexProtocolProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CexProtocolProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C132616 extends Lambda implements Function2<Scope, ParametersHolder, DexProtocolProvider> {
        public static final C132616 INSTANCE = new C132616();

        C132616() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DexProtocolProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DexProtocolProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C132717 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTokenBalanceProvider> {
        public static final C132717 INSTANCE = new C132717();

        C132717() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinanceTokenBalanceProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinanceTokenBalanceProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C132818 extends Lambda implements Function2<Scope, ParametersHolder, BinanceAccountProvider> {
        public static final C132818 INSTANCE = new C132818();

        C132818() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinanceAccountProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinanceAccountProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C132919 extends Lambda implements Function2<Scope, ParametersHolder, CardButtonProvider> {
        public static final C132919 INSTANCE = new C132919();

        C132919() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CardButtonProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CardButtonProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C133120 extends Lambda implements Function2<Scope, ParametersHolder, TokenTransactionProvider> {
        public static final C133120 INSTANCE = new C133120();

        C133120() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TokenTransactionProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TokenTransactionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C133221 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationProvider> {
        public static final C133221 INSTANCE = new C133221();

        C133221() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingOperationProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingOperationProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C133322 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTransactionProvider> {
        public static final C133322 INSTANCE = new C133322();

        C133322() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinanceTransactionProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinanceTransactionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C133423 extends Lambda implements Function2<Scope, ParametersHolder, SimplexProductProvider> {
        public static final C133423 INSTANCE = new C133423();

        C133423() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SimplexProductProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SimplexProductProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C133524 extends Lambda implements Function2<Scope, ParametersHolder, SimplexFooterProvider> {
        public static final C133524 INSTANCE = new C133524();

        C133524() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SimplexFooterProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SimplexFooterProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C133625 extends Lambda implements Function2<Scope, ParametersHolder, CategoryWithCampaignsProvider> {
        public static final C133625 INSTANCE = new C133625();

        C133625() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CategoryWithCampaignsProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CategoryWithCampaignsProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C133726 extends Lambda implements Function2<Scope, ParametersHolder, FilterProvider> {
        public static final C133726 INSTANCE = new C133726();

        C133726() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FilterProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new FilterProvider((FiltersRecycleAdapter) factory.get(Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C133827 extends Lambda implements Function2<Scope, ParametersHolder, CampaignProvider> {
        public static final C133827 INSTANCE = new C133827();

        C133827() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CampaignProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CampaignProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C133928 extends Lambda implements Function2<Scope, ParametersHolder, CreateCampaignProvider> {
        public static final C133928 INSTANCE = new C133928();

        C133928() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateCampaignProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CreateCampaignProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C134029 extends Lambda implements Function2<Scope, ParametersHolder, StakingDashboardProvider> {
        public static final C134029 INSTANCE = new C134029();

        C134029() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingDashboardProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingDashboardProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C134230 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammeProvider> {
        public static final C134230 INSTANCE = new C134230();

        C134230() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingProgrammeProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingProgrammeProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C134331 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammeProvider> {
        public static final C134331 INSTANCE = new C134331();

        C134331() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingCalculatorProgrammeProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingCalculatorProgrammeProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }
}
