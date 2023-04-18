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
    public static final class C12811 extends Lambda implements Function2<Scope, ParametersHolder, BannerProvider> {
        public static final C12811 INSTANCE = new C12811();

        C12811() {
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
    public static final class C12922 extends Lambda implements Function2<Scope, ParametersHolder, CreateAccountProvider> {
        public static final C12922 INSTANCE = new C12922();

        C12922() {
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
        C12811 c12811 = C12811.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(BannerProvider.class), null, c12811, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C12922 c12922 = C12922.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CreateAccountProvider.class), null, c12922, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        C13033 c13033 = C13033.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CryptoAccountProvider.class), null, c13033, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        C13104 c13104 = C13104.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HeaderProvider.class), null, c13104, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new KoinDefinition(module, factoryInstanceFactory4);
        C13115 c13115 = C13115.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(HeaderWithNetworkSwitcherProvider.class), null, c13115, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new KoinDefinition(module, factoryInstanceFactory5);
        C13126 c13126 = C13126.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(HeaderWithRightButtonProvider.class), null, c13126, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new KoinDefinition(module, factoryInstanceFactory6);
        C13137 c13137 = C13137.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(SelectableHeaderProvider.class), null, c13137, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new KoinDefinition(module, factoryInstanceFactory7);
        C13148 c13148 = C13148.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectTokenProvider.class), null, c13148, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new KoinDefinition(module, factoryInstanceFactory8);
        C13159 c13159 = C13159.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(GlobalStateProvider.class), null, c13159, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new KoinDefinition(module, factoryInstanceFactory9);
        C128210 c128210 = C128210.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(ServiceProvider.class), null, c128210, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new KoinDefinition(module, factoryInstanceFactory10);
        C128311 c128311 = C128311.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TokenBalanceProvider.class), null, c128311, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new KoinDefinition(module, factoryInstanceFactory11);
        C128412 c128412 = C128412.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(TotalBalanceProvider.class), null, c128412, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new KoinDefinition(module, factoryInstanceFactory12);
        C128513 c128513 = C128513.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(NftCollectionProvider.class), null, c128513, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new KoinDefinition(module, factoryInstanceFactory13);
        C128614 c128614 = C128614.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(NftTokenProvider.class), null, c128614, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new KoinDefinition(module, factoryInstanceFactory14);
        C128715 c128715 = C128715.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CexProtocolProvider.class), null, c128715, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new KoinDefinition(module, factoryInstanceFactory15);
        C128816 c128816 = C128816.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DexProtocolProvider.class), null, c128816, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new KoinDefinition(module, factoryInstanceFactory16);
        C128917 c128917 = C128917.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BinanceTokenBalanceProvider.class), null, c128917, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new KoinDefinition(module, factoryInstanceFactory17);
        C129018 c129018 = C129018.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BinanceAccountProvider.class), null, c129018, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new KoinDefinition(module, factoryInstanceFactory18);
        C129119 c129119 = C129119.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CardButtonProvider.class), null, c129119, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new KoinDefinition(module, factoryInstanceFactory19);
        C129320 c129320 = C129320.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(TokenTransactionProvider.class), null, c129320, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new KoinDefinition(module, factoryInstanceFactory20);
        C129421 c129421 = C129421.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(StakingOperationProvider.class), null, c129421, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new KoinDefinition(module, factoryInstanceFactory21);
        C129522 c129522 = C129522.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BinanceTransactionProvider.class), null, c129522, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new KoinDefinition(module, factoryInstanceFactory22);
        C129623 c129623 = C129623.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(SimplexProductProvider.class), null, c129623, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new KoinDefinition(module, factoryInstanceFactory23);
        C129724 c129724 = C129724.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(SimplexFooterProvider.class), null, c129724, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new KoinDefinition(module, factoryInstanceFactory24);
        C129825 c129825 = C129825.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CategoryWithCampaignsProvider.class), null, c129825, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new KoinDefinition(module, factoryInstanceFactory25);
        C129926 c129926 = C129926.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(FilterProvider.class), null, c129926, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new KoinDefinition(module, factoryInstanceFactory26);
        C130027 c130027 = C130027.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CampaignProvider.class), null, c130027, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new KoinDefinition(module, factoryInstanceFactory27);
        C130128 c130128 = C130128.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateCampaignProvider.class), null, c130128, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new KoinDefinition(module, factoryInstanceFactory28);
        C130229 c130229 = C130229.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(StakingDashboardProvider.class), null, c130229, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new KoinDefinition(module, factoryInstanceFactory29);
        C130430 c130430 = C130430.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(StakingProgrammeProvider.class), null, c130430, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new KoinDefinition(module, factoryInstanceFactory30);
        C130531 c130531 = C130531.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammeProvider.class), null, c130531, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new KoinDefinition(module, factoryInstanceFactory31);
        C130632 c130632 = C130632.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(TweetProvider.class), null, c130632, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new KoinDefinition(module, factoryInstanceFactory32);
        C130733 c130733 = C130733.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(TweetDatesProvider.class), null, c130733, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new KoinDefinition(module, factoryInstanceFactory33);
        C130834 c130834 = C130834.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(TwitterUserProvider.class), null, c130834, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new KoinDefinition(module, factoryInstanceFactory34);
        C130935 c130935 = C130935.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(TwitterInviteProvider.class), null, c130935, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new KoinDefinition(module, factoryInstanceFactory35);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ItemProviderModule.kt */
    /* renamed from: com.iMe.di.module.ItemProviderModuleKt$presentationItemProviderModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13033 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccountProvider> {
        public static final C13033 INSTANCE = new C13033();

        C13033() {
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
    public static final class C13104 extends Lambda implements Function2<Scope, ParametersHolder, HeaderProvider> {
        public static final C13104 INSTANCE = new C13104();

        C13104() {
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
    public static final class C13115 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithNetworkSwitcherProvider> {
        public static final C13115 INSTANCE = new C13115();

        C13115() {
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
    public static final class C13126 extends Lambda implements Function2<Scope, ParametersHolder, HeaderWithRightButtonProvider> {
        public static final C13126 INSTANCE = new C13126();

        C13126() {
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
    public static final class C13137 extends Lambda implements Function2<Scope, ParametersHolder, SelectableHeaderProvider> {
        public static final C13137 INSTANCE = new C13137();

        C13137() {
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
    public static final class C13148 extends Lambda implements Function2<Scope, ParametersHolder, SelectTokenProvider> {
        public static final C13148 INSTANCE = new C13148();

        C13148() {
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
    public static final class C13159 extends Lambda implements Function2<Scope, ParametersHolder, GlobalStateProvider> {
        public static final C13159 INSTANCE = new C13159();

        C13159() {
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
    public static final class C128210 extends Lambda implements Function2<Scope, ParametersHolder, ServiceProvider> {
        public static final C128210 INSTANCE = new C128210();

        C128210() {
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
    public static final class C128311 extends Lambda implements Function2<Scope, ParametersHolder, TokenBalanceProvider> {
        public static final C128311 INSTANCE = new C128311();

        C128311() {
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
    public static final class C128412 extends Lambda implements Function2<Scope, ParametersHolder, TotalBalanceProvider> {
        public static final C128412 INSTANCE = new C128412();

        C128412() {
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
    public static final class C128513 extends Lambda implements Function2<Scope, ParametersHolder, NftCollectionProvider> {
        public static final C128513 INSTANCE = new C128513();

        C128513() {
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
    public static final class C128614 extends Lambda implements Function2<Scope, ParametersHolder, NftTokenProvider> {
        public static final C128614 INSTANCE = new C128614();

        C128614() {
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
    public static final class C128715 extends Lambda implements Function2<Scope, ParametersHolder, CexProtocolProvider> {
        public static final C128715 INSTANCE = new C128715();

        C128715() {
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
    public static final class C128816 extends Lambda implements Function2<Scope, ParametersHolder, DexProtocolProvider> {
        public static final C128816 INSTANCE = new C128816();

        C128816() {
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
    public static final class C128917 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTokenBalanceProvider> {
        public static final C128917 INSTANCE = new C128917();

        C128917() {
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
    public static final class C129018 extends Lambda implements Function2<Scope, ParametersHolder, BinanceAccountProvider> {
        public static final C129018 INSTANCE = new C129018();

        C129018() {
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
    public static final class C129119 extends Lambda implements Function2<Scope, ParametersHolder, CardButtonProvider> {
        public static final C129119 INSTANCE = new C129119();

        C129119() {
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
    public static final class C129320 extends Lambda implements Function2<Scope, ParametersHolder, TokenTransactionProvider> {
        public static final C129320 INSTANCE = new C129320();

        C129320() {
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
    public static final class C129421 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationProvider> {
        public static final C129421 INSTANCE = new C129421();

        C129421() {
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
    public static final class C129522 extends Lambda implements Function2<Scope, ParametersHolder, BinanceTransactionProvider> {
        public static final C129522 INSTANCE = new C129522();

        C129522() {
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
    public static final class C129623 extends Lambda implements Function2<Scope, ParametersHolder, SimplexProductProvider> {
        public static final C129623 INSTANCE = new C129623();

        C129623() {
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
    public static final class C129724 extends Lambda implements Function2<Scope, ParametersHolder, SimplexFooterProvider> {
        public static final C129724 INSTANCE = new C129724();

        C129724() {
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
    public static final class C129825 extends Lambda implements Function2<Scope, ParametersHolder, CategoryWithCampaignsProvider> {
        public static final C129825 INSTANCE = new C129825();

        C129825() {
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
    public static final class C129926 extends Lambda implements Function2<Scope, ParametersHolder, FilterProvider> {
        public static final C129926 INSTANCE = new C129926();

        C129926() {
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
    public static final class C130027 extends Lambda implements Function2<Scope, ParametersHolder, CampaignProvider> {
        public static final C130027 INSTANCE = new C130027();

        C130027() {
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
    public static final class C130128 extends Lambda implements Function2<Scope, ParametersHolder, CreateCampaignProvider> {
        public static final C130128 INSTANCE = new C130128();

        C130128() {
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
    public static final class C130229 extends Lambda implements Function2<Scope, ParametersHolder, StakingDashboardProvider> {
        public static final C130229 INSTANCE = new C130229();

        C130229() {
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
    public static final class C130430 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammeProvider> {
        public static final C130430 INSTANCE = new C130430();

        C130430() {
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
    public static final class C130531 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammeProvider> {
        public static final C130531 INSTANCE = new C130531();

        C130531() {
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
    public static final class C130632 extends Lambda implements Function2<Scope, ParametersHolder, TweetProvider> {
        public static final C130632 INSTANCE = new C130632();

        C130632() {
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
    public static final class C130733 extends Lambda implements Function2<Scope, ParametersHolder, TweetDatesProvider> {
        public static final C130733 INSTANCE = new C130733();

        C130733() {
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
    public static final class C130834 extends Lambda implements Function2<Scope, ParametersHolder, TwitterUserProvider> {
        public static final C130834 INSTANCE = new C130834();

        C130834() {
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
    public static final class C130935 extends Lambda implements Function2<Scope, ParametersHolder, TwitterInviteProvider> {
        public static final C130935 INSTANCE = new C130935();

        C130935() {
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
