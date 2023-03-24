package com.smedialink.storage.domain.p029di.module;

import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.interactor.catalog.CatalogInteractor;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.smedialink.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.smedialink.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.smedialink.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.interactor.crypto.nft.avatar.NftAvatarInteractor;
import com.smedialink.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.smedialink.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.smedialink.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.interactor.firebase.DynamicLinksInteractor;
import com.smedialink.storage.domain.interactor.firebase.RemoteConfigInteractor;
import com.smedialink.storage.domain.interactor.google.GoogleServicesInteractor;
import com.smedialink.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.smedialink.storage.domain.interactor.notification.PushNotificationInteractor;
import com.smedialink.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.smedialink.storage.domain.interactor.translate.TranslationInteractor;
import com.smedialink.storage.domain.interactor.twitter.TwitterInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.smedialink.storage.domain.repository.catalog.CatalogRepository;
import com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository;
import com.smedialink.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.smedialink.storage.domain.repository.crypto.boost.BoostRepository;
import com.smedialink.storage.domain.repository.crypto.cancel.CancelRepository;
import com.smedialink.storage.domain.repository.crypto.donations.DonationsRepository;
import com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.smedialink.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import com.smedialink.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.smedialink.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.smedialink.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.smedialink.storage.domain.repository.crypto.swap.SwapRepository;
import com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.smedialink.storage.domain.repository.firebase.DynamicLinksRepository;
import com.smedialink.storage.domain.repository.firebase.RemoteConfigRepository;
import com.smedialink.storage.domain.repository.google.GoogleServicesRepository;
import com.smedialink.storage.domain.repository.kikliko.KiklikoRepository;
import com.smedialink.storage.domain.repository.notification.PushNotificationRepository;
import com.smedialink.storage.domain.repository.socialEmotion.ReactionRepository;
import com.smedialink.storage.domain.repository.translate.TranslationRepository;
import com.smedialink.storage.domain.repository.twitter.TwitterRepository;
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.repository.wallet.WalletSessionRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.storage.TwitterPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
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
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: InteractorModule.kt */
/* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1 */
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
        C18181 c18181 = C18181.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, c18181, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C18292 c18292 = C18292.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSessionInteractor.class), null, c18292, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C18353 c18353 = C18353.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, c18353, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C18364 c18364 = C18364.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, c18364, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C18375 c18375 = C18375.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, c18375, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C18386 c18386 = C18386.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(RemoteConfigInteractor.class), null, c18386, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        C18397 c18397 = C18397.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(DynamicLinksInteractor.class), null, c18397, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        C18408 c18408 = C18408.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, c18408, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        C18419 c18419 = C18419.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, c18419, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        C181910 c181910 = C181910.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, c181910, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        C182011 c182011 = C182011.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, c182011, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        C182112 c182112 = C182112.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, c182112, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
        C182213 c182213 = C182213.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, c182213, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new Pair(module, singleInstanceFactory13);
        C182314 c182314 = C182314.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, c182314, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new Pair(module, singleInstanceFactory14);
        C182415 c182415 = C182415.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, c182415, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new Pair(module, singleInstanceFactory15);
        C182516 c182516 = C182516.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(CancelInteractor.class), null, c182516, kind, emptyList16));
        module.indexPrimaryType(singleInstanceFactory16);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory16);
        }
        new Pair(module, singleInstanceFactory16);
        C182617 c182617 = C182617.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, c182617, kind, emptyList17));
        module.indexPrimaryType(singleInstanceFactory17);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory17);
        }
        new Pair(module, singleInstanceFactory17);
        C182718 c182718 = C182718.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BoostInteractor.class), null, c182718, kind, emptyList18));
        module.indexPrimaryType(singleInstanceFactory18);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory18);
        }
        new Pair(module, singleInstanceFactory18);
        C182819 c182819 = C182819.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, c182819, kind, emptyList19));
        module.indexPrimaryType(singleInstanceFactory19);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory19);
        }
        new Pair(module, singleInstanceFactory19);
        C183020 c183020 = C183020.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, c183020, kind, emptyList20));
        module.indexPrimaryType(singleInstanceFactory20);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory20);
        }
        new Pair(module, singleInstanceFactory20);
        C183121 c183121 = C183121.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, c183121, kind, emptyList21));
        module.indexPrimaryType(singleInstanceFactory21);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory21);
        }
        new Pair(module, singleInstanceFactory21);
        C183222 c183222 = C183222.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, c183222, kind, emptyList22));
        module.indexPrimaryType(singleInstanceFactory22);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory22);
        }
        new Pair(module, singleInstanceFactory22);
        C183323 c183323 = C183323.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(NftAvatarInteractor.class), null, c183323, kind, emptyList23));
        module.indexPrimaryType(singleInstanceFactory23);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory23);
        }
        new Pair(module, singleInstanceFactory23);
        C183424 c183424 = C183424.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, c183424, kind, emptyList24));
        module.indexPrimaryType(singleInstanceFactory24);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory24);
        }
        new Pair(module, singleInstanceFactory24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C18364 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationInteractor> {
        public static final C18364 INSTANCE = new C18364();

        C18364() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C18375 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesInteractor> {
        public static final C18375 INSTANCE = new C18375();

        C18375() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C18386 extends Lambda implements Function2<Scope, ParametersHolder, RemoteConfigInteractor> {
        public static final C18386 INSTANCE = new C18386();

        C18386() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C18397 extends Lambda implements Function2<Scope, ParametersHolder, DynamicLinksInteractor> {
        public static final C18397 INSTANCE = new C18397();

        C18397() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C18408 extends Lambda implements Function2<Scope, ParametersHolder, KiklikoInteractor> {
        public static final C18408 INSTANCE = new C18408();

        C18408() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C18419 extends Lambda implements Function2<Scope, ParametersHolder, CatalogInteractor> {
        public static final C18419 INSTANCE = new C18419();

        C18419() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C181910 extends Lambda implements Function2<Scope, ParametersHolder, TwitterInteractor> {
        public static final C181910 INSTANCE = new C181910();

        C181910() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C182213 extends Lambda implements Function2<Scope, ParametersHolder, SimplexInteractor> {
        public static final C182213 INSTANCE = new C182213();

        C182213() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C182314 extends Lambda implements Function2<Scope, ParametersHolder, SwapInteractor> {
        public static final C182314 INSTANCE = new C182314();

        C182314() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C182617 extends Lambda implements Function2<Scope, ParametersHolder, DonationsInteractor> {
        public static final C182617 INSTANCE = new C182617();

        C182617() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C182718 extends Lambda implements Function2<Scope, ParametersHolder, BoostInteractor> {
        public static final C182718 INSTANCE = new C182718();

        C182718() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C182819 extends Lambda implements Function2<Scope, ParametersHolder, CryptoPermissionInteractor> {
        public static final C182819 INSTANCE = new C182819();

        C182819() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C183020 extends Lambda implements Function2<Scope, ParametersHolder, BinanceInternalInteractor> {
        public static final C183020 INSTANCE = new C183020();

        C183020() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C183121 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectInteractor> {
        public static final C183121 INSTANCE = new C183121();

        C183121() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C183424 extends Lambda implements Function2<Scope, ParametersHolder, ReactionInteractor> {
        public static final C183424 INSTANCE = new C183424();

        C183424() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C18181 extends Lambda implements Function2<Scope, ParametersHolder, TranslationInteractor> {
        public static final C18181 INSTANCE = new C18181();

        C18181() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C182011 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletInteractor> {
        public static final C182011 INSTANCE = new C182011();

        C182011() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C182112 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeInteractor> {
        public static final C182112 INSTANCE = new C182112();

        C182112() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C182415 extends Lambda implements Function2<Scope, ParametersHolder, AccountLevelInteractor> {
        public static final C182415 INSTANCE = new C182415();

        C182415() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C182516 extends Lambda implements Function2<Scope, ParametersHolder, CancelInteractor> {
        public static final C182516 INSTANCE = new C182516();

        C182516() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C18292 extends Lambda implements Function2<Scope, ParametersHolder, WalletSessionInteractor> {
        public static final C18292 INSTANCE = new C18292();

        C18292() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C183222 extends Lambda implements Function2<Scope, ParametersHolder, AirdropInteractor> {
        public static final C183222 INSTANCE = new C183222();

        C183222() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C183323 extends Lambda implements Function2<Scope, ParametersHolder, NftAvatarInteractor> {
        public static final C183323 INSTANCE = new C183323();

        C183323() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C18353 extends Lambda implements Function2<Scope, ParametersHolder, WalletInteractor> {
        public static final C18353 INSTANCE = new C18353();

        C18353() {
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
