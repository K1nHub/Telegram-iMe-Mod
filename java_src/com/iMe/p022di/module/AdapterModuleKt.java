package com.iMe.p022di.module;

import android.content.Context;
import com.iMe.feature.twitter.adapter.TweetsRecycleAdapter;
import com.iMe.feature.twitter.search.adapter.TwitterUsersRecycleAdapter;
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
import com.iMe.p030ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.iMe.p030ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.iMe.p030ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.iMe.p030ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.iMe.p030ui.wallet.crypto.buy.adapter.BuyCryptoProductRecycleAdapter;
import com.iMe.p030ui.wallet.crypto.create.secret_words_count.SecretWordsCountAdapter;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter;
import com.iMe.p030ui.wallet.crypto.settings.custom_tokens.adapter.CustomTokensRecycleAdapter;
import com.iMe.p030ui.wallet.crypto.tutorial.adapter.CreateWalletTutorialAdapter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter;
import com.iMe.p030ui.wallet.cryptobox.adapter.CryptoBoxesRecycleAdapter;
import com.iMe.p030ui.wallet.cryptobox.statuses_description.adapter.CryptoBoxStatusInfoRecycleAdapter;
import com.iMe.p030ui.wallet.fragment.premium.adapter.TonFragmentPremiumRecycleAdapter;
import com.iMe.p030ui.wallet.fragment.usernames.adapter.TonFragmentProductsRecycleAdapter;
import com.iMe.p030ui.wallet.home.adapter.BalancesRecycleAdapter;
import com.iMe.p030ui.wallet.home.adapter.BannersRecycleAdapter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.adapter.BinancePayRecycleAdapter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.adapter.FoundTokensRecycleAdapter;
import com.iMe.p030ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.iMe.p030ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
import com.iMe.p030ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter;
import com.iMe.p030ui.wallet.settings.appearance.networks.adapter.WalletNetworksSettingsRecycleAdapter;
import com.iMe.p030ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesRecycleAdapter;
import com.iMe.p030ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter;
import com.iMe.p030ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter;
import com.iMe.p030ui.wallet.swap.token.adapter.WalletSelectTokenAdapter;
import com.iMe.p030ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter;
import com.iMe.p030ui.wallet.transaction.details.adapter.WalletActionAdapter;
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
/* compiled from: AdapterModule.kt */
/* renamed from: com.iMe.di.module.AdapterModuleKt */
/* loaded from: classes3.dex */
public final class AdapterModuleKt {
    private static Module presentationAdapterModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1
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
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C11581 c11581 = new Function2<Scope, ParametersHolder, BalancesRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final BalancesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    BannerProvider bannerProvider = (BannerProvider) factory.get(Reflection.getOrCreateKotlinClass(BannerProvider.class), null, null);
                    CreateAccountProvider createAccountProvider = (CreateAccountProvider) factory.get(Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, null);
                    CryptoAccountProvider cryptoAccountProvider = (CryptoAccountProvider) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, null);
                    GlobalStateProvider globalStateProvider = (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null);
                    HeaderProvider headerProvider = (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null);
                    HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider = (HeaderWithNetworkSwitcherProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, null);
                    NftCollectionProvider nftCollectionProvider = (NftCollectionProvider) factory.get(Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, null);
                    NftTokenProvider nftTokenProvider = (NftTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, null);
                    return new BalancesRecycleAdapter(createAccountProvider, (SelectableHeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, null), (AddTokensProvider) factory.get(Reflection.getOrCreateKotlinClass(AddTokensProvider.class), null, null), headerProvider, (ServiceProvider) factory.get(Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, null), (TokenBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, null), (TotalBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, null), nftCollectionProvider, globalStateProvider, bannerProvider, cryptoAccountProvider, headerWithNetworkSwitcherProvider, nftTokenProvider);
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), null, c11581, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            C11692 c11692 = new Function2<Scope, ParametersHolder, WalletSwapProtocolsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final WalletSwapProtocolsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSwapProtocolsRecycleAdapter((CexProtocolProvider) factory.get(Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, null), (DexProtocolProvider) factory.get(Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, null), (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsRecycleAdapter.class), null, c11692, kind, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            C11803 c11803 = new Function2<Scope, ParametersHolder, BinancePayRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final BinancePayRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    BannerProvider bannerProvider = (BannerProvider) factory.get(Reflection.getOrCreateKotlinClass(BannerProvider.class), null, null);
                    BinanceAccountProvider binanceAccountProvider = (BinanceAccountProvider) factory.get(Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, null);
                    BinanceTokenBalanceProvider binanceTokenBalanceProvider = (BinanceTokenBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, null);
                    CardButtonProvider cardButtonProvider = (CardButtonProvider) factory.get(Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, null);
                    GlobalStateProvider globalStateProvider = (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null);
                    return new BinancePayRecycleAdapter(bannerProvider, binanceAccountProvider, cardButtonProvider, (HeaderWithNetworkSwitcherProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, null), (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), binanceTokenBalanceProvider, (TotalBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, null), globalStateProvider);
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BinancePayRecycleAdapter.class), null, c11803, kind, emptyList3));
            module.indexPrimaryType(factoryInstanceFactory3);
            new KoinDefinition(module, factoryInstanceFactory3);
            C11844 c11844 = new Function2<Scope, ParametersHolder, BinancePayHistoryRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final BinancePayHistoryRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BinancePayHistoryRecycleAdapter((HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), (BinanceTransactionProvider) factory.get(Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BinancePayHistoryRecycleAdapter.class), null, c11844, kind, emptyList4));
            module.indexPrimaryType(factoryInstanceFactory4);
            new KoinDefinition(module, factoryInstanceFactory4);
            C11855 c11855 = new Function2<Scope, ParametersHolder, WalletTransactionsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final WalletTransactionsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletTransactionsRecycleAdapter((StakingOperationProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, null), (CryptoBoxActionProvider) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxActionProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), (TokenTransactionProvider) factory.get(Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletTransactionsRecycleAdapter.class), null, c11855, kind, emptyList5));
            module.indexPrimaryType(factoryInstanceFactory5);
            new KoinDefinition(module, factoryInstanceFactory5);
            C11866 c11866 = new Function2<Scope, ParametersHolder, BuyCryptoProductRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final BuyCryptoProductRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BuyCryptoProductRecycleAdapter((SimplexFooterProvider) factory.get(Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, null), (SimplexProductProvider) factory.get(Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(BuyCryptoProductRecycleAdapter.class), null, c11866, kind, emptyList6));
            module.indexPrimaryType(factoryInstanceFactory6);
            new KoinDefinition(module, factoryInstanceFactory6);
            C11877 c11877 = new Function2<Scope, ParametersHolder, CatalogAllCategoriesRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final CatalogAllCategoriesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogAllCategoriesRecycleAdapter((CategoryWithCampaignsProvider) factory.get(Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CatalogAllCategoriesRecycleAdapter.class), null, c11877, kind, emptyList7));
            module.indexPrimaryType(factoryInstanceFactory7);
            new KoinDefinition(module, factoryInstanceFactory7);
            C11888 c11888 = new Function2<Scope, ParametersHolder, CatalogUserChannelsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final CatalogUserChannelsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogUserChannelsRecycleAdapter((CreateCampaignProvider) factory.get(Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(CatalogUserChannelsRecycleAdapter.class), null, c11888, kind, emptyList8));
            module.indexPrimaryType(factoryInstanceFactory8);
            new KoinDefinition(module, factoryInstanceFactory8);
            C11899 c11899 = new Function2<Scope, ParametersHolder, CatalogCampaignsByCategoriesRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final CatalogCampaignsByCategoriesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogCampaignsByCategoriesRecycleAdapter((FilterProvider) factory.get(Reflection.getOrCreateKotlinClass(FilterProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (CampaignProvider) factory.get(Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogCampaignsByCategoriesRecycleAdapter.class), null, c11899, kind, emptyList9));
            module.indexPrimaryType(factoryInstanceFactory9);
            new KoinDefinition(module, factoryInstanceFactory9);
            C115910 c115910 = new Function2<Scope, ParametersHolder, StakingProgrammesRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final StakingProgrammesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingProgrammesRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (StakingProgrammeProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, null), (FilterProvider) factory.get(Reflection.getOrCreateKotlinClass(FilterProvider.class), null, null), (HeaderWithRightButtonProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(StakingProgrammesRecycleAdapter.class), null, c115910, kind, emptyList10));
            module.indexPrimaryType(factoryInstanceFactory10);
            new KoinDefinition(module, factoryInstanceFactory10);
            C116011 c116011 = new Function2<Scope, ParametersHolder, StakingCalculatorProgrammesRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final StakingCalculatorProgrammesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingCalculatorProgrammesRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (StakingCalculatorProgrammeProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesRecycleAdapter.class), null, c116011, kind, emptyList11));
            module.indexPrimaryType(factoryInstanceFactory11);
            new KoinDefinition(module, factoryInstanceFactory11);
            C116112 c116112 = new Function2<Scope, ParametersHolder, TweetsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final TweetsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    TweetDatesProvider tweetDatesProvider = (TweetDatesProvider) factory.get(Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, null);
                    return new TweetsRecycleAdapter((TweetProvider) factory.get(Reflection.getOrCreateKotlinClass(TweetProvider.class), null, null), tweetDatesProvider, (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TweetsRecycleAdapter.class), null, c116112, kind, emptyList12));
            module.indexPrimaryType(factoryInstanceFactory12);
            new KoinDefinition(module, factoryInstanceFactory12);
            C116213 c116213 = new Function2<Scope, ParametersHolder, TwitterUsersRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final TwitterUsersRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TwitterUsersRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (TwitterInviteProvider) factory.get(Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, null), (TwitterUserProvider) factory.get(Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(TwitterUsersRecycleAdapter.class), null, c116213, kind, emptyList13));
            module.indexPrimaryType(factoryInstanceFactory13);
            new KoinDefinition(module, factoryInstanceFactory13);
            C116314 c116314 = new Function2<Scope, ParametersHolder, FoundTokensRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final FoundTokensRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FoundTokensRecycleAdapter((FoundTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(FoundTokenProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(FoundTokensRecycleAdapter.class), null, c116314, kind, emptyList14));
            module.indexPrimaryType(factoryInstanceFactory14);
            new KoinDefinition(module, factoryInstanceFactory14);
            C116415 c116415 = new Function2<Scope, ParametersHolder, CustomTokensRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final CustomTokensRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CustomTokensRecycleAdapter((CustomTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(CustomTokenProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CustomTokensRecycleAdapter.class), null, c116415, kind, emptyList15));
            module.indexPrimaryType(factoryInstanceFactory15);
            new KoinDefinition(module, factoryInstanceFactory15);
            C116516 c116516 = new Function2<Scope, ParametersHolder, CryptoBoxesRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxesRecycleAdapter((AnimatedHeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(AnimatedHeaderProvider.class), null, null), (SortingListHeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(SortingListHeaderProvider.class), null, null), (CryptoBoxesChatProvider) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxesChatProvider.class), null, null), (CryptoBoxProvider) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(CryptoBoxesRecycleAdapter.class), null, c116516, kind, emptyList16));
            module.indexPrimaryType(factoryInstanceFactory16);
            new KoinDefinition(module, factoryInstanceFactory16);
            C116617 c116617 = new Function2<Scope, ParametersHolder, BlockchainsWalletsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainsWalletsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BlockchainsWalletsRecycleAdapter((BlockchainManagementWalletProvider) factory.get(Reflection.getOrCreateKotlinClass(BlockchainManagementWalletProvider.class), null, null), (BlockchainManagementActionButtonProvider) factory.get(Reflection.getOrCreateKotlinClass(BlockchainManagementActionButtonProvider.class), null, null), (SectionProvider) factory.get(Reflection.getOrCreateKotlinClass(SectionProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BlockchainsWalletsRecycleAdapter.class), null, c116617, kind, emptyList17));
            module.indexPrimaryType(factoryInstanceFactory17);
            new KoinDefinition(module, factoryInstanceFactory17);
            C116718 c116718 = new Function2<Scope, ParametersHolder, TonFragmentProductsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentProductsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonFragmentProductsRecycleAdapter((AnimatedHeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(AnimatedHeaderProvider.class), null, null), (SortingListHeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(SortingListHeaderProvider.class), null, null), (TonFragmentProductProvider) factory.get(Reflection.getOrCreateKotlinClass(TonFragmentProductProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(TonFragmentProductsRecycleAdapter.class), null, c116718, kind, emptyList18));
            module.indexPrimaryType(factoryInstanceFactory18);
            new KoinDefinition(module, factoryInstanceFactory18);
            C116819 c116819 = new Function2<Scope, ParametersHolder, TonFragmentPremiumRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentPremiumRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonFragmentPremiumRecycleAdapter((TonFragmentPremiumProvider) factory.get(Reflection.getOrCreateKotlinClass(TonFragmentPremiumProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(TonFragmentPremiumRecycleAdapter.class), null, c116819, kind, emptyList19));
            module.indexPrimaryType(factoryInstanceFactory19);
            new KoinDefinition(module, factoryInstanceFactory19);
            C117020 c117020 = new Function2<Scope, ParametersHolder, BannersRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.20
                @Override // kotlin.jvm.functions.Function2
                public final BannersRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BannersRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, c117020, kind, emptyList20));
            module.indexPrimaryType(factoryInstanceFactory20);
            new KoinDefinition(module, factoryInstanceFactory20);
            C117121 c117121 = new Function2<Scope, ParametersHolder, WalletNotificationsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final WalletNotificationsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletNotificationsRecycleAdapter();
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletNotificationsRecycleAdapter.class), null, c117121, kind, emptyList21));
            module.indexPrimaryType(factoryInstanceFactory21);
            new KoinDefinition(module, factoryInstanceFactory21);
            C117222 c117222 = new Function2<Scope, ParametersHolder, WalletSettingsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final WalletSettingsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSettingsRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(WalletSettingsRecycleAdapter.class), null, c117222, kind, emptyList22));
            module.indexPrimaryType(factoryInstanceFactory22);
            new KoinDefinition(module, factoryInstanceFactory22);
            C117323 c117323 = new Function2<Scope, ParametersHolder, WalletAppearanceSettingsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final WalletAppearanceSettingsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAppearanceSettingsRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsRecycleAdapter.class), null, c117323, kind, emptyList23));
            module.indexPrimaryType(factoryInstanceFactory23);
            new KoinDefinition(module, factoryInstanceFactory23);
            C117424 c117424 = new Function2<Scope, ParametersHolder, WalletNetworksSettingsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final WalletNetworksSettingsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletNetworksSettingsRecycleAdapter();
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(WalletNetworksSettingsRecycleAdapter.class), null, c117424, kind, emptyList24));
            module.indexPrimaryType(factoryInstanceFactory24);
            new KoinDefinition(module, factoryInstanceFactory24);
            C117525 c117525 = new Function2<Scope, ParametersHolder, WalletActionAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final WalletActionAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletActionAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(WalletActionAdapter.class), null, c117525, kind, emptyList25));
            module.indexPrimaryType(factoryInstanceFactory25);
            new KoinDefinition(module, factoryInstanceFactory25);
            C117626 c117626 = new Function2<Scope, ParametersHolder, WalletSelectTokenAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final WalletSelectTokenAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSelectTokenAdapter();
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(WalletSelectTokenAdapter.class), null, c117626, kind, emptyList26));
            module.indexPrimaryType(factoryInstanceFactory26);
            new KoinDefinition(module, factoryInstanceFactory26);
            C117727 c117727 = new Function2<Scope, ParametersHolder, SecretWordsCountAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.27
                @Override // kotlin.jvm.functions.Function2
                public final SecretWordsCountAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SecretWordsCountAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
            emptyList27 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(SecretWordsCountAdapter.class), null, c117727, kind, emptyList27));
            module.indexPrimaryType(factoryInstanceFactory27);
            new KoinDefinition(module, factoryInstanceFactory27);
            C117828 c117828 = new Function2<Scope, ParametersHolder, WalletConnectSessionsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.28
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectSessionsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletConnectSessionsRecycleAdapter();
                }
            };
            StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
            emptyList28 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(WalletConnectSessionsRecycleAdapter.class), null, c117828, kind, emptyList28));
            module.indexPrimaryType(factoryInstanceFactory28);
            new KoinDefinition(module, factoryInstanceFactory28);
            C117929 c117929 = new Function2<Scope, ParametersHolder, CatalogAllChannelsRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.29
                @Override // kotlin.jvm.functions.Function2
                public final CatalogAllChannelsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogAllChannelsRecycleAdapter();
                }
            };
            StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
            emptyList29 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(CatalogAllChannelsRecycleAdapter.class), null, c117929, kind, emptyList29));
            module.indexPrimaryType(factoryInstanceFactory29);
            new KoinDefinition(module, factoryInstanceFactory29);
            C118130 c118130 = new Function2<Scope, ParametersHolder, FiltersRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.30
                @Override // kotlin.jvm.functions.Function2
                public final FiltersRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FiltersRecycleAdapter();
                }
            };
            StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
            emptyList30 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, c118130, kind, emptyList30));
            module.indexPrimaryType(factoryInstanceFactory30);
            new KoinDefinition(module, factoryInstanceFactory30);
            C118231 c118231 = new Function2<Scope, ParametersHolder, CryptoBoxStatusInfoRecycleAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.31
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxStatusInfoRecycleAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxStatusInfoRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
            emptyList31 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(CryptoBoxStatusInfoRecycleAdapter.class), null, c118231, kind, emptyList31));
            module.indexPrimaryType(factoryInstanceFactory31);
            new KoinDefinition(module, factoryInstanceFactory31);
            C118332 c118332 = new Function2<Scope, ParametersHolder, CreateWalletTutorialAdapter>() { // from class: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1.32
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletTutorialAdapter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CreateWalletTutorialAdapter((Context) factory.get(Reflection.getOrCreateKotlinClass(Context.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
            emptyList32 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(CreateWalletTutorialAdapter.class), null, c118332, kind, emptyList32));
            module.indexPrimaryType(factoryInstanceFactory32);
            new KoinDefinition(module, factoryInstanceFactory32);
        }
    }, 1, null);

    public static final Module getPresentationAdapterModule() {
        return presentationAdapterModule;
    }
}
