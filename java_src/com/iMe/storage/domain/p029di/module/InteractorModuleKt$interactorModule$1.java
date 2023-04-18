package com.iMe.storage.domain.p029di.module;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftAvatarInteractor;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.interactor.firebase.DynamicLinksInteractor;
import com.iMe.storage.domain.interactor.firebase.RemoteConfigInteractor;
import com.iMe.storage.domain.interactor.google.GoogleServicesInteractor;
import com.iMe.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.iMe.storage.domain.interactor.translate.TranslationInteractor;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.iMe.storage.domain.repository.catalog.CatalogRepository;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import com.iMe.storage.domain.repository.crypto.cancel.CancelRepository;
import com.iMe.storage.domain.repository.crypto.donations.DonationsRepository;
import com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.iMe.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.iMe.storage.domain.repository.crypto.swap.SwapRepository;
import com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.iMe.storage.domain.repository.firebase.DynamicLinksRepository;
import com.iMe.storage.domain.repository.firebase.RemoteConfigRepository;
import com.iMe.storage.domain.repository.google.GoogleServicesRepository;
import com.iMe.storage.domain.repository.kikliko.KiklikoRepository;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.repository.socialEmotion.ReactionRepository;
import com.iMe.storage.domain.repository.translate.TranslationRepository;
import com.iMe.storage.domain.repository.twitter.TwitterRepository;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
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
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: InteractorModule.kt */
/* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1 */
/* loaded from: classes3.dex */
final class InteractorModuleKt$interactorModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final InteractorModuleKt$interactorModule$1 INSTANCE = new InteractorModuleKt$interactorModule$1();

    InteractorModuleKt$interactorModule$1() {
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
        C18631 c18631 = C18631.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, c18631, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C18742 c18742 = C18742.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSessionInteractor.class), null, c18742, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C18803 c18803 = C18803.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, c18803, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C18814 c18814 = C18814.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, c18814, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        C18825 c18825 = C18825.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, c18825, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        C18836 c18836 = C18836.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(RemoteConfigInteractor.class), null, c18836, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        C18847 c18847 = C18847.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(DynamicLinksInteractor.class), null, c18847, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        C18858 c18858 = C18858.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, c18858, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        C18869 c18869 = C18869.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, c18869, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        C186410 c186410 = C186410.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, c186410, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new KoinDefinition(module, singleInstanceFactory10);
        C186511 c186511 = C186511.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, c186511, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new KoinDefinition(module, singleInstanceFactory11);
        C186612 c186612 = C186612.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, c186612, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new KoinDefinition(module, singleInstanceFactory12);
        C186713 c186713 = C186713.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, c186713, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new KoinDefinition(module, singleInstanceFactory13);
        C186814 c186814 = C186814.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, c186814, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new KoinDefinition(module, singleInstanceFactory14);
        C186915 c186915 = C186915.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, c186915, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new KoinDefinition(module, singleInstanceFactory15);
        C187016 c187016 = C187016.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(CancelInteractor.class), null, c187016, kind, emptyList16));
        module.indexPrimaryType(singleInstanceFactory16);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory16);
        }
        new KoinDefinition(module, singleInstanceFactory16);
        C187117 c187117 = C187117.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, c187117, kind, emptyList17));
        module.indexPrimaryType(singleInstanceFactory17);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory17);
        }
        new KoinDefinition(module, singleInstanceFactory17);
        C187218 c187218 = C187218.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BoostInteractor.class), null, c187218, kind, emptyList18));
        module.indexPrimaryType(singleInstanceFactory18);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory18);
        }
        new KoinDefinition(module, singleInstanceFactory18);
        C187319 c187319 = C187319.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, c187319, kind, emptyList19));
        module.indexPrimaryType(singleInstanceFactory19);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory19);
        }
        new KoinDefinition(module, singleInstanceFactory19);
        C187520 c187520 = C187520.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, c187520, kind, emptyList20));
        module.indexPrimaryType(singleInstanceFactory20);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory20);
        }
        new KoinDefinition(module, singleInstanceFactory20);
        C187621 c187621 = C187621.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, c187621, kind, emptyList21));
        module.indexPrimaryType(singleInstanceFactory21);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory21);
        }
        new KoinDefinition(module, singleInstanceFactory21);
        C187722 c187722 = C187722.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, c187722, kind, emptyList22));
        module.indexPrimaryType(singleInstanceFactory22);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory22);
        }
        new KoinDefinition(module, singleInstanceFactory22);
        C187823 c187823 = C187823.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(NftAvatarInteractor.class), null, c187823, kind, emptyList23));
        module.indexPrimaryType(singleInstanceFactory23);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory23);
        }
        new KoinDefinition(module, singleInstanceFactory23);
        C187924 c187924 = C187924.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, c187924, kind, emptyList24));
        module.indexPrimaryType(singleInstanceFactory24);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory24);
        }
        new KoinDefinition(module, singleInstanceFactory24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C18814 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationInteractor> {
        public static final C18814 INSTANCE = new C18814();

        C18814() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PushNotificationInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new PushNotificationInteractor((WalletSessionInteractor) single.get(Reflection.getOrCreateKotlinClass(WalletSessionInteractor.class), null, null), (PushNotificationRepository) single.get(Reflection.getOrCreateKotlinClass(PushNotificationRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C18825 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesInteractor> {
        public static final C18825 INSTANCE = new C18825();

        C18825() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GoogleServicesInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new GoogleServicesInteractor((GoogleServicesRepository) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C18836 extends Lambda implements Function2<Scope, ParametersHolder, RemoteConfigInteractor> {
        public static final C18836 INSTANCE = new C18836();

        C18836() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final RemoteConfigInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new RemoteConfigInteractor((RemoteConfigRepository) single.get(Reflection.getOrCreateKotlinClass(RemoteConfigRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C18847 extends Lambda implements Function2<Scope, ParametersHolder, DynamicLinksInteractor> {
        public static final C18847 INSTANCE = new C18847();

        C18847() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DynamicLinksInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DynamicLinksInteractor((DynamicLinksRepository) single.get(Reflection.getOrCreateKotlinClass(DynamicLinksRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C18858 extends Lambda implements Function2<Scope, ParametersHolder, KiklikoInteractor> {
        public static final C18858 INSTANCE = new C18858();

        C18858() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final KiklikoInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new KiklikoInteractor((KiklikoRepository) single.get(Reflection.getOrCreateKotlinClass(KiklikoRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C18869 extends Lambda implements Function2<Scope, ParametersHolder, CatalogInteractor> {
        public static final C18869 INSTANCE = new C18869();

        C18869() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogInteractor((CatalogRepository) single.get(Reflection.getOrCreateKotlinClass(CatalogRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C186410 extends Lambda implements Function2<Scope, ParametersHolder, TwitterInteractor> {
        public static final C186410 INSTANCE = new C186410();

        C186410() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterInteractor((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TwitterRepository) single.get(Reflection.getOrCreateKotlinClass(TwitterRepository.class), null, null), (TwitterPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C186713 extends Lambda implements Function2<Scope, ParametersHolder, SimplexInteractor> {
        public static final C186713 INSTANCE = new C186713();

        C186713() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SimplexInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SimplexInteractor((SimplexRepository) single.get(Reflection.getOrCreateKotlinClass(SimplexRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C186814 extends Lambda implements Function2<Scope, ParametersHolder, SwapInteractor> {
        public static final C186814 INSTANCE = new C186814();

        C186814() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SwapInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SwapInteractor((SwapRepository) single.get(Reflection.getOrCreateKotlinClass(SwapRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C187117 extends Lambda implements Function2<Scope, ParametersHolder, DonationsInteractor> {
        public static final C187117 INSTANCE = new C187117();

        C187117() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DonationsInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DonationsInteractor((DonationsRepository) single.get(Reflection.getOrCreateKotlinClass(DonationsRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C187218 extends Lambda implements Function2<Scope, ParametersHolder, BoostInteractor> {
        public static final C187218 INSTANCE = new C187218();

        C187218() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BoostInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BoostInteractor((BoostRepository) single.get(Reflection.getOrCreateKotlinClass(BoostRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C187319 extends Lambda implements Function2<Scope, ParametersHolder, CryptoPermissionInteractor> {
        public static final C187319 INSTANCE = new C187319();

        C187319() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoPermissionInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoPermissionInteractor((CryptoPermissionRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoPermissionRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C187520 extends Lambda implements Function2<Scope, ParametersHolder, BinanceInternalInteractor> {
        public static final C187520 INSTANCE = new C187520();

        C187520() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinanceInternalInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinanceInternalInteractor((BinanceInternalRepository) single.get(Reflection.getOrCreateKotlinClass(BinanceInternalRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C187621 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectInteractor> {
        public static final C187621 INSTANCE = new C187621();

        C187621() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletConnectInteractor((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectRepository) single.get(Reflection.getOrCreateKotlinClass(WalletConnectRepository.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C187924 extends Lambda implements Function2<Scope, ParametersHolder, ReactionInteractor> {
        public static final C187924 INSTANCE = new C187924();

        C187924() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ReactionInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ReactionInteractor((ReactionRepository) single.get(Reflection.getOrCreateKotlinClass(ReactionRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C18631 extends Lambda implements Function2<Scope, ParametersHolder, TranslationInteractor> {
        public static final C18631 INSTANCE = new C18631();

        C18631() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TranslationInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TranslationInteractor((TranslationRepository) single.get(Reflection.getOrCreateKotlinClass(TranslationRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C186511 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletInteractor> {
        public static final C186511 INSTANCE = new C186511();

        C186511() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoWalletInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            CryptoLocalWalletRepository cryptoLocalWalletRepository = (CryptoLocalWalletRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoLocalWalletRepository.class), null, null);
            CryptoWalletRepository cryptoWalletRepository = (CryptoWalletRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletRepository.class), null, null);
            CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new CryptoWalletInteractor(cryptoLocalWalletRepository, cryptoWalletRepository, cryptoAccessManager, (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (PinCodeInteractor) single.get(Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, null), (RxEventBus) single.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), schedulersProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C186612 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeInteractor> {
        public static final C186612 INSTANCE = new C186612();

        C186612() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PinCodeInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
            return new PinCodeInteractor((PinCodeRepository) single.get(Reflection.getOrCreateKotlinClass(PinCodeRepository.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), cryptoAccessManager, (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C186915 extends Lambda implements Function2<Scope, ParametersHolder, AccountLevelInteractor> {
        public static final C186915 INSTANCE = new C186915();

        C186915() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AccountLevelInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AccountLevelInteractor((AccountLevelRepository) single.get(Reflection.getOrCreateKotlinClass(AccountLevelRepository.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C187016 extends Lambda implements Function2<Scope, ParametersHolder, CancelInteractor> {
        public static final C187016 INSTANCE = new C187016();

        C187016() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CancelInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CancelInteractor((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CancelRepository) single.get(Reflection.getOrCreateKotlinClass(CancelRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C18742 extends Lambda implements Function2<Scope, ParametersHolder, WalletSessionInteractor> {
        public static final C18742 INSTANCE = new C18742();

        C18742() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSessionInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            SchedulersProvider schedulersProvider = (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            PushNotificationRepository pushNotificationRepository = (PushNotificationRepository) single.get(Reflection.getOrCreateKotlinClass(PushNotificationRepository.class), null, null);
            WalletRepository walletRepository = (WalletRepository) single.get(Reflection.getOrCreateKotlinClass(WalletRepository.class), null, null);
            return new WalletSessionInteractor((PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (WalletSessionRepository) single.get(Reflection.getOrCreateKotlinClass(WalletSessionRepository.class), null, null), walletRepository, pushNotificationRepository, schedulersProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C187722 extends Lambda implements Function2<Scope, ParametersHolder, AirdropInteractor> {
        public static final C187722 INSTANCE = new C187722();

        C187722() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AirdropInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AirdropInteractor((AirdropRepository) single.get(Reflection.getOrCreateKotlinClass(AirdropRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C187823 extends Lambda implements Function2<Scope, ParametersHolder, NftAvatarInteractor> {
        public static final C187823 INSTANCE = new C187823();

        C187823() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NftAvatarInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new NftAvatarInteractor((NftAvatarRepository) single.get(Reflection.getOrCreateKotlinClass(NftAvatarRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C18803 extends Lambda implements Function2<Scope, ParametersHolder, WalletInteractor> {
        public static final C18803 INSTANCE = new C18803();

        C18803() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletInteractor((WalletRepository) single.get(Reflection.getOrCreateKotlinClass(WalletRepository.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }
}
