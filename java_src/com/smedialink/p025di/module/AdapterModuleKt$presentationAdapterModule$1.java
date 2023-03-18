package com.smedialink.p025di.module;

import android.content.Context;
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
import com.smedialink.p031ui.adapter.provider.StakingOperationProvider;
import com.smedialink.p031ui.adapter.provider.StakingProgrammeProvider;
import com.smedialink.p031ui.adapter.provider.TokenBalanceProvider;
import com.smedialink.p031ui.adapter.provider.TokenTransactionProvider;
import com.smedialink.p031ui.adapter.provider.TotalBalanceProvider;
import com.smedialink.p031ui.adapter.provider.TweetDatesProvider;
import com.smedialink.p031ui.adapter.provider.TweetProvider;
import com.smedialink.p031ui.adapter.provider.TwitterInviteProvider;
import com.smedialink.p031ui.adapter.provider.TwitterUserProvider;
import com.smedialink.p031ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.smedialink.p031ui.twitter.adapter.TweetsRecycleAdapter;
import com.smedialink.p031ui.twitter.search.adapter.TwitterUsersRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.buy.adapter.BuyCryptoProductRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountAdapter;
import com.smedialink.p031ui.wallet.crypto.settings.adapter.WalletAccountSettingsRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.tutorial.adapter.CreateEthWalletTutorialAdapter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter;
import com.smedialink.p031ui.wallet.home.p032v2.adapter.BalancesRecycleAdapter;
import com.smedialink.p031ui.wallet.home.p032v2.adapter.BannersRecycleAdapter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.adapter.BinancePayRecycleAdapter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter;
import com.smedialink.p031ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.smedialink.p031ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
import com.smedialink.p031ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter;
import com.smedialink.p031ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesRecycleAdapter;
import com.smedialink.p031ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter;
import com.smedialink.p031ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter;
import com.smedialink.p031ui.wallet.swap.token.adapter.WalletSelectTokenAdapter;
import com.smedialink.p031ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter;
import com.smedialink.p031ui.wallet.transaction.details.adapter.WalletActionAdapter;
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
/* compiled from: AdapterModule.kt */
/* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1 */
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
        C12941 c12941 = C12941.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), null, c12941, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13052 c13052 = C13052.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsRecycleAdapter.class), null, c13052, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13133 c13133 = C13133.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BinancePayRecycleAdapter.class), null, c13133, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13144 c13144 = C13144.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BinancePayHistoryRecycleAdapter.class), null, c13144, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C13155 c13155 = C13155.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletTransactionsRecycleAdapter.class), null, c13155, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C13166 c13166 = C13166.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(BuyCryptoProductRecycleAdapter.class), null, c13166, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C13177 c13177 = C13177.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CatalogAllCategoriesRecycleAdapter.class), null, c13177, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C13188 c13188 = C13188.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(CatalogUserChannelsRecycleAdapter.class), null, c13188, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C13199 c13199 = C13199.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogCampaignsByCategoriesRecycleAdapter.class), null, c13199, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C129510 c129510 = C129510.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(StakingProgrammesRecycleAdapter.class), null, c129510, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C129611 c129611 = C129611.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesRecycleAdapter.class), null, c129611, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C129712 c129712 = C129712.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TweetsRecycleAdapter.class), null, c129712, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C129813 c129813 = C129813.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(TwitterUsersRecycleAdapter.class), null, c129813, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C129914 c129914 = C129914.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, c129914, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C130015 c130015 = C130015.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletNotificationsRecycleAdapter.class), null, c130015, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C130116 c130116 = C130116.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletSettingsRecycleAdapter.class), null, c130116, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C130217 c130217 = C130217.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsRecycleAdapter.class), null, c130217, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C130318 c130318 = C130318.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletAccountSettingsRecycleAdapter.class), null, c130318, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C130419 c130419 = C130419.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(BlockchainsWalletsRecycleAdapter.class), null, c130419, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C130620 c130620 = C130620.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(WalletActionAdapter.class), null, c130620, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C130721 c130721 = C130721.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletSelectTokenAdapter.class), null, c130721, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C130822 c130822 = C130822.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(SecretWordsCountAdapter.class), null, c130822, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C130923 c130923 = C130923.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletConnectSessionsRecycleAdapter.class), null, c130923, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C131024 c131024 = C131024.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(CatalogAllChannelsRecycleAdapter.class), null, c131024, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C131125 c131125 = C131125.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, c131125, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C131226 c131226 = C131226.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(CreateEthWalletTutorialAdapter.class), null, c131226, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13144 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayHistoryRecycleAdapter> {
        public static final C13144 INSTANCE = new C13144();

        C13144() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13155 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsRecycleAdapter> {
        public static final C13155 INSTANCE = new C13155();

        C13155() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13166 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductRecycleAdapter> {
        public static final C13166 INSTANCE = new C13166();

        C13166() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C13177 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllCategoriesRecycleAdapter> {
        public static final C13177 INSTANCE = new C13177();

        C13177() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C13188 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsRecycleAdapter> {
        public static final C13188 INSTANCE = new C13188();

        C13188() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C13199 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCampaignsByCategoriesRecycleAdapter> {
        public static final C13199 INSTANCE = new C13199();

        C13199() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C129611 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesRecycleAdapter> {
        public static final C129611 INSTANCE = new C129611();

        C129611() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C129914 extends Lambda implements Function2<Scope, ParametersHolder, BannersRecycleAdapter> {
        public static final C129914 INSTANCE = new C129914();

        C129914() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C130015 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsRecycleAdapter> {
        public static final C130015 INSTANCE = new C130015();

        C130015() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C130116 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsRecycleAdapter> {
        public static final C130116 INSTANCE = new C130116();

        C130116() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C130217 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsRecycleAdapter> {
        public static final C130217 INSTANCE = new C130217();

        C130217() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C130318 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsRecycleAdapter> {
        public static final C130318 INSTANCE = new C130318();

        C130318() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C130419 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsWalletsRecycleAdapter> {
        public static final C130419 INSTANCE = new C130419();

        C130419() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C130620 extends Lambda implements Function2<Scope, ParametersHolder, WalletActionAdapter> {
        public static final C130620 INSTANCE = new C130620();

        C130620() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C130721 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenAdapter> {
        public static final C130721 INSTANCE = new C130721();

        C130721() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C130822 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountAdapter> {
        public static final C130822 INSTANCE = new C130822();

        C130822() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C130923 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsRecycleAdapter> {
        public static final C130923 INSTANCE = new C130923();

        C130923() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C131024 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllChannelsRecycleAdapter> {
        public static final C131024 INSTANCE = new C131024();

        C131024() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C131125 extends Lambda implements Function2<Scope, ParametersHolder, FiltersRecycleAdapter> {
        public static final C131125 INSTANCE = new C131125();

        C131125() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12941 extends Lambda implements Function2<Scope, ParametersHolder, BalancesRecycleAdapter> {
        public static final C12941 INSTANCE = new C12941();

        C12941() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C129510 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesRecycleAdapter> {
        public static final C129510 INSTANCE = new C129510();

        C129510() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C129712 extends Lambda implements Function2<Scope, ParametersHolder, TweetsRecycleAdapter> {
        public static final C129712 INSTANCE = new C129712();

        C129712() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C129813 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUsersRecycleAdapter> {
        public static final C129813 INSTANCE = new C129813();

        C129813() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13052 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsRecycleAdapter> {
        public static final C13052 INSTANCE = new C13052();

        C13052() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C131226 extends Lambda implements Function2<Scope, ParametersHolder, CreateEthWalletTutorialAdapter> {
        public static final C131226 INSTANCE = new C131226();

        C131226() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13133 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayRecycleAdapter> {
        public static final C13133 INSTANCE = new C13133();

        C13133() {
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
