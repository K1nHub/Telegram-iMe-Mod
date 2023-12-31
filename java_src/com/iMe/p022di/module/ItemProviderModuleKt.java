package com.iMe.p022di.module;

import com.iMe.p030ui.adapter.FiltersRecycleAdapter;
import com.iMe.p030ui.adapter.provider.AddTokensProvider;
import com.iMe.p030ui.adapter.provider.AnimatedHeaderProvider;
import com.iMe.p030ui.adapter.provider.BannerProvider;
import com.iMe.p030ui.adapter.provider.BinanceAccountProvider;
import com.iMe.p030ui.adapter.provider.BinanceTokenBalanceProvider;
import com.iMe.p030ui.adapter.provider.BinanceTransactionProvider;
import com.iMe.p030ui.adapter.provider.BlockchainManagementActionButtonProvider;
import com.iMe.p030ui.adapter.provider.BlockchainManagementWalletProvider;
import com.iMe.p030ui.adapter.provider.CampaignProvider;
import com.iMe.p030ui.adapter.provider.CardButtonProvider;
import com.iMe.p030ui.adapter.provider.CategoryWithCampaignsProvider;
import com.iMe.p030ui.adapter.provider.CexProtocolProvider;
import com.iMe.p030ui.adapter.provider.CreateAccountProvider;
import com.iMe.p030ui.adapter.provider.CreateCampaignProvider;
import com.iMe.p030ui.adapter.provider.CryptoAccountProvider;
import com.iMe.p030ui.adapter.provider.CryptoBoxActionProvider;
import com.iMe.p030ui.adapter.provider.CryptoBoxProvider;
import com.iMe.p030ui.adapter.provider.CryptoBoxesChatProvider;
import com.iMe.p030ui.adapter.provider.CustomTokenProvider;
import com.iMe.p030ui.adapter.provider.DexProtocolProvider;
import com.iMe.p030ui.adapter.provider.FilterProvider;
import com.iMe.p030ui.adapter.provider.FoundTokenProvider;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.adapter.provider.HeaderProvider;
import com.iMe.p030ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.iMe.p030ui.adapter.provider.HeaderWithRightButtonProvider;
import com.iMe.p030ui.adapter.provider.NftCollectionProvider;
import com.iMe.p030ui.adapter.provider.NftTokenProvider;
import com.iMe.p030ui.adapter.provider.SectionProvider;
import com.iMe.p030ui.adapter.provider.SelectableHeaderProvider;
import com.iMe.p030ui.adapter.provider.ServiceProvider;
import com.iMe.p030ui.adapter.provider.SimplexFooterProvider;
import com.iMe.p030ui.adapter.provider.SimplexProductProvider;
import com.iMe.p030ui.adapter.provider.SortingListHeaderProvider;
import com.iMe.p030ui.adapter.provider.StakingCalculatorProgrammeProvider;
import com.iMe.p030ui.adapter.provider.StakingDashboardProvider;
import com.iMe.p030ui.adapter.provider.StakingOperationProvider;
import com.iMe.p030ui.adapter.provider.StakingProgrammeProvider;
import com.iMe.p030ui.adapter.provider.TokenBalanceProvider;
import com.iMe.p030ui.adapter.provider.TokenTransactionProvider;
import com.iMe.p030ui.adapter.provider.TonFragmentPremiumProvider;
import com.iMe.p030ui.adapter.provider.TonFragmentProductProvider;
import com.iMe.p030ui.adapter.provider.TotalBalanceProvider;
import com.iMe.p030ui.adapter.provider.TweetDatesProvider;
import com.iMe.p030ui.adapter.provider.TweetProvider;
import com.iMe.p030ui.adapter.provider.TwitterInviteProvider;
import com.iMe.p030ui.adapter.provider.TwitterUserProvider;
import com.iMe.p030ui.wallet.home.adapter.BannersRecycleAdapter;
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
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: ItemProviderModule.kt */
/* renamed from: com.iMe.di.module.ItemProviderModuleKt */
/* loaded from: classes3.dex */
public final class ItemProviderModuleKt {
    private static Module presentationItemProviderModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1
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
            List emptyList32;
            List emptyList33;
            List emptyList34;
            List emptyList35;
            List emptyList36;
            List emptyList37;
            List emptyList38;
            List emptyList39;
            List emptyList40;
            List emptyList41;
            List emptyList42;
            List emptyList43;
            List emptyList44;
            List emptyList45;
            List emptyList46;
            List emptyList47;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C12031 c12031 = new Function2<Scope, ParametersHolder, BannerProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final BannerProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BannerProvider((BannersRecycleAdapter) factory.get(Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BannerProvider.class), null, c12031, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            C12142 c12142 = new Function2<Scope, ParametersHolder, CreateAccountProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final CreateAccountProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CreateAccountProvider();
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, c12142, kind, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            C12253 c12253 = new Function2<Scope, ParametersHolder, CryptoAccountProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final CryptoAccountProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoAccountProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, c12253, kind, emptyList3));
            module.indexPrimaryType(factoryInstanceFactory3);
            new KoinDefinition(module, factoryInstanceFactory3);
            C12364 c12364 = new Function2<Scope, ParametersHolder, HeaderProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final HeaderProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new HeaderProvider();
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, c12364, kind, emptyList4));
            module.indexPrimaryType(factoryInstanceFactory4);
            new KoinDefinition(module, factoryInstanceFactory4);
            C12455 c12455 = new Function2<Scope, ParametersHolder, HeaderWithNetworkSwitcherProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final HeaderWithNetworkSwitcherProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new HeaderWithNetworkSwitcherProvider();
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, c12455, kind, emptyList5));
            module.indexPrimaryType(factoryInstanceFactory5);
            new KoinDefinition(module, factoryInstanceFactory5);
            C12466 c12466 = new Function2<Scope, ParametersHolder, HeaderWithRightButtonProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final HeaderWithRightButtonProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new HeaderWithRightButtonProvider();
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, c12466, kind, emptyList6));
            module.indexPrimaryType(factoryInstanceFactory6);
            new KoinDefinition(module, factoryInstanceFactory6);
            C12477 c12477 = new Function2<Scope, ParametersHolder, SelectableHeaderProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final SelectableHeaderProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SelectableHeaderProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, c12477, kind, emptyList7));
            module.indexPrimaryType(factoryInstanceFactory7);
            new KoinDefinition(module, factoryInstanceFactory7);
            C12488 c12488 = new Function2<Scope, ParametersHolder, AddTokensProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final AddTokensProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AddTokensProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(AddTokensProvider.class), null, c12488, kind, emptyList8));
            module.indexPrimaryType(factoryInstanceFactory8);
            new KoinDefinition(module, factoryInstanceFactory8);
            C12499 c12499 = new Function2<Scope, ParametersHolder, GlobalStateProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final GlobalStateProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new GlobalStateProvider();
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, c12499, kind, emptyList9));
            module.indexPrimaryType(factoryInstanceFactory9);
            new KoinDefinition(module, factoryInstanceFactory9);
            C120410 c120410 = new Function2<Scope, ParametersHolder, ServiceProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final ServiceProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ServiceProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, c120410, kind, emptyList10));
            module.indexPrimaryType(factoryInstanceFactory10);
            new KoinDefinition(module, factoryInstanceFactory10);
            C120511 c120511 = new Function2<Scope, ParametersHolder, TokenBalanceProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final TokenBalanceProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TokenBalanceProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, c120511, kind, emptyList11));
            module.indexPrimaryType(factoryInstanceFactory11);
            new KoinDefinition(module, factoryInstanceFactory11);
            C120612 c120612 = new Function2<Scope, ParametersHolder, TotalBalanceProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final TotalBalanceProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TotalBalanceProvider();
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, c120612, kind, emptyList12));
            module.indexPrimaryType(factoryInstanceFactory12);
            new KoinDefinition(module, factoryInstanceFactory12);
            C120713 c120713 = new Function2<Scope, ParametersHolder, NftCollectionProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final NftCollectionProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new NftCollectionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, c120713, kind, emptyList13));
            module.indexPrimaryType(factoryInstanceFactory13);
            new KoinDefinition(module, factoryInstanceFactory13);
            C120814 c120814 = new Function2<Scope, ParametersHolder, NftTokenProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final NftTokenProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new NftTokenProvider();
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, c120814, kind, emptyList14));
            module.indexPrimaryType(factoryInstanceFactory14);
            new KoinDefinition(module, factoryInstanceFactory14);
            C120915 c120915 = new Function2<Scope, ParametersHolder, CexProtocolProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final CexProtocolProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CexProtocolProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, c120915, kind, emptyList15));
            module.indexPrimaryType(factoryInstanceFactory15);
            new KoinDefinition(module, factoryInstanceFactory15);
            C121016 c121016 = new Function2<Scope, ParametersHolder, DexProtocolProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final DexProtocolProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DexProtocolProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, c121016, kind, emptyList16));
            module.indexPrimaryType(factoryInstanceFactory16);
            new KoinDefinition(module, factoryInstanceFactory16);
            C121117 c121117 = new Function2<Scope, ParametersHolder, BinanceTokenBalanceProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final BinanceTokenBalanceProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BinanceTokenBalanceProvider();
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, c121117, kind, emptyList17));
            module.indexPrimaryType(factoryInstanceFactory17);
            new KoinDefinition(module, factoryInstanceFactory17);
            C121218 c121218 = new Function2<Scope, ParametersHolder, BinanceAccountProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final BinanceAccountProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BinanceAccountProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, c121218, kind, emptyList18));
            module.indexPrimaryType(factoryInstanceFactory18);
            new KoinDefinition(module, factoryInstanceFactory18);
            C121319 c121319 = new Function2<Scope, ParametersHolder, CardButtonProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final CardButtonProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CardButtonProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, c121319, kind, emptyList19));
            module.indexPrimaryType(factoryInstanceFactory19);
            new KoinDefinition(module, factoryInstanceFactory19);
            C121520 c121520 = new Function2<Scope, ParametersHolder, TokenTransactionProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.20
                @Override // kotlin.jvm.functions.Function2
                public final TokenTransactionProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TokenTransactionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, c121520, kind, emptyList20));
            module.indexPrimaryType(factoryInstanceFactory20);
            new KoinDefinition(module, factoryInstanceFactory20);
            C121621 c121621 = new Function2<Scope, ParametersHolder, StakingOperationProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final StakingOperationProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingOperationProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, c121621, kind, emptyList21));
            module.indexPrimaryType(factoryInstanceFactory21);
            new KoinDefinition(module, factoryInstanceFactory21);
            C121722 c121722 = new Function2<Scope, ParametersHolder, BinanceTransactionProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final BinanceTransactionProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BinanceTransactionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, c121722, kind, emptyList22));
            module.indexPrimaryType(factoryInstanceFactory22);
            new KoinDefinition(module, factoryInstanceFactory22);
            C121823 c121823 = new Function2<Scope, ParametersHolder, SimplexProductProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final SimplexProductProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SimplexProductProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, c121823, kind, emptyList23));
            module.indexPrimaryType(factoryInstanceFactory23);
            new KoinDefinition(module, factoryInstanceFactory23);
            C121924 c121924 = new Function2<Scope, ParametersHolder, SimplexFooterProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final SimplexFooterProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SimplexFooterProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, c121924, kind, emptyList24));
            module.indexPrimaryType(factoryInstanceFactory24);
            new KoinDefinition(module, factoryInstanceFactory24);
            C122025 c122025 = new Function2<Scope, ParametersHolder, CategoryWithCampaignsProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final CategoryWithCampaignsProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CategoryWithCampaignsProvider();
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, c122025, kind, emptyList25));
            module.indexPrimaryType(factoryInstanceFactory25);
            new KoinDefinition(module, factoryInstanceFactory25);
            C122126 c122126 = new Function2<Scope, ParametersHolder, FilterProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final FilterProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FilterProvider((FiltersRecycleAdapter) factory.get(Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FilterProvider.class), null, c122126, kind, emptyList26));
            module.indexPrimaryType(factoryInstanceFactory26);
            new KoinDefinition(module, factoryInstanceFactory26);
            C122227 c122227 = new Function2<Scope, ParametersHolder, CampaignProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.27
                @Override // kotlin.jvm.functions.Function2
                public final CampaignProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CampaignProvider();
                }
            };
            StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
            emptyList27 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, c122227, kind, emptyList27));
            module.indexPrimaryType(factoryInstanceFactory27);
            new KoinDefinition(module, factoryInstanceFactory27);
            C122328 c122328 = new Function2<Scope, ParametersHolder, CreateCampaignProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.28
                @Override // kotlin.jvm.functions.Function2
                public final CreateCampaignProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CreateCampaignProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
            emptyList28 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, c122328, kind, emptyList28));
            module.indexPrimaryType(factoryInstanceFactory28);
            new KoinDefinition(module, factoryInstanceFactory28);
            C122429 c122429 = new Function2<Scope, ParametersHolder, StakingDashboardProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.29
                @Override // kotlin.jvm.functions.Function2
                public final StakingDashboardProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingDashboardProvider();
                }
            };
            StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
            emptyList29 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(StakingDashboardProvider.class), null, c122429, kind, emptyList29));
            module.indexPrimaryType(factoryInstanceFactory29);
            new KoinDefinition(module, factoryInstanceFactory29);
            C122630 c122630 = new Function2<Scope, ParametersHolder, StakingProgrammeProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.30
                @Override // kotlin.jvm.functions.Function2
                public final StakingProgrammeProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingProgrammeProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
            emptyList30 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, c122630, kind, emptyList30));
            module.indexPrimaryType(factoryInstanceFactory30);
            new KoinDefinition(module, factoryInstanceFactory30);
            C122731 c122731 = new Function2<Scope, ParametersHolder, StakingCalculatorProgrammeProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.31
                @Override // kotlin.jvm.functions.Function2
                public final StakingCalculatorProgrammeProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingCalculatorProgrammeProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
            emptyList31 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, c122731, kind, emptyList31));
            module.indexPrimaryType(factoryInstanceFactory31);
            new KoinDefinition(module, factoryInstanceFactory31);
            C122832 c122832 = new Function2<Scope, ParametersHolder, TweetProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.32
                @Override // kotlin.jvm.functions.Function2
                public final TweetProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TweetProvider();
                }
            };
            StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
            emptyList32 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(TweetProvider.class), null, c122832, kind, emptyList32));
            module.indexPrimaryType(factoryInstanceFactory32);
            new KoinDefinition(module, factoryInstanceFactory32);
            C122933 c122933 = new Function2<Scope, ParametersHolder, TweetDatesProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.33
                @Override // kotlin.jvm.functions.Function2
                public final TweetDatesProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TweetDatesProvider();
                }
            };
            StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
            emptyList33 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, c122933, kind, emptyList33));
            module.indexPrimaryType(factoryInstanceFactory33);
            new KoinDefinition(module, factoryInstanceFactory33);
            C123034 c123034 = new Function2<Scope, ParametersHolder, TwitterUserProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.34
                @Override // kotlin.jvm.functions.Function2
                public final TwitterUserProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TwitterUserProvider();
                }
            };
            StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
            emptyList34 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, c123034, kind, emptyList34));
            module.indexPrimaryType(factoryInstanceFactory34);
            new KoinDefinition(module, factoryInstanceFactory34);
            C123135 c123135 = new Function2<Scope, ParametersHolder, TwitterInviteProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.35
                @Override // kotlin.jvm.functions.Function2
                public final TwitterInviteProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TwitterInviteProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
            emptyList35 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, c123135, kind, emptyList35));
            module.indexPrimaryType(factoryInstanceFactory35);
            new KoinDefinition(module, factoryInstanceFactory35);
            C123236 c123236 = new Function2<Scope, ParametersHolder, FoundTokenProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.36
                @Override // kotlin.jvm.functions.Function2
                public final FoundTokenProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FoundTokenProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
            emptyList36 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(FoundTokenProvider.class), null, c123236, kind, emptyList36));
            module.indexPrimaryType(factoryInstanceFactory36);
            new KoinDefinition(module, factoryInstanceFactory36);
            C123337 c123337 = new Function2<Scope, ParametersHolder, CustomTokenProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.37
                @Override // kotlin.jvm.functions.Function2
                public final CustomTokenProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CustomTokenProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
            emptyList37 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(CustomTokenProvider.class), null, c123337, kind, emptyList37));
            module.indexPrimaryType(factoryInstanceFactory37);
            new KoinDefinition(module, factoryInstanceFactory37);
            C123438 c123438 = new Function2<Scope, ParametersHolder, AnimatedHeaderProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.38
                @Override // kotlin.jvm.functions.Function2
                public final AnimatedHeaderProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AnimatedHeaderProvider();
                }
            };
            StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
            emptyList38 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(AnimatedHeaderProvider.class), null, c123438, kind, emptyList38));
            module.indexPrimaryType(factoryInstanceFactory38);
            new KoinDefinition(module, factoryInstanceFactory38);
            C123539 c123539 = new Function2<Scope, ParametersHolder, SortingListHeaderProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.39
                @Override // kotlin.jvm.functions.Function2
                public final SortingListHeaderProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SortingListHeaderProvider();
                }
            };
            StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
            emptyList39 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(SortingListHeaderProvider.class), null, c123539, kind, emptyList39));
            module.indexPrimaryType(factoryInstanceFactory39);
            new KoinDefinition(module, factoryInstanceFactory39);
            C123740 c123740 = new Function2<Scope, ParametersHolder, CryptoBoxesChatProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.40
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxesChatProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxesChatProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
            emptyList40 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(CryptoBoxesChatProvider.class), null, c123740, kind, emptyList40));
            module.indexPrimaryType(factoryInstanceFactory40);
            new KoinDefinition(module, factoryInstanceFactory40);
            C123841 c123841 = new Function2<Scope, ParametersHolder, CryptoBoxProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.41
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
            emptyList41 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(CryptoBoxProvider.class), null, c123841, kind, emptyList41));
            module.indexPrimaryType(factoryInstanceFactory41);
            new KoinDefinition(module, factoryInstanceFactory41);
            C123942 c123942 = new Function2<Scope, ParametersHolder, CryptoBoxActionProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.42
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxActionProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxActionProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
            emptyList42 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(CryptoBoxActionProvider.class), null, c123942, kind, emptyList42));
            module.indexPrimaryType(factoryInstanceFactory42);
            new KoinDefinition(module, factoryInstanceFactory42);
            C124043 c124043 = new Function2<Scope, ParametersHolder, SectionProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.43
                @Override // kotlin.jvm.functions.Function2
                public final SectionProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SectionProvider();
                }
            };
            StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
            emptyList43 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(SectionProvider.class), null, c124043, kind, emptyList43));
            module.indexPrimaryType(factoryInstanceFactory43);
            new KoinDefinition(module, factoryInstanceFactory43);
            C124144 c124144 = new Function2<Scope, ParametersHolder, BlockchainManagementWalletProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.44
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainManagementWalletProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BlockchainManagementWalletProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
            emptyList44 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(BlockchainManagementWalletProvider.class), null, c124144, kind, emptyList44));
            module.indexPrimaryType(factoryInstanceFactory44);
            new KoinDefinition(module, factoryInstanceFactory44);
            C124245 c124245 = new Function2<Scope, ParametersHolder, BlockchainManagementActionButtonProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.45
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainManagementActionButtonProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BlockchainManagementActionButtonProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
            emptyList45 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(BlockchainManagementActionButtonProvider.class), null, c124245, kind, emptyList45));
            module.indexPrimaryType(factoryInstanceFactory45);
            new KoinDefinition(module, factoryInstanceFactory45);
            C124346 c124346 = new Function2<Scope, ParametersHolder, TonFragmentPremiumProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.46
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentPremiumProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonFragmentPremiumProvider();
                }
            };
            StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
            emptyList46 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(TonFragmentPremiumProvider.class), null, c124346, kind, emptyList46));
            module.indexPrimaryType(factoryInstanceFactory46);
            new KoinDefinition(module, factoryInstanceFactory46);
            C124447 c124447 = new Function2<Scope, ParametersHolder, TonFragmentProductProvider>() { // from class: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1.47
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentProductProvider invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonFragmentProductProvider();
                }
            };
            StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
            emptyList47 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(TonFragmentProductProvider.class), null, c124447, kind, emptyList47));
            module.indexPrimaryType(factoryInstanceFactory47);
            new KoinDefinition(module, factoryInstanceFactory47);
        }
    }, 1, null);

    public static final Module getPresentationItemProviderModule() {
        return presentationItemProviderModule;
    }
}
