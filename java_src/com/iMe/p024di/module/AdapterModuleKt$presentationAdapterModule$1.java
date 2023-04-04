package com.iMe.p024di.module;

import android.content.Context;
import com.iMe.p032ui.adapter.FiltersRecycleAdapter;
import com.iMe.p032ui.adapter.provider.BannerProvider;
import com.iMe.p032ui.adapter.provider.BinanceAccountProvider;
import com.iMe.p032ui.adapter.provider.BinanceTokenBalanceProvider;
import com.iMe.p032ui.adapter.provider.BinanceTransactionProvider;
import com.iMe.p032ui.adapter.provider.CampaignProvider;
import com.iMe.p032ui.adapter.provider.CardButtonProvider;
import com.iMe.p032ui.adapter.provider.CategoryWithCampaignsProvider;
import com.iMe.p032ui.adapter.provider.CexProtocolProvider;
import com.iMe.p032ui.adapter.provider.CreateAccountProvider;
import com.iMe.p032ui.adapter.provider.CreateCampaignProvider;
import com.iMe.p032ui.adapter.provider.CryptoAccountProvider;
import com.iMe.p032ui.adapter.provider.DexProtocolProvider;
import com.iMe.p032ui.adapter.provider.FilterProvider;
import com.iMe.p032ui.adapter.provider.GlobalStateProvider;
import com.iMe.p032ui.adapter.provider.HeaderProvider;
import com.iMe.p032ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.iMe.p032ui.adapter.provider.HeaderWithRightButtonProvider;
import com.iMe.p032ui.adapter.provider.NftCollectionProvider;
import com.iMe.p032ui.adapter.provider.NftTokenProvider;
import com.iMe.p032ui.adapter.provider.SelectTokenProvider;
import com.iMe.p032ui.adapter.provider.SelectableHeaderProvider;
import com.iMe.p032ui.adapter.provider.ServiceProvider;
import com.iMe.p032ui.adapter.provider.SimplexFooterProvider;
import com.iMe.p032ui.adapter.provider.SimplexProductProvider;
import com.iMe.p032ui.adapter.provider.StakingCalculatorProgrammeProvider;
import com.iMe.p032ui.adapter.provider.StakingOperationProvider;
import com.iMe.p032ui.adapter.provider.StakingProgrammeProvider;
import com.iMe.p032ui.adapter.provider.TokenBalanceProvider;
import com.iMe.p032ui.adapter.provider.TokenTransactionProvider;
import com.iMe.p032ui.adapter.provider.TotalBalanceProvider;
import com.iMe.p032ui.adapter.provider.TweetDatesProvider;
import com.iMe.p032ui.adapter.provider.TweetProvider;
import com.iMe.p032ui.adapter.provider.TwitterInviteProvider;
import com.iMe.p032ui.adapter.provider.TwitterUserProvider;
import com.iMe.p032ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.iMe.p032ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.iMe.p032ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.iMe.p032ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.iMe.p032ui.twitter.adapter.TweetsRecycleAdapter;
import com.iMe.p032ui.twitter.search.adapter.TwitterUsersRecycleAdapter;
import com.iMe.p032ui.wallet.crypto.buy.adapter.BuyCryptoProductRecycleAdapter;
import com.iMe.p032ui.wallet.crypto.create.secret_words_count.SecretWordsCountAdapter;
import com.iMe.p032ui.wallet.crypto.settings.adapter.WalletAccountSettingsRecycleAdapter;
import com.iMe.p032ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter;
import com.iMe.p032ui.wallet.crypto.tutorial.adapter.CreateEthWalletTutorialAdapter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter;
import com.iMe.p032ui.wallet.home.p033v2.adapter.BalancesRecycleAdapter;
import com.iMe.p032ui.wallet.home.p033v2.adapter.BannersRecycleAdapter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.adapter.BinancePayRecycleAdapter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter;
import com.iMe.p032ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.iMe.p032ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
import com.iMe.p032ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter;
import com.iMe.p032ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesRecycleAdapter;
import com.iMe.p032ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter;
import com.iMe.p032ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter;
import com.iMe.p032ui.wallet.swap.token.adapter.WalletSelectTokenAdapter;
import com.iMe.p032ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter;
import com.iMe.p032ui.wallet.transaction.details.adapter.WalletActionAdapter;
import com.iMe.storage.domain.utils.system.ResourceManager;
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C12701 c12701 = C12701.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), null, c12701, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C12812 c12812 = C12812.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsRecycleAdapter.class), null, c12812, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C12893 c12893 = C12893.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BinancePayRecycleAdapter.class), null, c12893, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C12904 c12904 = C12904.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BinancePayHistoryRecycleAdapter.class), null, c12904, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C12915 c12915 = C12915.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletTransactionsRecycleAdapter.class), null, c12915, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C12926 c12926 = C12926.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(BuyCryptoProductRecycleAdapter.class), null, c12926, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C12937 c12937 = C12937.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CatalogAllCategoriesRecycleAdapter.class), null, c12937, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C12948 c12948 = C12948.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(CatalogUserChannelsRecycleAdapter.class), null, c12948, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C12959 c12959 = C12959.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogCampaignsByCategoriesRecycleAdapter.class), null, c12959, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C127110 c127110 = C127110.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(StakingProgrammesRecycleAdapter.class), null, c127110, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C127211 c127211 = C127211.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesRecycleAdapter.class), null, c127211, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C127312 c127312 = C127312.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TweetsRecycleAdapter.class), null, c127312, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C127413 c127413 = C127413.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(TwitterUsersRecycleAdapter.class), null, c127413, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C127514 c127514 = C127514.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, c127514, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C127615 c127615 = C127615.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletNotificationsRecycleAdapter.class), null, c127615, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C127716 c127716 = C127716.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletSettingsRecycleAdapter.class), null, c127716, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C127817 c127817 = C127817.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsRecycleAdapter.class), null, c127817, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C127918 c127918 = C127918.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletAccountSettingsRecycleAdapter.class), null, c127918, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C128019 c128019 = C128019.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(BlockchainsWalletsRecycleAdapter.class), null, c128019, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C128220 c128220 = C128220.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(WalletActionAdapter.class), null, c128220, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C128321 c128321 = C128321.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletSelectTokenAdapter.class), null, c128321, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C128422 c128422 = C128422.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(SecretWordsCountAdapter.class), null, c128422, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C128523 c128523 = C128523.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletConnectSessionsRecycleAdapter.class), null, c128523, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C128624 c128624 = C128624.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(CatalogAllChannelsRecycleAdapter.class), null, c128624, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C128725 c128725 = C128725.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, c128725, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C128826 c128826 = C128826.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(CreateEthWalletTutorialAdapter.class), null, c128826, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C12904 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayHistoryRecycleAdapter> {
        public static final C12904 INSTANCE = new C12904();

        C12904() {
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
    public static final class C12915 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsRecycleAdapter> {
        public static final C12915 INSTANCE = new C12915();

        C12915() {
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
    public static final class C12926 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductRecycleAdapter> {
        public static final C12926 INSTANCE = new C12926();

        C12926() {
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
    public static final class C12937 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllCategoriesRecycleAdapter> {
        public static final C12937 INSTANCE = new C12937();

        C12937() {
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
    public static final class C12948 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsRecycleAdapter> {
        public static final C12948 INSTANCE = new C12948();

        C12948() {
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
    public static final class C12959 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCampaignsByCategoriesRecycleAdapter> {
        public static final C12959 INSTANCE = new C12959();

        C12959() {
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
    public static final class C127211 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesRecycleAdapter> {
        public static final C127211 INSTANCE = new C127211();

        C127211() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C127514 extends Lambda implements Function2<Scope, ParametersHolder, BannersRecycleAdapter> {
        public static final C127514 INSTANCE = new C127514();

        C127514() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C127615 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsRecycleAdapter> {
        public static final C127615 INSTANCE = new C127615();

        C127615() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C127716 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsRecycleAdapter> {
        public static final C127716 INSTANCE = new C127716();

        C127716() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C127817 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsRecycleAdapter> {
        public static final C127817 INSTANCE = new C127817();

        C127817() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C127918 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsRecycleAdapter> {
        public static final C127918 INSTANCE = new C127918();

        C127918() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAccountSettingsRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletAccountSettingsRecycleAdapter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C128019 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsWalletsRecycleAdapter> {
        public static final C128019 INSTANCE = new C128019();

        C128019() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C128220 extends Lambda implements Function2<Scope, ParametersHolder, WalletActionAdapter> {
        public static final C128220 INSTANCE = new C128220();

        C128220() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C128321 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenAdapter> {
        public static final C128321 INSTANCE = new C128321();

        C128321() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C128422 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountAdapter> {
        public static final C128422 INSTANCE = new C128422();

        C128422() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C128523 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsRecycleAdapter> {
        public static final C128523 INSTANCE = new C128523();

        C128523() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C128624 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllChannelsRecycleAdapter> {
        public static final C128624 INSTANCE = new C128624();

        C128624() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C128725 extends Lambda implements Function2<Scope, ParametersHolder, FiltersRecycleAdapter> {
        public static final C128725 INSTANCE = new C128725();

        C128725() {
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
    public static final class C12701 extends Lambda implements Function2<Scope, ParametersHolder, BalancesRecycleAdapter> {
        public static final C12701 INSTANCE = new C12701();

        C12701() {
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
            SelectTokenProvider selectTokenProvider = (SelectTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(SelectTokenProvider.class), null, null);
            ServiceProvider serviceProvider = (ServiceProvider) factory.get(Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, null);
            TokenBalanceProvider tokenBalanceProvider = (TokenBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, null);
            TotalBalanceProvider totalBalanceProvider = (TotalBalanceProvider) factory.get(Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, null);
            return new BalancesRecycleAdapter(createAccountProvider, selectableHeaderProvider, selectTokenProvider, (HeaderProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, null), serviceProvider, tokenBalanceProvider, totalBalanceProvider, (NftCollectionProvider) factory.get(Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, null), (GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), bannerProvider, cryptoAccountProvider, headerWithNetworkSwitcherProvider, (NftTokenProvider) factory.get(Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C127110 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesRecycleAdapter> {
        public static final C127110 INSTANCE = new C127110();

        C127110() {
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
    public static final class C127312 extends Lambda implements Function2<Scope, ParametersHolder, TweetsRecycleAdapter> {
        public static final C127312 INSTANCE = new C127312();

        C127312() {
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
    public static final class C127413 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUsersRecycleAdapter> {
        public static final C127413 INSTANCE = new C127413();

        C127413() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C12812 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsRecycleAdapter> {
        public static final C12812 INSTANCE = new C12812();

        C12812() {
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
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C128826 extends Lambda implements Function2<Scope, ParametersHolder, CreateEthWalletTutorialAdapter> {
        public static final C128826 INSTANCE = new C128826();

        C128826() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateEthWalletTutorialAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CreateEthWalletTutorialAdapter((Context) factory.get(Reflection.getOrCreateKotlinClass(Context.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.iMe.di.module.AdapterModuleKt$presentationAdapterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C12893 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayRecycleAdapter> {
        public static final C12893 INSTANCE = new C12893();

        C12893() {
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
