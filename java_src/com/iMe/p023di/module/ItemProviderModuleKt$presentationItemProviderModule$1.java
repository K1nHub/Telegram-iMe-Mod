package com.iMe.p023di.module;

import com.iMe.p031ui.adapter.FiltersRecycleAdapter;
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
import com.iMe.p031ui.adapter.provider.DexProtocolProvider;
import com.iMe.p031ui.adapter.provider.FilterProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.adapter.provider.HeaderProvider;
import com.iMe.p031ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.iMe.p031ui.adapter.provider.HeaderWithRightButtonProvider;
import com.iMe.p031ui.adapter.provider.NftCollectionProvider;
import com.iMe.p031ui.adapter.provider.NftTokenProvider;
import com.iMe.p031ui.adapter.provider.SelectTokenProvider;
import com.iMe.p031ui.adapter.provider.SelectableHeaderProvider;
import com.iMe.p031ui.adapter.provider.ServiceProvider;
import com.iMe.p031ui.adapter.provider.SimplexFooterProvider;
import com.iMe.p031ui.adapter.provider.SimplexProductProvider;
import com.iMe.p031ui.adapter.provider.StakingCalculatorProgrammeProvider;
import com.iMe.p031ui.adapter.provider.StakingDashboardProvider;
import com.iMe.p031ui.adapter.provider.StakingOperationProvider;
import com.iMe.p031ui.adapter.provider.StakingProgrammeProvider;
import com.iMe.p031ui.adapter.provider.TokenBalanceProvider;
import com.iMe.p031ui.adapter.provider.TokenTransactionProvider;
import com.iMe.p031ui.adapter.provider.TotalBalanceProvider;
import com.iMe.p031ui.adapter.provider.TweetDatesProvider;
import com.iMe.p031ui.adapter.provider.TweetProvider;
import com.iMe.p031ui.adapter.provider.TwitterInviteProvider;
import com.iMe.p031ui.adapter.provider.TwitterUserProvider;
import com.iMe.p031ui.wallet.home.p032v2.adapter.BannersRecycleAdapter;
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
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: ItemProviderModule.kt */
/* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1 */
/* loaded from: classes3.dex */
final class ItemProviderModuleKt$presentationItemProviderModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final ItemProviderModuleKt$presentationItemProviderModule$1 INSTANCE = new ItemProviderModuleKt$presentationItemProviderModule$1();

    ItemProviderModuleKt$presentationItemProviderModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12971 extends Lambda implements Function2<Scope, ParametersHolder, BannerProvider> {
        public static final C12971 INSTANCE = new C12971();

        C12971() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13082 extends Lambda implements Function2<Scope, ParametersHolder, CreateAccountProvider> {
        public static final C13082 INSTANCE = new C13082();

        C13082() {
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
        List emptyList32;
        List emptyList33;
        List emptyList34;
        List emptyList35;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C12971 c12971 = C12971.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BannerProvider.class), null, c12971, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C13082 c13082 = C13082.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, c13082, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        C13193 c13193 = C13193.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, c13193, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        C13264 c13264 = C13264.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, c13264, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new KoinDefinition(module, factoryInstanceFactory4);
        C13275 c13275 = C13275.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, c13275, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new KoinDefinition(module, factoryInstanceFactory5);
        C13286 c13286 = C13286.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, c13286, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new KoinDefinition(module, factoryInstanceFactory6);
        C13297 c13297 = C13297.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, c13297, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new KoinDefinition(module, factoryInstanceFactory7);
        C13308 c13308 = C13308.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectTokenProvider.class), null, c13308, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new KoinDefinition(module, factoryInstanceFactory8);
        C13319 c13319 = C13319.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, c13319, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new KoinDefinition(module, factoryInstanceFactory9);
        C129810 c129810 = C129810.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, c129810, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new KoinDefinition(module, factoryInstanceFactory10);
        C129911 c129911 = C129911.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, c129911, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new KoinDefinition(module, factoryInstanceFactory11);
        C130012 c130012 = C130012.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, c130012, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new KoinDefinition(module, factoryInstanceFactory12);
        C130113 c130113 = C130113.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, c130113, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new KoinDefinition(module, factoryInstanceFactory13);
        C130214 c130214 = C130214.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, c130214, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new KoinDefinition(module, factoryInstanceFactory14);
        C130315 c130315 = C130315.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, c130315, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new KoinDefinition(module, factoryInstanceFactory15);
        C130416 c130416 = C130416.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, c130416, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new KoinDefinition(module, factoryInstanceFactory16);
        C130517 c130517 = C130517.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, c130517, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new KoinDefinition(module, factoryInstanceFactory17);
        C130618 c130618 = C130618.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, c130618, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new KoinDefinition(module, factoryInstanceFactory18);
        C130719 c130719 = C130719.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, c130719, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new KoinDefinition(module, factoryInstanceFactory19);
        C130920 c130920 = C130920.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, c130920, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new KoinDefinition(module, factoryInstanceFactory20);
        C131021 c131021 = C131021.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, c131021, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new KoinDefinition(module, factoryInstanceFactory21);
        C131122 c131122 = C131122.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, c131122, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new KoinDefinition(module, factoryInstanceFactory22);
        C131223 c131223 = C131223.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, c131223, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new KoinDefinition(module, factoryInstanceFactory23);
        C131324 c131324 = C131324.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, c131324, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new KoinDefinition(module, factoryInstanceFactory24);
        C131425 c131425 = C131425.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, c131425, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new KoinDefinition(module, factoryInstanceFactory25);
        C131526 c131526 = C131526.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FilterProvider.class), null, c131526, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new KoinDefinition(module, factoryInstanceFactory26);
        C131627 c131627 = C131627.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, c131627, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new KoinDefinition(module, factoryInstanceFactory27);
        C131728 c131728 = C131728.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, c131728, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new KoinDefinition(module, factoryInstanceFactory28);
        C131829 c131829 = C131829.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(StakingDashboardProvider.class), null, c131829, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new KoinDefinition(module, factoryInstanceFactory29);
        C132030 c132030 = C132030.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, c132030, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new KoinDefinition(module, factoryInstanceFactory30);
        C132131 c132131 = C132131.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, c132131, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new KoinDefinition(module, factoryInstanceFactory31);
        C132232 c132232 = C132232.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(TweetProvider.class), null, c132232, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new KoinDefinition(module, factoryInstanceFactory32);
        C132333 c132333 = C132333.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, c132333, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new KoinDefinition(module, factoryInstanceFactory33);
        C132434 c132434 = C132434.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, c132434, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new KoinDefinition(module, factoryInstanceFactory34);
        C132535 c132535 = C132535.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, c132535, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new KoinDefinition(module, factoryInstanceFactory35);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13193 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccountProvider> {
        public static final C13193 INSTANCE = new C13193();

        C13193() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13264 extends Lambda implements Function2<Scope, ParametersHolder, HeaderProvider> {
        public static final C13264 INSTANCE = new C13264();

        C13264() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13275 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithNetworkSwitcherProvider> {
        public static final C13275 INSTANCE = new C13275();

        C13275() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13286 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithRightButtonProvider> {
        public static final C13286 INSTANCE = new C13286();

        C13286() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C13297 extends Lambda implements Function2<Scope, ParametersHolder, SelectableHeaderProvider> {
        public static final C13297 INSTANCE = new C13297();

        C13297() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C13308 extends Lambda implements Function2<Scope, ParametersHolder, SelectTokenProvider> {
        public static final C13308 INSTANCE = new C13308();

        C13308() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C13319 extends Lambda implements Function2<Scope, ParametersHolder, GlobalStateProvider> {
        public static final C13319 INSTANCE = new C13319();

        C13319() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C129810 extends Lambda implements Function2<Scope, ParametersHolder, ServiceProvider> {
        public static final C129810 INSTANCE = new C129810();

        C129810() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C129911 extends Lambda implements Function2<Scope, ParametersHolder, TokenBalanceProvider> {
        public static final C129911 INSTANCE = new C129911();

        C129911() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C130012 extends Lambda implements Function2<Scope, ParametersHolder, TotalBalanceProvider> {
        public static final C130012 INSTANCE = new C130012();

        C130012() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C130113 extends Lambda implements Function2<Scope, ParametersHolder, NftCollectionProvider> {
        public static final C130113 INSTANCE = new C130113();

        C130113() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C130214 extends Lambda implements Function2<Scope, ParametersHolder, NftTokenProvider> {
        public static final C130214 INSTANCE = new C130214();

        C130214() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C130315 extends Lambda implements Function2<Scope, ParametersHolder, CexProtocolProvider> {
        public static final C130315 INSTANCE = new C130315();

        C130315() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C130416 extends Lambda implements Function2<Scope, ParametersHolder, DexProtocolProvider> {
        public static final C130416 INSTANCE = new C130416();

        C130416() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C130517 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTokenBalanceProvider> {
        public static final C130517 INSTANCE = new C130517();

        C130517() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C130618 extends Lambda implements Function2<Scope, ParametersHolder, BinanceAccountProvider> {
        public static final C130618 INSTANCE = new C130618();

        C130618() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C130719 extends Lambda implements Function2<Scope, ParametersHolder, CardButtonProvider> {
        public static final C130719 INSTANCE = new C130719();

        C130719() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C130920 extends Lambda implements Function2<Scope, ParametersHolder, TokenTransactionProvider> {
        public static final C130920 INSTANCE = new C130920();

        C130920() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C131021 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationProvider> {
        public static final C131021 INSTANCE = new C131021();

        C131021() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C131122 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTransactionProvider> {
        public static final C131122 INSTANCE = new C131122();

        C131122() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C131223 extends Lambda implements Function2<Scope, ParametersHolder, SimplexProductProvider> {
        public static final C131223 INSTANCE = new C131223();

        C131223() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C131324 extends Lambda implements Function2<Scope, ParametersHolder, SimplexFooterProvider> {
        public static final C131324 INSTANCE = new C131324();

        C131324() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C131425 extends Lambda implements Function2<Scope, ParametersHolder, CategoryWithCampaignsProvider> {
        public static final C131425 INSTANCE = new C131425();

        C131425() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C131526 extends Lambda implements Function2<Scope, ParametersHolder, FilterProvider> {
        public static final C131526 INSTANCE = new C131526();

        C131526() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C131627 extends Lambda implements Function2<Scope, ParametersHolder, CampaignProvider> {
        public static final C131627 INSTANCE = new C131627();

        C131627() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C131728 extends Lambda implements Function2<Scope, ParametersHolder, CreateCampaignProvider> {
        public static final C131728 INSTANCE = new C131728();

        C131728() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C131829 extends Lambda implements Function2<Scope, ParametersHolder, StakingDashboardProvider> {
        public static final C131829 INSTANCE = new C131829();

        C131829() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C132030 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammeProvider> {
        public static final C132030 INSTANCE = new C132030();

        C132030() {
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
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C132131 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammeProvider> {
        public static final C132131 INSTANCE = new C132131();

        C132131() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingCalculatorProgrammeProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingCalculatorProgrammeProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C132232 extends Lambda implements Function2<Scope, ParametersHolder, TweetProvider> {
        public static final C132232 INSTANCE = new C132232();

        C132232() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TweetProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TweetProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C132333 extends Lambda implements Function2<Scope, ParametersHolder, TweetDatesProvider> {
        public static final C132333 INSTANCE = new C132333();

        C132333() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TweetDatesProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TweetDatesProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C132434 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUserProvider> {
        public static final C132434 INSTANCE = new C132434();

        C132434() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterUserProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterUserProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C132535 extends Lambda implements Function2<Scope, ParametersHolder, TwitterInviteProvider> {
        public static final C132535 INSTANCE = new C132535();

        C132535() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterInviteProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterInviteProvider((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }
}
