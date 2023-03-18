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
import com.smedialink.p031ui.adapter.provider.TweetDatesProvider;
import com.smedialink.p031ui.adapter.provider.TweetProvider;
import com.smedialink.p031ui.adapter.provider.TwitterInviteProvider;
import com.smedialink.p031ui.adapter.provider.TwitterUserProvider;
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
    public static final class C13201 extends Lambda implements Function2<Scope, ParametersHolder, BannerProvider> {
        public static final C13201 INSTANCE = new C13201();

        C13201() {
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
    public static final class C13312 extends Lambda implements Function2<Scope, ParametersHolder, CreateAccountProvider> {
        public static final C13312 INSTANCE = new C13312();

        C13312() {
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
        C13201 c13201 = C13201.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BannerProvider.class), null, c13201, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13312 c13312 = C13312.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, c13312, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13423 c13423 = C13423.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, c13423, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13494 c13494 = C13494.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, c13494, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C13505 c13505 = C13505.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, c13505, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C13516 c13516 = C13516.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, c13516, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C13527 c13527 = C13527.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, c13527, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C13538 c13538 = C13538.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectTokenProvider.class), null, c13538, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C13549 c13549 = C13549.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, c13549, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C132110 c132110 = C132110.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, c132110, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C132211 c132211 = C132211.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, c132211, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C132312 c132312 = C132312.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, c132312, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C132413 c132413 = C132413.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, c132413, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C132514 c132514 = C132514.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, c132514, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C132615 c132615 = C132615.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, c132615, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C132716 c132716 = C132716.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, c132716, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C132817 c132817 = C132817.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, c132817, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C132918 c132918 = C132918.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, c132918, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C133019 c133019 = C133019.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, c133019, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C133220 c133220 = C133220.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, c133220, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C133321 c133321 = C133321.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, c133321, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C133422 c133422 = C133422.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, c133422, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C133523 c133523 = C133523.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, c133523, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C133624 c133624 = C133624.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, c133624, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C133725 c133725 = C133725.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, c133725, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C133826 c133826 = C133826.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FilterProvider.class), null, c133826, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
        C133927 c133927 = C133927.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, c133927, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new Pair(module, factoryInstanceFactory27);
        C134028 c134028 = C134028.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, c134028, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new Pair(module, factoryInstanceFactory28);
        C134129 c134129 = C134129.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(StakingDashboardProvider.class), null, c134129, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new Pair(module, factoryInstanceFactory29);
        C134330 c134330 = C134330.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, c134330, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new Pair(module, factoryInstanceFactory30);
        C134431 c134431 = C134431.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, c134431, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new Pair(module, factoryInstanceFactory31);
        C134532 c134532 = C134532.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(TweetProvider.class), null, c134532, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new Pair(module, factoryInstanceFactory32);
        C134633 c134633 = C134633.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, c134633, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new Pair(module, factoryInstanceFactory33);
        C134734 c134734 = C134734.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, c134734, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new Pair(module, factoryInstanceFactory34);
        C134835 c134835 = C134835.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, c134835, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new Pair(module, factoryInstanceFactory35);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13423 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccountProvider> {
        public static final C13423 INSTANCE = new C13423();

        C13423() {
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
    public static final class C13494 extends Lambda implements Function2<Scope, ParametersHolder, HeaderProvider> {
        public static final C13494 INSTANCE = new C13494();

        C13494() {
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
    public static final class C13505 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithNetworkSwitcherProvider> {
        public static final C13505 INSTANCE = new C13505();

        C13505() {
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
    public static final class C13516 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithRightButtonProvider> {
        public static final C13516 INSTANCE = new C13516();

        C13516() {
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
    public static final class C13527 extends Lambda implements Function2<Scope, ParametersHolder, SelectableHeaderProvider> {
        public static final C13527 INSTANCE = new C13527();

        C13527() {
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
    public static final class C13538 extends Lambda implements Function2<Scope, ParametersHolder, SelectTokenProvider> {
        public static final C13538 INSTANCE = new C13538();

        C13538() {
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
    public static final class C13549 extends Lambda implements Function2<Scope, ParametersHolder, GlobalStateProvider> {
        public static final C13549 INSTANCE = new C13549();

        C13549() {
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
    public static final class C132110 extends Lambda implements Function2<Scope, ParametersHolder, ServiceProvider> {
        public static final C132110 INSTANCE = new C132110();

        C132110() {
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
    public static final class C132211 extends Lambda implements Function2<Scope, ParametersHolder, TokenBalanceProvider> {
        public static final C132211 INSTANCE = new C132211();

        C132211() {
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
    public static final class C132312 extends Lambda implements Function2<Scope, ParametersHolder, TotalBalanceProvider> {
        public static final C132312 INSTANCE = new C132312();

        C132312() {
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
    public static final class C132413 extends Lambda implements Function2<Scope, ParametersHolder, NftCollectionProvider> {
        public static final C132413 INSTANCE = new C132413();

        C132413() {
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
    public static final class C132514 extends Lambda implements Function2<Scope, ParametersHolder, NftTokenProvider> {
        public static final C132514 INSTANCE = new C132514();

        C132514() {
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
    public static final class C132615 extends Lambda implements Function2<Scope, ParametersHolder, CexProtocolProvider> {
        public static final C132615 INSTANCE = new C132615();

        C132615() {
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
    public static final class C132716 extends Lambda implements Function2<Scope, ParametersHolder, DexProtocolProvider> {
        public static final C132716 INSTANCE = new C132716();

        C132716() {
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
    public static final class C132817 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTokenBalanceProvider> {
        public static final C132817 INSTANCE = new C132817();

        C132817() {
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
    public static final class C132918 extends Lambda implements Function2<Scope, ParametersHolder, BinanceAccountProvider> {
        public static final C132918 INSTANCE = new C132918();

        C132918() {
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
    public static final class C133019 extends Lambda implements Function2<Scope, ParametersHolder, CardButtonProvider> {
        public static final C133019 INSTANCE = new C133019();

        C133019() {
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
    public static final class C133220 extends Lambda implements Function2<Scope, ParametersHolder, TokenTransactionProvider> {
        public static final C133220 INSTANCE = new C133220();

        C133220() {
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
    public static final class C133321 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationProvider> {
        public static final C133321 INSTANCE = new C133321();

        C133321() {
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
    public static final class C133422 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTransactionProvider> {
        public static final C133422 INSTANCE = new C133422();

        C133422() {
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
    public static final class C133523 extends Lambda implements Function2<Scope, ParametersHolder, SimplexProductProvider> {
        public static final C133523 INSTANCE = new C133523();

        C133523() {
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
    public static final class C133624 extends Lambda implements Function2<Scope, ParametersHolder, SimplexFooterProvider> {
        public static final C133624 INSTANCE = new C133624();

        C133624() {
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
    public static final class C133725 extends Lambda implements Function2<Scope, ParametersHolder, CategoryWithCampaignsProvider> {
        public static final C133725 INSTANCE = new C133725();

        C133725() {
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
    public static final class C133826 extends Lambda implements Function2<Scope, ParametersHolder, FilterProvider> {
        public static final C133826 INSTANCE = new C133826();

        C133826() {
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
    public static final class C133927 extends Lambda implements Function2<Scope, ParametersHolder, CampaignProvider> {
        public static final C133927 INSTANCE = new C133927();

        C133927() {
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
    public static final class C134028 extends Lambda implements Function2<Scope, ParametersHolder, CreateCampaignProvider> {
        public static final C134028 INSTANCE = new C134028();

        C134028() {
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
    public static final class C134129 extends Lambda implements Function2<Scope, ParametersHolder, StakingDashboardProvider> {
        public static final C134129 INSTANCE = new C134129();

        C134129() {
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
    public static final class C134330 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammeProvider> {
        public static final C134330 INSTANCE = new C134330();

        C134330() {
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
    public static final class C134431 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammeProvider> {
        public static final C134431 INSTANCE = new C134431();

        C134431() {
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
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C134532 extends Lambda implements Function2<Scope, ParametersHolder, TweetProvider> {
        public static final C134532 INSTANCE = new C134532();

        C134532() {
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
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C134633 extends Lambda implements Function2<Scope, ParametersHolder, TweetDatesProvider> {
        public static final C134633 INSTANCE = new C134633();

        C134633() {
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
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C134734 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUserProvider> {
        public static final C134734 INSTANCE = new C134734();

        C134734() {
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
    /* renamed from: com.smedialink.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C134835 extends Lambda implements Function2<Scope, ParametersHolder, TwitterInviteProvider> {
        public static final C134835 INSTANCE = new C134835();

        C134835() {
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
