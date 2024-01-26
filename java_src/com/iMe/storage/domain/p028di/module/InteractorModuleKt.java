package com.iMe.storage.domain.p028di.module;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftInteractor;
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
import com.iMe.storage.domain.interactor.wallet.SessionInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.iMe.storage.domain.repository.catalog.CatalogRepository;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import com.iMe.storage.domain.repository.crypto.cancel.CancelRepository;
import com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository;
import com.iMe.storage.domain.repository.crypto.donations.DonationsRepository;
import com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.iMe.storage.domain.repository.crypto.nft.avatar.NftRepository;
import com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.iMe.storage.domain.repository.crypto.pin.PinCodeRepository;
import com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.iMe.storage.domain.repository.crypto.swap.SwapRepository;
import com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository;
import com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.iMe.storage.domain.repository.firebase.DynamicLinksRepository;
import com.iMe.storage.domain.repository.firebase.RemoteConfigRepository;
import com.iMe.storage.domain.repository.google.GoogleServicesRepository;
import com.iMe.storage.domain.repository.kikliko.KiklikoRepository;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.repository.socialEmotion.ReactionRepository;
import com.iMe.storage.domain.repository.socialMedia.TwitterRepository;
import com.iMe.storage.domain.repository.translate.TranslationRepository;
import com.iMe.storage.domain.repository.wallet.SessionRepository;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
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
import org.koin.dsl.ModuleDSLKt;
/* compiled from: InteractorModule.kt */
/* renamed from: com.iMe.storage.domain.di.module.InteractorModuleKt */
/* loaded from: classes3.dex */
public final class InteractorModuleKt {
    private static Module interactorModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1
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
            C19131 c19131 = new Function2<Scope, ParametersHolder, TranslationInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final TranslationInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TranslationInteractor((TranslationRepository) single.get(Reflection.getOrCreateKotlinClass(TranslationRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, c19131, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C19242 c19242 = new Function2<Scope, ParametersHolder, SessionInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final SessionInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SessionInteractor((PushNotificationRepository) single.get(Reflection.getOrCreateKotlinClass(PushNotificationRepository.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (SessionRepository) single.get(Reflection.getOrCreateKotlinClass(SessionRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(SessionInteractor.class), null, c19242, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C19323 c19323 = new Function2<Scope, ParametersHolder, WalletInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final WalletInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletInteractor((WalletRepository) single.get(Reflection.getOrCreateKotlinClass(WalletRepository.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, c19323, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C19334 c19334 = new Function2<Scope, ParametersHolder, PushNotificationInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final PushNotificationInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PushNotificationInteractor((SessionInteractor) single.get(Reflection.getOrCreateKotlinClass(SessionInteractor.class), null, null), (PushNotificationRepository) single.get(Reflection.getOrCreateKotlinClass(PushNotificationRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, c19334, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            C19345 c19345 = new Function2<Scope, ParametersHolder, GoogleServicesInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final GoogleServicesInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new GoogleServicesInteractor((GoogleServicesRepository) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, c19345, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
            C19356 c19356 = new Function2<Scope, ParametersHolder, RemoteConfigInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final RemoteConfigInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new RemoteConfigInteractor((RemoteConfigRepository) single.get(Reflection.getOrCreateKotlinClass(RemoteConfigRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(RemoteConfigInteractor.class), null, c19356, kind, emptyList6));
            module.indexPrimaryType(singleInstanceFactory6);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory6);
            }
            new KoinDefinition(module, singleInstanceFactory6);
            C19367 c19367 = new Function2<Scope, ParametersHolder, DynamicLinksInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final DynamicLinksInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DynamicLinksInteractor((DynamicLinksRepository) single.get(Reflection.getOrCreateKotlinClass(DynamicLinksRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(DynamicLinksInteractor.class), null, c19367, kind, emptyList7));
            module.indexPrimaryType(singleInstanceFactory7);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory7);
            }
            new KoinDefinition(module, singleInstanceFactory7);
            C19378 c19378 = new Function2<Scope, ParametersHolder, KiklikoInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final KiklikoInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new KiklikoInteractor((KiklikoRepository) single.get(Reflection.getOrCreateKotlinClass(KiklikoRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, c19378, kind, emptyList8));
            module.indexPrimaryType(singleInstanceFactory8);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory8);
            }
            new KoinDefinition(module, singleInstanceFactory8);
            C19389 c19389 = new Function2<Scope, ParametersHolder, CatalogInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final CatalogInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogInteractor((CatalogRepository) single.get(Reflection.getOrCreateKotlinClass(CatalogRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, c19389, kind, emptyList9));
            module.indexPrimaryType(singleInstanceFactory9);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory9);
            }
            new KoinDefinition(module, singleInstanceFactory9);
            C191410 c191410 = new Function2<Scope, ParametersHolder, TwitterInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final TwitterInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TwitterInteractor((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TwitterRepository) single.get(Reflection.getOrCreateKotlinClass(TwitterRepository.class), null, null), (TwitterPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, c191410, kind, emptyList10));
            module.indexPrimaryType(singleInstanceFactory10);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory10);
            }
            new KoinDefinition(module, singleInstanceFactory10);
            C191511 c191511 = new Function2<Scope, ParametersHolder, CryptoWalletInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final CryptoWalletInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoWalletInteractor((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoLocalWalletRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoLocalWalletRepository.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletRepository.class), null, null), (RxEventBus) single.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, c191511, kind, emptyList11));
            module.indexPrimaryType(singleInstanceFactory11);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory11);
            }
            new KoinDefinition(module, singleInstanceFactory11);
            C191612 c191612 = new Function2<Scope, ParametersHolder, PinCodeInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final PinCodeInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PinCodeInteractor((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (PinCodeRepository) single.get(Reflection.getOrCreateKotlinClass(PinCodeRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, c191612, kind, emptyList12));
            module.indexPrimaryType(singleInstanceFactory12);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory12);
            }
            new KoinDefinition(module, singleInstanceFactory12);
            C191713 c191713 = new Function2<Scope, ParametersHolder, SimplexInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final SimplexInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SimplexInteractor((SimplexRepository) single.get(Reflection.getOrCreateKotlinClass(SimplexRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, c191713, kind, emptyList13));
            module.indexPrimaryType(singleInstanceFactory13);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory13);
            }
            new KoinDefinition(module, singleInstanceFactory13);
            C191814 c191814 = new Function2<Scope, ParametersHolder, SwapInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final SwapInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SwapInteractor((SwapRepository) single.get(Reflection.getOrCreateKotlinClass(SwapRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, c191814, kind, emptyList14));
            module.indexPrimaryType(singleInstanceFactory14);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory14);
            }
            new KoinDefinition(module, singleInstanceFactory14);
            C191915 c191915 = new Function2<Scope, ParametersHolder, AccountLevelInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final AccountLevelInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AccountLevelInteractor((AccountLevelRepository) single.get(Reflection.getOrCreateKotlinClass(AccountLevelRepository.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, c191915, kind, emptyList15));
            module.indexPrimaryType(singleInstanceFactory15);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory15);
            }
            new KoinDefinition(module, singleInstanceFactory15);
            C192016 c192016 = new Function2<Scope, ParametersHolder, CancelInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final CancelInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CancelInteractor((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CancelRepository) single.get(Reflection.getOrCreateKotlinClass(CancelRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(CancelInteractor.class), null, c192016, kind, emptyList16));
            module.indexPrimaryType(singleInstanceFactory16);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory16);
            }
            new KoinDefinition(module, singleInstanceFactory16);
            C192117 c192117 = new Function2<Scope, ParametersHolder, DonationsInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final DonationsInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DonationsInteractor((DonationsRepository) single.get(Reflection.getOrCreateKotlinClass(DonationsRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, c192117, kind, emptyList17));
            module.indexPrimaryType(singleInstanceFactory17);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory17);
            }
            new KoinDefinition(module, singleInstanceFactory17);
            C192218 c192218 = new Function2<Scope, ParametersHolder, BoostInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final BoostInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BoostInteractor((BoostRepository) single.get(Reflection.getOrCreateKotlinClass(BoostRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BoostInteractor.class), null, c192218, kind, emptyList18));
            module.indexPrimaryType(singleInstanceFactory18);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory18);
            }
            new KoinDefinition(module, singleInstanceFactory18);
            C192319 c192319 = new Function2<Scope, ParametersHolder, CryptoPermissionInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final CryptoPermissionInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoPermissionInteractor((CryptoPermissionRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoPermissionRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, c192319, kind, emptyList19));
            module.indexPrimaryType(singleInstanceFactory19);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory19);
            }
            new KoinDefinition(module, singleInstanceFactory19);
            C192520 c192520 = new Function2<Scope, ParametersHolder, BinanceInternalInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.20
                @Override // kotlin.jvm.functions.Function2
                public final BinanceInternalInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BinanceInternalInteractor((BinanceInternalRepository) single.get(Reflection.getOrCreateKotlinClass(BinanceInternalRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, c192520, kind, emptyList20));
            module.indexPrimaryType(singleInstanceFactory20);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory20);
            }
            new KoinDefinition(module, singleInstanceFactory20);
            C192621 c192621 = new Function2<Scope, ParametersHolder, WalletConnectInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletConnectInteractor((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectRepository) single.get(Reflection.getOrCreateKotlinClass(WalletConnectRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, c192621, kind, emptyList21));
            module.indexPrimaryType(singleInstanceFactory21);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory21);
            }
            new KoinDefinition(module, singleInstanceFactory21);
            C192722 c192722 = new Function2<Scope, ParametersHolder, AirdropInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final AirdropInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AirdropInteractor((AirdropRepository) single.get(Reflection.getOrCreateKotlinClass(AirdropRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, c192722, kind, emptyList22));
            module.indexPrimaryType(singleInstanceFactory22);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory22);
            }
            new KoinDefinition(module, singleInstanceFactory22);
            C192823 c192823 = new Function2<Scope, ParametersHolder, NftInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final NftInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new NftInteractor((NftRepository) single.get(Reflection.getOrCreateKotlinClass(NftRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(NftInteractor.class), null, c192823, kind, emptyList23));
            module.indexPrimaryType(singleInstanceFactory23);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory23);
            }
            new KoinDefinition(module, singleInstanceFactory23);
            C192924 c192924 = new Function2<Scope, ParametersHolder, CryptoBoxInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxInteractor((CryptoBoxRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoBoxRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, c192924, kind, emptyList24));
            module.indexPrimaryType(singleInstanceFactory24);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory24);
            }
            new KoinDefinition(module, singleInstanceFactory24);
            C193025 c193025 = new Function2<Scope, ParametersHolder, TonFragmentInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonFragmentInteractor((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TonController) single.get(Reflection.getOrCreateKotlinClass(TonController.class), null, null), (TonFragmentRepository) single.get(Reflection.getOrCreateKotlinClass(TonFragmentRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory25 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(TonFragmentInteractor.class), null, c193025, kind, emptyList25));
            module.indexPrimaryType(singleInstanceFactory25);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory25);
            }
            new KoinDefinition(module, singleInstanceFactory25);
            C193126 c193126 = new Function2<Scope, ParametersHolder, ReactionInteractor>() { // from class: com.iMe.storage.domain.di.module.InteractorModuleKt$interactorModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final ReactionInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ReactionInteractor((ReactionRepository) single.get(Reflection.getOrCreateKotlinClass(ReactionRepository.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory26 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, c193126, kind, emptyList26));
            module.indexPrimaryType(singleInstanceFactory26);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory26);
            }
            new KoinDefinition(module, singleInstanceFactory26);
        }
    }, 1, null);

    public static final Module getInteractorModule() {
        return interactorModule;
    }
}
