package com.iMe.p023di.module;

import android.content.Context;
import com.iMe.feature.twitter.adapter.TweetsRecycleAdapter;
import com.iMe.feature.twitter.search.adapter.TwitterUsersRecycleAdapter;
import com.iMe.p031ui.adapter.FiltersRecycleAdapter;
import com.iMe.p031ui.adapter.provider.AddTokensProvider;
import com.iMe.p031ui.adapter.provider.BannerProvider;
import com.iMe.p031ui.adapter.provider.BinanceAccountProvider;
import com.iMe.p031ui.adapter.provider.BinanceTokenBalanceProvider;
import com.iMe.p031ui.adapter.provider.BinanceTransactionProvider;
import com.iMe.p031ui.adapter.provider.CampaignProvider;
import com.iMe.p031ui.adapter.provider.CardButtonProvider;
import com.iMe.p031ui.adapter.provider.CategoryWithCampaignsProvider;
import com.iMe.p031ui.adapter.provider.CexProtocolProvider;
import com.iMe.p031ui.adapter.provider.CreateAccountProvider;
import com.iMe.p031ui.adapter.provider.CreateCampaignProvider;
import com.iMe.p031ui.adapter.provider.CryptoAccountProvider;
import com.iMe.p031ui.adapter.provider.CustomTokenProvider;
import com.iMe.p031ui.adapter.provider.DexProtocolProvider;
import com.iMe.p031ui.adapter.provider.FilterProvider;
import com.iMe.p031ui.adapter.provider.FoundTokenProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.adapter.provider.HeaderProvider;
import com.iMe.p031ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.iMe.p031ui.adapter.provider.HeaderWithRightButtonProvider;
import com.iMe.p031ui.adapter.provider.NftCollectionProvider;
import com.iMe.p031ui.adapter.provider.NftTokenProvider;
import com.iMe.p031ui.adapter.provider.SelectableHeaderProvider;
import com.iMe.p031ui.adapter.provider.ServiceProvider;
import com.iMe.p031ui.adapter.provider.SimplexFooterProvider;
import com.iMe.p031ui.adapter.provider.SimplexProductProvider;
import com.iMe.p031ui.adapter.provider.StakingCalculatorProgrammeProvider;
import com.iMe.p031ui.adapter.provider.StakingOperationProvider;
import com.iMe.p031ui.adapter.provider.StakingProgrammeProvider;
import com.iMe.p031ui.adapter.provider.TokenBalanceProvider;
import com.iMe.p031ui.adapter.provider.TokenTransactionProvider;
import com.iMe.p031ui.adapter.provider.TotalBalanceProvider;
import com.iMe.p031ui.adapter.provider.TweetDatesProvider;
import com.iMe.p031ui.adapter.provider.TweetProvider;
import com.iMe.p031ui.adapter.provider.TwitterInviteProvider;
import com.iMe.p031ui.adapter.provider.TwitterUserProvider;
import com.iMe.p031ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.iMe.p031ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.iMe.p031ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.iMe.p031ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.buy.adapter.BuyCryptoProductRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountAdapter;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.settings.custom_tokens.adapter.CustomTokensRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.tutorial.adapter.CreateWalletTutorialAdapter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter;
import com.iMe.p031ui.wallet.home.adapter.BalancesRecycleAdapter;
import com.iMe.p031ui.wallet.home.adapter.BannersRecycleAdapter;
import com.iMe.p031ui.wallet.home.tabs.binancepay.adapter.BinancePayRecycleAdapter;
import com.iMe.p031ui.wallet.home.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.adapter.FoundTokensRecycleAdapter;
import com.iMe.p031ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.iMe.p031ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
import com.iMe.p031ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter;
import com.iMe.p031ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesRecycleAdapter;
import com.iMe.p031ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter;
import com.iMe.p031ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter;
import com.iMe.p031ui.wallet.swap.token.adapter.WalletSelectTokenAdapter;
import com.iMe.p031ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter;
import com.iMe.p031ui.wallet.transaction.details.adapter.WalletActionAdapter;
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
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: AdapterModule.kt */
/* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1 */
/* loaded from: classes3.dex */
final class AdapterModuleKt$presentationAdapterModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final AdapterModuleKt$presentationAdapterModule$1 INSTANCE = new AdapterModuleKt$presentationAdapterModule$1();

    AdapterModuleKt$presentationAdapterModule$1() {
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C12651 c12651 = C12651.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), null, c12651, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C12762 c12762 = C12762.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsRecycleAdapter.class), null, c12762, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        C12853 c12853 = C12853.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BinancePayRecycleAdapter.class), null, c12853, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        C12864 c12864 = C12864.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BinancePayHistoryRecycleAdapter.class), null, c12864, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new KoinDefinition(module, factoryInstanceFactory4);
        C12875 c12875 = C12875.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletTransactionsRecycleAdapter.class), null, c12875, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new KoinDefinition(module, factoryInstanceFactory5);
        C12886 c12886 = C12886.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(BuyCryptoProductRecycleAdapter.class), null, c12886, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new KoinDefinition(module, factoryInstanceFactory6);
        C12897 c12897 = C12897.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CatalogAllCategoriesRecycleAdapter.class), null, c12897, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new KoinDefinition(module, factoryInstanceFactory7);
        C12908 c12908 = C12908.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(CatalogUserChannelsRecycleAdapter.class), null, c12908, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new KoinDefinition(module, factoryInstanceFactory8);
        C12919 c12919 = C12919.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogCampaignsByCategoriesRecycleAdapter.class), null, c12919, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new KoinDefinition(module, factoryInstanceFactory9);
        C126610 c126610 = C126610.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(StakingProgrammesRecycleAdapter.class), null, c126610, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new KoinDefinition(module, factoryInstanceFactory10);
        C126711 c126711 = C126711.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesRecycleAdapter.class), null, c126711, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new KoinDefinition(module, factoryInstanceFactory11);
        C126812 c126812 = C126812.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TweetsRecycleAdapter.class), null, c126812, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new KoinDefinition(module, factoryInstanceFactory12);
        C126913 c126913 = C126913.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(TwitterUsersRecycleAdapter.class), null, c126913, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new KoinDefinition(module, factoryInstanceFactory13);
        C127014 c127014 = C127014.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(FoundTokensRecycleAdapter.class), null, c127014, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new KoinDefinition(module, factoryInstanceFactory14);
        C127115 c127115 = C127115.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CustomTokensRecycleAdapter.class), null, c127115, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new KoinDefinition(module, factoryInstanceFactory15);
        C127216 c127216 = C127216.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, c127216, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new KoinDefinition(module, factoryInstanceFactory16);
        C127317 c127317 = C127317.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletNotificationsRecycleAdapter.class), null, c127317, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new KoinDefinition(module, factoryInstanceFactory17);
        C127418 c127418 = C127418.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletSettingsRecycleAdapter.class), null, c127418, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new KoinDefinition(module, factoryInstanceFactory18);
        C127519 c127519 = C127519.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsRecycleAdapter.class), null, c127519, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new KoinDefinition(module, factoryInstanceFactory19);
        C127720 c127720 = C127720.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(BlockchainsWalletsRecycleAdapter.class), null, c127720, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new KoinDefinition(module, factoryInstanceFactory20);
        C127821 c127821 = C127821.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletActionAdapter.class), null, c127821, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new KoinDefinition(module, factoryInstanceFactory21);
        C127922 c127922 = C127922.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(WalletSelectTokenAdapter.class), null, c127922, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new KoinDefinition(module, factoryInstanceFactory22);
        C128023 c128023 = C128023.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SecretWordsCountAdapter.class), null, c128023, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new KoinDefinition(module, factoryInstanceFactory23);
        C128124 c128124 = C128124.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(WalletConnectSessionsRecycleAdapter.class), null, c128124, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new KoinDefinition(module, factoryInstanceFactory24);
        C128225 c128225 = C128225.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CatalogAllChannelsRecycleAdapter.class), null, c128225, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new KoinDefinition(module, factoryInstanceFactory25);
        C128326 c128326 = C128326.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, c128326, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new KoinDefinition(module, factoryInstanceFactory26);
        C128427 c128427 = C128427.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CreateWalletTutorialAdapter.class), null, c128427, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new KoinDefinition(module, factoryInstanceFactory27);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C12864 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayHistoryRecycleAdapter> {
        public static final C12864 INSTANCE = new C12864();

        C12864() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinancePayHistoryRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinancePayHistoryRecycleAdapter((HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), (BinanceTransactionProvider) factory.get(Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C12875 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsRecycleAdapter> {
        public static final C12875 INSTANCE = new C12875();

        C12875() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransactionsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletTransactionsRecycleAdapter((StakingOperationProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), (TokenTransactionProvider) factory.get(Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C12886 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductRecycleAdapter> {
        public static final C12886 INSTANCE = new C12886();

        C12886() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BuyCryptoProductRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BuyCryptoProductRecycleAdapter((SimplexFooterProvider) factory.get(Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, null), (SimplexProductProvider) factory.get(Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C12897 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllCategoriesRecycleAdapter> {
        public static final C12897 INSTANCE = new C12897();

        C12897() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogAllCategoriesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogAllCategoriesRecycleAdapter((CategoryWithCampaignsProvider) factory.get(Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C12908 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsRecycleAdapter> {
        public static final C12908 INSTANCE = new C12908();

        C12908() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogUserChannelsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogUserChannelsRecycleAdapter((CreateCampaignProvider) factory.get(Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C12919 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCampaignsByCategoriesRecycleAdapter> {
        public static final C12919 INSTANCE = new C12919();

        C12919() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogCampaignsByCategoriesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogCampaignsByCategoriesRecycleAdapter((FilterProvider) factory.get(Reflection.getOrCreateKotlinClass(FilterProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (CampaignProvider) factory.get(Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C126711 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesRecycleAdapter> {
        public static final C126711 INSTANCE = new C126711();

        C126711() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingCalculatorProgrammesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingCalculatorProgrammesRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (StakingCalculatorProgrammeProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C127216 extends Lambda implements Function2<Scope, ParametersHolder, BannersRecycleAdapter> {
        public static final C127216 INSTANCE = new C127216();

        C127216() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BannersRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BannersRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C127317 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsRecycleAdapter> {
        public static final C127317 INSTANCE = new C127317();

        C127317() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletNotificationsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletNotificationsRecycleAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C127418 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsRecycleAdapter> {
        public static final C127418 INSTANCE = new C127418();

        C127418() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSettingsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSettingsRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C127519 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsRecycleAdapter> {
        public static final C127519 INSTANCE = new C127519();

        C127519() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAppearanceSettingsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletAppearanceSettingsRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C127720 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsWalletsRecycleAdapter> {
        public static final C127720 INSTANCE = new C127720();

        C127720() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainsWalletsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BlockchainsWalletsRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C127821 extends Lambda implements Function2<Scope, ParametersHolder, WalletActionAdapter> {
        public static final C127821 INSTANCE = new C127821();

        C127821() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletActionAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletActionAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C127922 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenAdapter> {
        public static final C127922 INSTANCE = new C127922();

        C127922() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSelectTokenAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSelectTokenAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C128023 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountAdapter> {
        public static final C128023 INSTANCE = new C128023();

        C128023() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SecretWordsCountAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SecretWordsCountAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C128124 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsRecycleAdapter> {
        public static final C128124 INSTANCE = new C128124();

        C128124() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectSessionsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletConnectSessionsRecycleAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C128225 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllChannelsRecycleAdapter> {
        public static final C128225 INSTANCE = new C128225();

        C128225() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogAllChannelsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogAllChannelsRecycleAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C128326 extends Lambda implements Function2<Scope, ParametersHolder, FiltersRecycleAdapter> {
        public static final C128326 INSTANCE = new C128326();

        C128326() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FiltersRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new FiltersRecycleAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12651 extends Lambda implements Function2<Scope, ParametersHolder, BalancesRecycleAdapter> {
        public static final C12651 INSTANCE = new C12651();

        C12651() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BalancesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            BannerProvider bannerProvider = (BannerProvider) factory.get(Reflection.getOrCreateKotlinClass(BannerProvider.class), null, null);
            CreateAccountProvider createAccountProvider = (CreateAccountProvider) factory.get(Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, null);
            CryptoAccountProvider cryptoAccountProvider = (CryptoAccountProvider) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, null);
            HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider = (HeaderWithNetworkSwitcherProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, null);
            SelectableHeaderProvider selectableHeaderProvider = (SelectableHeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, null);
            AddTokensProvider addTokensProvider = (AddTokensProvider) factory.get(Reflection.getOrCreateKotlinClass(AddTokensProvider.class), null, null);
            ServiceProvider serviceProvider = (ServiceProvider) factory.get(Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, null);
            TokenBalanceProvider tokenBalanceProvider = (TokenBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, null);
            TotalBalanceProvider totalBalanceProvider = (TotalBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, null);
            return new BalancesRecycleAdapter(createAccountProvider, selectableHeaderProvider, addTokensProvider, (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), serviceProvider, tokenBalanceProvider, totalBalanceProvider, (NftCollectionProvider) factory.get(Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), bannerProvider, cryptoAccountProvider, headerWithNetworkSwitcherProvider, (NftTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C126610 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesRecycleAdapter> {
        public static final C126610 INSTANCE = new C126610();

        C126610() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingProgrammesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingProgrammesRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (StakingProgrammeProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, null), (FilterProvider) factory.get(Reflection.getOrCreateKotlinClass(FilterProvider.class), null, null), (HeaderWithRightButtonProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C126812 extends Lambda implements Function2<Scope, ParametersHolder, TweetsRecycleAdapter> {
        public static final C126812 INSTANCE = new C126812();

        C126812() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TweetsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TweetsRecycleAdapter((TweetProvider) factory.get(Reflection.getOrCreateKotlinClass(TweetProvider.class), null, null), (TweetDatesProvider) factory.get(Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C126913 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUsersRecycleAdapter> {
        public static final C126913 INSTANCE = new C126913();

        C126913() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterUsersRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterUsersRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (TwitterInviteProvider) factory.get(Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, null), (TwitterUserProvider) factory.get(Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C127014 extends Lambda implements Function2<Scope, ParametersHolder, FoundTokensRecycleAdapter> {
        public static final C127014 INSTANCE = new C127014();

        C127014() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FoundTokensRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new FoundTokensRecycleAdapter((FoundTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(FoundTokenProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C127115 extends Lambda implements Function2<Scope, ParametersHolder, CustomTokensRecycleAdapter> {
        public static final C127115 INSTANCE = new C127115();

        C127115() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CustomTokensRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CustomTokensRecycleAdapter((CustomTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(CustomTokenProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C12762 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsRecycleAdapter> {
        public static final C12762 INSTANCE = new C12762();

        C12762() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapProtocolsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSwapProtocolsRecycleAdapter((CexProtocolProvider) factory.get(Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, null), (DexProtocolProvider) factory.get(Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, null), (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C128427 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletTutorialAdapter> {
        public static final C128427 INSTANCE = new C128427();

        C128427() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletTutorialAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CreateWalletTutorialAdapter((Context) factory.get(Reflection.getOrCreateKotlinClass(Context.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C12853 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayRecycleAdapter> {
        public static final C12853 INSTANCE = new C12853();

        C12853() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinancePayRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            HeaderProvider headerProvider = (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null);
            HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider = (HeaderWithNetworkSwitcherProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, null);
            BannerProvider bannerProvider = (BannerProvider) factory.get(Reflection.getOrCreateKotlinClass(BannerProvider.class), null, null);
            BinanceAccountProvider binanceAccountProvider = (BinanceAccountProvider) factory.get(Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, null);
            BinanceTokenBalanceProvider binanceTokenBalanceProvider = (BinanceTokenBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, null);
            return new BinancePayRecycleAdapter(bannerProvider, binanceAccountProvider, (CardButtonProvider) factory.get(Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, null), headerWithNetworkSwitcherProvider, headerProvider, binanceTokenBalanceProvider, (TotalBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null));
        }
    }
}
