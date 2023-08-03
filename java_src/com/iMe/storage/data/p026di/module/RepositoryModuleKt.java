package com.iMe.storage.data.p026di.module;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.iMe.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.iMe.storage.data.datasource.cancel.WalletCancelDataSourceFactory;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.network.api.google.DynamicLinksApi;
import com.iMe.storage.data.network.api.google.RemoteConfigApi;
import com.iMe.storage.data.network.api.own.AccountLevelApi;
import com.iMe.storage.data.network.api.own.AirdropApi;
import com.iMe.storage.data.network.api.own.BinanceInternalApi;
import com.iMe.storage.data.network.api.own.BoostApi;
import com.iMe.storage.data.network.api.own.CancelApi;
import com.iMe.storage.data.network.api.own.CatalogApi;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.DonationsApi;
import com.iMe.storage.data.network.api.own.GoogleServicesApi;
import com.iMe.storage.data.network.api.own.GoogleTranslationApi;
import com.iMe.storage.data.network.api.own.KiklikoApi;
import com.iMe.storage.data.network.api.own.NftAvatarApi;
import com.iMe.storage.data.network.api.own.PermissionApi;
import com.iMe.storage.data.network.api.own.PinCodeApi;
import com.iMe.storage.data.network.api.own.PushNotificationApi;
import com.iMe.storage.data.network.api.own.ReactionApi;
import com.iMe.storage.data.network.api.own.SimplexApi;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.api.own.TwitterApi;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl;
import com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl;
import com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl;
import com.iMe.storage.data.repository.crypto.CryptoWalletRepositoryImpl;
import com.iMe.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl;
import com.iMe.storage.data.repository.crypto.boost.BoostRepositoryImpl;
import com.iMe.storage.data.repository.crypto.cancel.CancelRepositoryImpl;
import com.iMe.storage.data.repository.crypto.donations.DonationsRepositoryImpl;
import com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl;
import com.iMe.storage.data.repository.crypto.nft.avatar.NftAvatarRepositoryImpl;
import com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl;
import com.iMe.storage.data.repository.crypto.pin.PinCodeRepositoryImpl;
import com.iMe.storage.data.repository.crypto.simplex.SimplexRepositoryImpl;
import com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl;
import com.iMe.storage.data.repository.crypto.ton.TonConfigRepositoryImpl;
import com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl;
import com.iMe.storage.data.repository.firebase.DynamicLinksRepositoryImpl;
import com.iMe.storage.data.repository.firebase.RemoteConfigRepositoryImpl;
import com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl;
import com.iMe.storage.data.repository.notification.PushNotificationRepositoryImpl;
import com.iMe.storage.data.repository.recognition.GoogleServicesRepositoryImpl;
import com.iMe.storage.data.repository.socialEmotion.ReactionRepositoryImpl;
import com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl;
import com.iMe.storage.data.repository.translate.TranslationRepositoryImpl;
import com.iMe.storage.data.repository.wallet.WalletRepositoryImpl;
import com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.crypto.CryptoWalletsManager;
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
import com.iMe.storage.domain.repository.crypto.ton.TonConfigRepository;
import com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.iMe.storage.domain.repository.firebase.DynamicLinksRepository;
import com.iMe.storage.domain.repository.firebase.RemoteConfigRepository;
import com.iMe.storage.domain.repository.google.GoogleServicesRepository;
import com.iMe.storage.domain.repository.kikliko.KiklikoRepository;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.repository.socialEmotion.ReactionRepository;
import com.iMe.storage.domain.repository.socialMedia.TwitterRepository;
import com.iMe.storage.domain.repository.translate.TranslationRepository;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import java.io.File;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.OkHttpClient;
import org.koin.android.ext.koin.ModuleExtKt;
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
/* compiled from: RepositoryModule.kt */
/* renamed from: com.iMe.storage.data.di.module.RepositoryModuleKt */
/* loaded from: classes3.dex */
public final class RepositoryModuleKt {
    private static Module repositoryModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1
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
            C17191 c17191 = new Function2<Scope, ParametersHolder, TranslationRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final TranslationRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TranslationRepositoryImpl((GoogleServicesApi) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, null), (GoogleTranslationApi) single.get(Reflection.getOrCreateKotlinClass(GoogleTranslationApi.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (GoogleServicesErrorHandler) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesErrorHandler.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationRepository.class), null, c17191, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C17302 c17302 = new Function2<Scope, ParametersHolder, WalletSessionRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final WalletSessionRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSessionRepositoryImpl((WalletApi) single.get(Reflection.getOrCreateKotlinClass(WalletApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (AuthManager) single.get(Reflection.getOrCreateKotlinClass(AuthManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSessionRepository.class), null, c17302, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C17383 c17383 = new Function2<Scope, ParametersHolder, WalletRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final WalletRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    WalletApi walletApi = (WalletApi) single.get(Reflection.getOrCreateKotlinClass(WalletApi.class), null, null);
                    WalletTokensBalancesDao walletTokensBalancesDao = (WalletTokensBalancesDao) single.get(Reflection.getOrCreateKotlinClass(WalletTokensBalancesDao.class), null, null);
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
                    SchedulersProvider schedulersProvider = (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
                    TelegramGateway telegramGateway = (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
                    return new WalletRepositoryImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), walletApi, (WalletTransferDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSourceFactory.class), null, null), walletTokensBalancesDao, schedulersProvider, firebaseFunctionsErrorHandler, apiErrorHandler, telegramGateway);
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletRepository.class), null, c17383, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C17394 c17394 = new Function2<Scope, ParametersHolder, PushNotificationRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final PushNotificationRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PushNotificationRepositoryImpl((PushNotificationApi) single.get(Reflection.getOrCreateKotlinClass(PushNotificationApi.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(PushNotificationRepository.class), null, c17394, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            C17405 c17405 = new Function2<Scope, ParametersHolder, CatalogRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final CatalogRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogRepositoryImpl((CatalogApi) single.get(Reflection.getOrCreateKotlinClass(CatalogApi.class), null, null), (CatalogCategoryDao) single.get(Reflection.getOrCreateKotlinClass(CatalogCategoryDao.class), null, null), (CatalogLanguageDao) single.get(Reflection.getOrCreateKotlinClass(CatalogLanguageDao.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(CatalogRepository.class), null, c17405, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
            C17416 c17416 = new Function2<Scope, ParametersHolder, GoogleServicesRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final GoogleServicesRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    File cacheDir = ModuleExtKt.androidContext(single).getCacheDir();
                    Intrinsics.checkNotNullExpressionValue(cacheDir, "androidContext().cacheDir");
                    return new GoogleServicesRepositoryImpl(cacheDir, (GoogleServicesApi) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(GoogleServicesRepository.class), null, c17416, kind, emptyList6));
            module.indexPrimaryType(singleInstanceFactory6);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory6);
            }
            new KoinDefinition(module, singleInstanceFactory6);
            C17427 c17427 = new Function2<Scope, ParametersHolder, RemoteConfigRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final RemoteConfigRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new RemoteConfigRepositoryImpl((RemoteConfigApi) single.get(Reflection.getOrCreateKotlinClass(RemoteConfigApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(RemoteConfigRepository.class), null, c17427, kind, emptyList7));
            module.indexPrimaryType(singleInstanceFactory7);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory7);
            }
            new KoinDefinition(module, singleInstanceFactory7);
            C17438 c17438 = new Function2<Scope, ParametersHolder, DynamicLinksRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final DynamicLinksRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DynamicLinksRepositoryImpl((DynamicLinksApi) single.get(Reflection.getOrCreateKotlinClass(DynamicLinksApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(DynamicLinksRepository.class), null, c17438, kind, emptyList8));
            module.indexPrimaryType(singleInstanceFactory8);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory8);
            }
            new KoinDefinition(module, singleInstanceFactory8);
            C17449 c17449 = new Function2<Scope, ParametersHolder, ReactionRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final ReactionRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ReactionRepositoryImpl((ReactionApi) single.get(Reflection.getOrCreateKotlinClass(ReactionApi.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(ReactionRepository.class), null, c17449, kind, emptyList9));
            module.indexPrimaryType(singleInstanceFactory9);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory9);
            }
            new KoinDefinition(module, singleInstanceFactory9);
            C172010 c172010 = new Function2<Scope, ParametersHolder, KiklikoRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final KiklikoRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new KiklikoRepositoryImpl((KiklikoApi) single.get(Reflection.getOrCreateKotlinClass(KiklikoApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(KiklikoRepository.class), null, c172010, kind, emptyList10));
            module.indexPrimaryType(singleInstanceFactory10);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory10);
            }
            new KoinDefinition(module, singleInstanceFactory10);
            C172111 c172111 = new Function2<Scope, ParametersHolder, TwitterRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final TwitterRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TwitterRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (TwitterApi) single.get(Reflection.getOrCreateKotlinClass(TwitterApi.class), null, null), (TwitterPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TwitterRepository.class), null, c172111, kind, emptyList11));
            module.indexPrimaryType(singleInstanceFactory11);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory11);
            }
            new KoinDefinition(module, singleInstanceFactory11);
            C172212 c172212 = new Function2<Scope, ParametersHolder, CryptoWalletRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final CryptoWalletRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
                    return new CryptoWalletRepositoryImpl((CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (WalletTokensBalancesDao) single.get(Reflection.getOrCreateKotlinClass(WalletTokensBalancesDao.class), null, null), apiErrorHandler, (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(CryptoWalletRepository.class), null, c172212, kind, emptyList12));
            module.indexPrimaryType(singleInstanceFactory12);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory12);
            }
            new KoinDefinition(module, singleInstanceFactory12);
            C172313 c172313 = new Function2<Scope, ParametersHolder, BinanceInternalRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final BinanceInternalRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new BinanceInternalRepositoryImpl((BinanceInternalApi) single.get(Reflection.getOrCreateKotlinClass(BinanceInternalApi.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(BinanceInternalRepository.class), null, c172313, kind, emptyList13));
            module.indexPrimaryType(singleInstanceFactory13);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory13);
            }
            new KoinDefinition(module, singleInstanceFactory13);
            C172414 c172414 = new Function2<Scope, ParametersHolder, CryptoPermissionRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final CryptoPermissionRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    CryptoWalletApi cryptoWalletApi = (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null);
                    ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
                    return new CryptoPermissionRepositoryImpl((PermissionApi) single.get(Reflection.getOrCreateKotlinClass(PermissionApi.class), null, null), cryptoWalletApi, cryptoPreferenceHelper, (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), apiErrorHandler);
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(CryptoPermissionRepository.class), null, c172414, kind, emptyList14));
            module.indexPrimaryType(singleInstanceFactory14);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory14);
            }
            new KoinDefinition(module, singleInstanceFactory14);
            C172515 c172515 = new Function2<Scope, ParametersHolder, AccountLevelRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final AccountLevelRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    AccountLevelApi accountLevelApi = (AccountLevelApi) single.get(Reflection.getOrCreateKotlinClass(AccountLevelApi.class), null, null);
                    ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new AccountLevelRepositoryImpl(accountLevelApi, (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), firebaseFunctionsErrorHandler, apiErrorHandler);
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(AccountLevelRepository.class), null, c172515, kind, emptyList15));
            module.indexPrimaryType(singleInstanceFactory15);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory15);
            }
            new KoinDefinition(module, singleInstanceFactory15);
            C172616 c172616 = new Function2<Scope, ParametersHolder, CryptoLocalWalletRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final CryptoLocalWalletRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoLocalWalletRepositoryImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoWalletsManager) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(CryptoLocalWalletRepository.class), null, c172616, kind, emptyList16));
            module.indexPrimaryType(singleInstanceFactory16);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory16);
            }
            new KoinDefinition(module, singleInstanceFactory16);
            C172717 c172717 = new Function2<Scope, ParametersHolder, PinCodeRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final PinCodeRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PinCodeRepositoryImpl((CryptoLocalWalletRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoLocalWalletRepository.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (PinCodeApi) single.get(Reflection.getOrCreateKotlinClass(PinCodeApi.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(PinCodeRepository.class), null, c172717, kind, emptyList17));
            module.indexPrimaryType(singleInstanceFactory17);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory17);
            }
            new KoinDefinition(module, singleInstanceFactory17);
            C172818 c172818 = new Function2<Scope, ParametersHolder, SimplexRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final SimplexRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new SimplexRepositoryImpl((SimplexApi) single.get(Reflection.getOrCreateKotlinClass(SimplexApi.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(SimplexRepository.class), null, c172818, kind, emptyList18));
            module.indexPrimaryType(singleInstanceFactory18);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory18);
            }
            new KoinDefinition(module, singleInstanceFactory18);
            C172919 c172919 = new Function2<Scope, ParametersHolder, SwapRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final SwapRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new SwapRepositoryImpl((SwapApi) single.get(Reflection.getOrCreateKotlinClass(SwapApi.class), null, null), (WalletSwapDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletSwapDataSourceFactory.class), null, null), (WalletApproveDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletApproveDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, apiErrorHandler);
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(SwapRepository.class), null, c172919, kind, emptyList19));
            module.indexPrimaryType(singleInstanceFactory19);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory19);
            }
            new KoinDefinition(module, singleInstanceFactory19);
            C173120 c173120 = new Function2<Scope, ParametersHolder, CancelRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.20
                @Override // kotlin.jvm.functions.Function2
                public final CancelRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new CancelRepositoryImpl((CancelApi) single.get(Reflection.getOrCreateKotlinClass(CancelApi.class), null, null), (WalletCancelDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletCancelDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(CancelRepository.class), null, c173120, kind, emptyList20));
            module.indexPrimaryType(singleInstanceFactory20);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory20);
            }
            new KoinDefinition(module, singleInstanceFactory20);
            C173221 c173221 = new Function2<Scope, ParametersHolder, DonationsRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final DonationsRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new DonationsRepositoryImpl((DonationsApi) single.get(Reflection.getOrCreateKotlinClass(DonationsApi.class), null, null), (WalletTransferDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(DonationsRepository.class), null, c173221, kind, emptyList21));
            module.indexPrimaryType(singleInstanceFactory21);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory21);
            }
            new KoinDefinition(module, singleInstanceFactory21);
            C173322 c173322 = new Function2<Scope, ParametersHolder, BoostRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final BoostRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new BoostRepositoryImpl((BoostApi) single.get(Reflection.getOrCreateKotlinClass(BoostApi.class), null, null), (WalletBoostDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletBoostDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BoostRepository.class), null, c173322, kind, emptyList22));
            module.indexPrimaryType(singleInstanceFactory22);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory22);
            }
            new KoinDefinition(module, singleInstanceFactory22);
            C173423 c173423 = new Function2<Scope, ParametersHolder, AirdropRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final AirdropRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new AirdropRepositoryImpl((AirdropApi) single.get(Reflection.getOrCreateKotlinClass(AirdropApi.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(AirdropRepository.class), null, c173423, kind, emptyList23));
            module.indexPrimaryType(singleInstanceFactory23);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory23);
            }
            new KoinDefinition(module, singleInstanceFactory23);
            C173524 c173524 = new Function2<Scope, ParametersHolder, NftAvatarRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final NftAvatarRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
                    return new NftAvatarRepositoryImpl((NftAvatarApi) single.get(Reflection.getOrCreateKotlinClass(NftAvatarApi.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(NftAvatarRepository.class), null, c173524, kind, emptyList24));
            module.indexPrimaryType(singleInstanceFactory24);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory24);
            }
            new KoinDefinition(module, singleInstanceFactory24);
            C173625 c173625 = new Function2<Scope, ParametersHolder, WalletConnectRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletConnectRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (WalletConnectApi) single.get(Reflection.getOrCreateKotlinClass(WalletConnectApi.class), null, null), (WalletConnectDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletConnectDataSource.class), null, null), (WalletConnectSessionsDao) single.get(Reflection.getOrCreateKotlinClass(WalletConnectSessionsDao.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory25 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(WalletConnectRepository.class), null, c173625, kind, emptyList25));
            module.indexPrimaryType(singleInstanceFactory25);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory25);
            }
            new KoinDefinition(module, singleInstanceFactory25);
            C173726 c173726 = new Function2<Scope, ParametersHolder, TonConfigRepository>() { // from class: com.iMe.storage.data.di.module.RepositoryModuleKt$repositoryModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final TonConfigRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonConfigRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getTON_CONFIG_CLIENT(), null));
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory26 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(TonConfigRepository.class), null, c173726, kind, emptyList26));
            module.indexPrimaryType(singleInstanceFactory26);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory26);
            }
            new KoinDefinition(module, singleInstanceFactory26);
        }
    }, 1, null);

    public static final Module getRepositoryModule() {
        return repositoryModule;
    }
}
