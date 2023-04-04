package com.iMe.p024di.module;

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
import com.iMe.p032ui.adapter.provider.StakingDashboardProvider;
import com.iMe.p032ui.adapter.provider.StakingOperationProvider;
import com.iMe.p032ui.adapter.provider.StakingProgrammeProvider;
import com.iMe.p032ui.adapter.provider.TokenBalanceProvider;
import com.iMe.p032ui.adapter.provider.TokenTransactionProvider;
import com.iMe.p032ui.adapter.provider.TotalBalanceProvider;
import com.iMe.p032ui.adapter.provider.TweetDatesProvider;
import com.iMe.p032ui.adapter.provider.TweetProvider;
import com.iMe.p032ui.adapter.provider.TwitterInviteProvider;
import com.iMe.p032ui.adapter.provider.TwitterUserProvider;
import com.iMe.p032ui.wallet.home.p033v2.adapter.BannersRecycleAdapter;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
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
    public static final class C12961 extends Lambda implements Function2<Scope, ParametersHolder, BannerProvider> {
        public static final C12961 INSTANCE = new C12961();

        C12961() {
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
    public static final class C13072 extends Lambda implements Function2<Scope, ParametersHolder, CreateAccountProvider> {
        public static final C13072 INSTANCE = new C13072();

        C13072() {
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
        C12961 c12961 = C12961.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BannerProvider.class), null, c12961, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13072 c13072 = C13072.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, c13072, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13183 c13183 = C13183.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, c13183, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13254 c13254 = C13254.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, c13254, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C13265 c13265 = C13265.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, c13265, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C13276 c13276 = C13276.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, c13276, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C13287 c13287 = C13287.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, c13287, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C13298 c13298 = C13298.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectTokenProvider.class), null, c13298, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C13309 c13309 = C13309.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, c13309, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C129710 c129710 = C129710.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, c129710, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C129811 c129811 = C129811.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, c129811, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C129912 c129912 = C129912.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, c129912, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C130013 c130013 = C130013.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, c130013, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C130114 c130114 = C130114.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, c130114, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C130215 c130215 = C130215.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, c130215, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C130316 c130316 = C130316.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, c130316, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C130417 c130417 = C130417.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, c130417, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C130518 c130518 = C130518.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, c130518, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C130619 c130619 = C130619.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, c130619, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C130820 c130820 = C130820.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, c130820, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C130921 c130921 = C130921.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, c130921, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C131022 c131022 = C131022.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, c131022, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C131123 c131123 = C131123.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, c131123, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C131224 c131224 = C131224.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, c131224, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C131325 c131325 = C131325.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, c131325, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C131426 c131426 = C131426.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FilterProvider.class), null, c131426, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
        C131527 c131527 = C131527.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, c131527, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new Pair(module, factoryInstanceFactory27);
        C131628 c131628 = C131628.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, c131628, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new Pair(module, factoryInstanceFactory28);
        C131729 c131729 = C131729.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(StakingDashboardProvider.class), null, c131729, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new Pair(module, factoryInstanceFactory29);
        C131930 c131930 = C131930.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, c131930, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new Pair(module, factoryInstanceFactory30);
        C132031 c132031 = C132031.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, c132031, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new Pair(module, factoryInstanceFactory31);
        C132132 c132132 = C132132.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(TweetProvider.class), null, c132132, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new Pair(module, factoryInstanceFactory32);
        C132233 c132233 = C132233.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, c132233, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new Pair(module, factoryInstanceFactory33);
        C132334 c132334 = C132334.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, c132334, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new Pair(module, factoryInstanceFactory34);
        C132435 c132435 = C132435.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, c132435, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new Pair(module, factoryInstanceFactory35);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13183 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccountProvider> {
        public static final C13183 INSTANCE = new C13183();

        C13183() {
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
    public static final class C13254 extends Lambda implements Function2<Scope, ParametersHolder, HeaderProvider> {
        public static final C13254 INSTANCE = new C13254();

        C13254() {
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
    public static final class C13265 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithNetworkSwitcherProvider> {
        public static final C13265 INSTANCE = new C13265();

        C13265() {
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
    public static final class C13276 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithRightButtonProvider> {
        public static final C13276 INSTANCE = new C13276();

        C13276() {
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
    public static final class C13287 extends Lambda implements Function2<Scope, ParametersHolder, SelectableHeaderProvider> {
        public static final C13287 INSTANCE = new C13287();

        C13287() {
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
    public static final class C13298 extends Lambda implements Function2<Scope, ParametersHolder, SelectTokenProvider> {
        public static final C13298 INSTANCE = new C13298();

        C13298() {
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
    public static final class C13309 extends Lambda implements Function2<Scope, ParametersHolder, GlobalStateProvider> {
        public static final C13309 INSTANCE = new C13309();

        C13309() {
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
    public static final class C129710 extends Lambda implements Function2<Scope, ParametersHolder, ServiceProvider> {
        public static final C129710 INSTANCE = new C129710();

        C129710() {
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
    public static final class C129811 extends Lambda implements Function2<Scope, ParametersHolder, TokenBalanceProvider> {
        public static final C129811 INSTANCE = new C129811();

        C129811() {
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
    public static final class C129912 extends Lambda implements Function2<Scope, ParametersHolder, TotalBalanceProvider> {
        public static final C129912 INSTANCE = new C129912();

        C129912() {
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
    public static final class C130013 extends Lambda implements Function2<Scope, ParametersHolder, NftCollectionProvider> {
        public static final C130013 INSTANCE = new C130013();

        C130013() {
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
    public static final class C130114 extends Lambda implements Function2<Scope, ParametersHolder, NftTokenProvider> {
        public static final C130114 INSTANCE = new C130114();

        C130114() {
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
    public static final class C130215 extends Lambda implements Function2<Scope, ParametersHolder, CexProtocolProvider> {
        public static final C130215 INSTANCE = new C130215();

        C130215() {
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
    public static final class C130316 extends Lambda implements Function2<Scope, ParametersHolder, DexProtocolProvider> {
        public static final C130316 INSTANCE = new C130316();

        C130316() {
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
    public static final class C130417 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTokenBalanceProvider> {
        public static final C130417 INSTANCE = new C130417();

        C130417() {
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
    public static final class C130518 extends Lambda implements Function2<Scope, ParametersHolder, BinanceAccountProvider> {
        public static final C130518 INSTANCE = new C130518();

        C130518() {
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
    public static final class C130619 extends Lambda implements Function2<Scope, ParametersHolder, CardButtonProvider> {
        public static final C130619 INSTANCE = new C130619();

        C130619() {
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
    public static final class C130820 extends Lambda implements Function2<Scope, ParametersHolder, TokenTransactionProvider> {
        public static final C130820 INSTANCE = new C130820();

        C130820() {
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
    public static final class C130921 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationProvider> {
        public static final C130921 INSTANCE = new C130921();

        C130921() {
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
    public static final class C131022 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTransactionProvider> {
        public static final C131022 INSTANCE = new C131022();

        C131022() {
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
    public static final class C131123 extends Lambda implements Function2<Scope, ParametersHolder, SimplexProductProvider> {
        public static final C131123 INSTANCE = new C131123();

        C131123() {
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
    public static final class C131224 extends Lambda implements Function2<Scope, ParametersHolder, SimplexFooterProvider> {
        public static final C131224 INSTANCE = new C131224();

        C131224() {
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
    public static final class C131325 extends Lambda implements Function2<Scope, ParametersHolder, CategoryWithCampaignsProvider> {
        public static final C131325 INSTANCE = new C131325();

        C131325() {
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
    public static final class C131426 extends Lambda implements Function2<Scope, ParametersHolder, FilterProvider> {
        public static final C131426 INSTANCE = new C131426();

        C131426() {
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
    public static final class C131527 extends Lambda implements Function2<Scope, ParametersHolder, CampaignProvider> {
        public static final C131527 INSTANCE = new C131527();

        C131527() {
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
    public static final class C131628 extends Lambda implements Function2<Scope, ParametersHolder, CreateCampaignProvider> {
        public static final C131628 INSTANCE = new C131628();

        C131628() {
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
    public static final class C131729 extends Lambda implements Function2<Scope, ParametersHolder, StakingDashboardProvider> {
        public static final C131729 INSTANCE = new C131729();

        C131729() {
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
    public static final class C131930 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammeProvider> {
        public static final C131930 INSTANCE = new C131930();

        C131930() {
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
    public static final class C132031 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammeProvider> {
        public static final C132031 INSTANCE = new C132031();

        C132031() {
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
    public static final class C132132 extends Lambda implements Function2<Scope, ParametersHolder, TweetProvider> {
        public static final C132132 INSTANCE = new C132132();

        C132132() {
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
    public static final class C132233 extends Lambda implements Function2<Scope, ParametersHolder, TweetDatesProvider> {
        public static final C132233 INSTANCE = new C132233();

        C132233() {
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
    public static final class C132334 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUserProvider> {
        public static final C132334 INSTANCE = new C132334();

        C132334() {
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
    public static final class C132435 extends Lambda implements Function2<Scope, ParametersHolder, TwitterInviteProvider> {
        public static final C132435 INSTANCE = new C132435();

        C132435() {
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
