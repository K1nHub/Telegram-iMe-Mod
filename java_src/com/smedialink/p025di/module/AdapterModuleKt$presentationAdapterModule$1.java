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
import com.smedialink.p031ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C12951 c12951 = C12951.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), null, c12951, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13062 c13062 = C13062.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsRecycleAdapter.class), null, c13062, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13123 c13123 = C13123.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BinancePayRecycleAdapter.class), null, c13123, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13134 c13134 = C13134.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BinancePayHistoryRecycleAdapter.class), null, c13134, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C13145 c13145 = C13145.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletTransactionsRecycleAdapter.class), null, c13145, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C13156 c13156 = C13156.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(BuyCryptoProductRecycleAdapter.class), null, c13156, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C13167 c13167 = C13167.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CatalogAllCategoriesRecycleAdapter.class), null, c13167, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C13178 c13178 = C13178.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(CatalogUserChannelsRecycleAdapter.class), null, c13178, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C13189 c13189 = C13189.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogCampaignsByCategoriesRecycleAdapter.class), null, c13189, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C129610 c129610 = C129610.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(StakingProgrammesRecycleAdapter.class), null, c129610, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C129711 c129711 = C129711.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesRecycleAdapter.class), null, c129711, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C129812 c129812 = C129812.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(BannersRecycleAdapter.class), null, c129812, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C129913 c129913 = C129913.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletNotificationsRecycleAdapter.class), null, c129913, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C130014 c130014 = C130014.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletSettingsRecycleAdapter.class), null, c130014, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C130115 c130115 = C130115.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsRecycleAdapter.class), null, c130115, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C130216 c130216 = C130216.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletAccountSettingsRecycleAdapter.class), null, c130216, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C130317 c130317 = C130317.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BlockchainsWalletsRecycleAdapter.class), null, c130317, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C130418 c130418 = C130418.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletActionAdapter.class), null, c130418, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C130519 c130519 = C130519.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(WalletSelectTokenAdapter.class), null, c130519, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C130720 c130720 = C130720.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(SecretWordsCountAdapter.class), null, c130720, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C130821 c130821 = C130821.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletConnectSessionsRecycleAdapter.class), null, c130821, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C130922 c130922 = C130922.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(CatalogAllChannelsRecycleAdapter.class), null, c130922, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C131023 c131023 = C131023.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(FiltersRecycleAdapter.class), null, c131023, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C131124 c131124 = C131124.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(CreateEthWalletTutorialAdapter.class), null, c131124, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13134 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayHistoryRecycleAdapter> {
        public static final C13134 INSTANCE = new C13134();

        C13134() {
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
    public static final class C13145 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsRecycleAdapter> {
        public static final C13145 INSTANCE = new C13145();

        C13145() {
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
    public static final class C13156 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductRecycleAdapter> {
        public static final C13156 INSTANCE = new C13156();

        C13156() {
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
    public static final class C13167 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllCategoriesRecycleAdapter> {
        public static final C13167 INSTANCE = new C13167();

        C13167() {
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
    public static final class C13178 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsRecycleAdapter> {
        public static final C13178 INSTANCE = new C13178();

        C13178() {
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
    public static final class C13189 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCampaignsByCategoriesRecycleAdapter> {
        public static final C13189 INSTANCE = new C13189();

        C13189() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C129610 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesRecycleAdapter> {
        public static final C129610 INSTANCE = new C129610();

        C129610() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingProgrammesRecycleAdapter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingProgrammesRecycleAdapter((GlobalStateProvider) factory.get(Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, null), (HeaderWithRightButtonProvider) factory.get(Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, null), (StakingProgrammeProvider) factory.get(Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, null), (FilterProvider) factory.get(Reflection.getOrCreateKotlinClass(FilterProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterModule.kt */
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C129711 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesRecycleAdapter> {
        public static final C129711 INSTANCE = new C129711();

        C129711() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C129812 extends Lambda implements Function2<Scope, ParametersHolder, BannersRecycleAdapter> {
        public static final C129812 INSTANCE = new C129812();

        C129812() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C129913 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsRecycleAdapter> {
        public static final C129913 INSTANCE = new C129913();

        C129913() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C130014 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsRecycleAdapter> {
        public static final C130014 INSTANCE = new C130014();

        C130014() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C130115 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsRecycleAdapter> {
        public static final C130115 INSTANCE = new C130115();

        C130115() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C130216 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsRecycleAdapter> {
        public static final C130216 INSTANCE = new C130216();

        C130216() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C130317 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsWalletsRecycleAdapter> {
        public static final C130317 INSTANCE = new C130317();

        C130317() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C130418 extends Lambda implements Function2<Scope, ParametersHolder, WalletActionAdapter> {
        public static final C130418 INSTANCE = new C130418();

        C130418() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C130519 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenAdapter> {
        public static final C130519 INSTANCE = new C130519();

        C130519() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C130720 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountAdapter> {
        public static final C130720 INSTANCE = new C130720();

        C130720() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C130821 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsRecycleAdapter> {
        public static final C130821 INSTANCE = new C130821();

        C130821() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C130922 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllChannelsRecycleAdapter> {
        public static final C130922 INSTANCE = new C130922();

        C130922() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C131023 extends Lambda implements Function2<Scope, ParametersHolder, FiltersRecycleAdapter> {
        public static final C131023 INSTANCE = new C131023();

        C131023() {
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
    public static final class C12951 extends Lambda implements Function2<Scope, ParametersHolder, BalancesRecycleAdapter> {
        public static final C12951 INSTANCE = new C12951();

        C12951() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13062 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsRecycleAdapter> {
        public static final C13062 INSTANCE = new C13062();

        C13062() {
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
    /* renamed from: com.smedialink.di.module.AdapterModuleKt$presentationAdapterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C131124 extends Lambda implements Function2<Scope, ParametersHolder, CreateEthWalletTutorialAdapter> {
        public static final C131124 INSTANCE = new C131124();

        C131124() {
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
    public static final class C13123 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayRecycleAdapter> {
        public static final C13123 INSTANCE = new C13123();

        C13123() {
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
