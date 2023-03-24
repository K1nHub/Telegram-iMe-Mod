package com.smedialink.storage.data.p026di.module;

import com.smedialink.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.smedialink.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.smedialink.storage.data.datasource.cancel.WalletCancelDataSourceFactory;
import com.smedialink.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.smedialink.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
import com.smedialink.storage.data.network.api.google.DynamicLinksApi;
import com.smedialink.storage.data.network.api.google.RemoteConfigApi;
import com.smedialink.storage.data.network.api.own.AccountLevelApi;
import com.smedialink.storage.data.network.api.own.AirdropApi;
import com.smedialink.storage.data.network.api.own.BinanceInternalApi;
import com.smedialink.storage.data.network.api.own.BoostApi;
import com.smedialink.storage.data.network.api.own.CancelApi;
import com.smedialink.storage.data.network.api.own.CatalogApi;
import com.smedialink.storage.data.network.api.own.CryptoWalletApi;
import com.smedialink.storage.data.network.api.own.DonationsApi;
import com.smedialink.storage.data.network.api.own.GoogleServicesApi;
import com.smedialink.storage.data.network.api.own.GoogleTranslationApi;
import com.smedialink.storage.data.network.api.own.KiklikoApi;
import com.smedialink.storage.data.network.api.own.NftAvatarApi;
import com.smedialink.storage.data.network.api.own.PermissionApi;
import com.smedialink.storage.data.network.api.own.PinCodeApi;
import com.smedialink.storage.data.network.api.own.PushNotificationApi;
import com.smedialink.storage.data.network.api.own.ReactionApi;
import com.smedialink.storage.data.network.api.own.SimplexApi;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.api.own.TwitterApi;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.api.own.WalletConnectApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl;
import com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.CryptoWalletRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.airdrop.AirdropRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.boost.BoostRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.cancel.CancelRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.donations.DonationsRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.level.AccountLevelRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.nft.avatar.NftAvatarRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.pin.PinCodeRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.simplex.SimplexRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.swap.SwapRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.ton.TonConfigRepositoryImpl;
import com.smedialink.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl;
import com.smedialink.storage.data.repository.firebase.DynamicLinksRepositoryImpl;
import com.smedialink.storage.data.repository.firebase.RemoteConfigRepositoryImpl;
import com.smedialink.storage.data.repository.kikliko.KiklikoRepositoryImpl;
import com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl;
import com.smedialink.storage.data.repository.recognition.GoogleServicesRepositoryImpl;
import com.smedialink.storage.data.repository.socialEmotion.ReactionRepositoryImpl;
import com.smedialink.storage.data.repository.translate.TranslationRepositoryImpl;
import com.smedialink.storage.data.repository.twitter.TwitterRepositoryImpl;
import com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl;
import com.smedialink.storage.data.repository.wallet.WalletSessionRepositoryImpl;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.manager.auth.AuthManager;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.crypto.CryptoWalletsManager;
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
import com.smedialink.storage.domain.repository.crypto.ton.TonConfigRepository;
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
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import java.io.File;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import okhttp3.OkHttpClient;
import org.koin.android.ext.koin.ModuleExtKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: RepositoryModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1 */
/* loaded from: classes3.dex */
final class RepositoryModuleKt$repositoryModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final RepositoryModuleKt$repositoryModule$1 INSTANCE = new RepositoryModuleKt$repositoryModule$1();

    RepositoryModuleKt$repositoryModule$1() {
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
        C15891 c15891 = C15891.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationRepository.class), null, c15891, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C16002 c16002 = C16002.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSessionRepository.class), null, c16002, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C16083 c16083 = C16083.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletRepository.class), null, c16083, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C16094 c16094 = C16094.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(PushNotificationRepository.class), null, c16094, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C16105 c16105 = C16105.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(CatalogRepository.class), null, c16105, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C16116 c16116 = C16116.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(GoogleServicesRepository.class), null, c16116, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        C16127 c16127 = C16127.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(RemoteConfigRepository.class), null, c16127, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        C16138 c16138 = C16138.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(DynamicLinksRepository.class), null, c16138, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        C16149 c16149 = C16149.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(ReactionRepository.class), null, c16149, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        C159010 c159010 = C159010.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(KiklikoRepository.class), null, c159010, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        C159111 c159111 = C159111.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(TwitterRepository.class), null, c159111, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        C159212 c159212 = C159212.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(CryptoWalletRepository.class), null, c159212, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
        C159313 c159313 = C159313.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(BinanceInternalRepository.class), null, c159313, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new Pair(module, singleInstanceFactory13);
        C159414 c159414 = C159414.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(CryptoPermissionRepository.class), null, c159414, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new Pair(module, singleInstanceFactory14);
        C159515 c159515 = C159515.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(AccountLevelRepository.class), null, c159515, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new Pair(module, singleInstanceFactory15);
        C159616 c159616 = C159616.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(CryptoLocalWalletRepository.class), null, c159616, kind, emptyList16));
        module.indexPrimaryType(singleInstanceFactory16);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory16);
        }
        new Pair(module, singleInstanceFactory16);
        C159717 c159717 = C159717.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(PinCodeRepository.class), null, c159717, kind, emptyList17));
        module.indexPrimaryType(singleInstanceFactory17);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory17);
        }
        new Pair(module, singleInstanceFactory17);
        C159818 c159818 = C159818.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(SimplexRepository.class), null, c159818, kind, emptyList18));
        module.indexPrimaryType(singleInstanceFactory18);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory18);
        }
        new Pair(module, singleInstanceFactory18);
        C159919 c159919 = C159919.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(SwapRepository.class), null, c159919, kind, emptyList19));
        module.indexPrimaryType(singleInstanceFactory19);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory19);
        }
        new Pair(module, singleInstanceFactory19);
        C160120 c160120 = C160120.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(CancelRepository.class), null, c160120, kind, emptyList20));
        module.indexPrimaryType(singleInstanceFactory20);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory20);
        }
        new Pair(module, singleInstanceFactory20);
        C160221 c160221 = C160221.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(DonationsRepository.class), null, c160221, kind, emptyList21));
        module.indexPrimaryType(singleInstanceFactory21);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory21);
        }
        new Pair(module, singleInstanceFactory21);
        C160322 c160322 = C160322.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(BoostRepository.class), null, c160322, kind, emptyList22));
        module.indexPrimaryType(singleInstanceFactory22);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory22);
        }
        new Pair(module, singleInstanceFactory22);
        C160423 c160423 = C160423.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(AirdropRepository.class), null, c160423, kind, emptyList23));
        module.indexPrimaryType(singleInstanceFactory23);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory23);
        }
        new Pair(module, singleInstanceFactory23);
        C160524 c160524 = C160524.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(NftAvatarRepository.class), null, c160524, kind, emptyList24));
        module.indexPrimaryType(singleInstanceFactory24);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory24);
        }
        new Pair(module, singleInstanceFactory24);
        C160625 c160625 = C160625.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory25 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(WalletConnectRepository.class), null, c160625, kind, emptyList25));
        module.indexPrimaryType(singleInstanceFactory25);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory25);
        }
        new Pair(module, singleInstanceFactory25);
        C160726 c160726 = C160726.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory26 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(TonConfigRepository.class), null, c160726, kind, emptyList26));
        module.indexPrimaryType(singleInstanceFactory26);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory26);
        }
        new Pair(module, singleInstanceFactory26);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C16105 extends Lambda implements Function2<Scope, ParametersHolder, CatalogRepository> {
        public static final C16105 INSTANCE = new C16105();

        C16105() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogRepositoryImpl((CatalogApi) single.get(Reflection.getOrCreateKotlinClass(CatalogApi.class), null, null), (CatalogCategoryDao) single.get(Reflection.getOrCreateKotlinClass(CatalogCategoryDao.class), null, null), (CatalogLanguageDao) single.get(Reflection.getOrCreateKotlinClass(CatalogLanguageDao.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C16116 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesRepository> {
        public static final C16116 INSTANCE = new C16116();

        C16116() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GoogleServicesRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            File cacheDir = ModuleExtKt.androidContext(single).getCacheDir();
            Intrinsics.checkNotNullExpressionValue(cacheDir, "androidContext().cacheDir");
            return new GoogleServicesRepositoryImpl(cacheDir, (GoogleServicesApi) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C16127 extends Lambda implements Function2<Scope, ParametersHolder, RemoteConfigRepository> {
        public static final C16127 INSTANCE = new C16127();

        C16127() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final RemoteConfigRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new RemoteConfigRepositoryImpl((RemoteConfigApi) single.get(Reflection.getOrCreateKotlinClass(RemoteConfigApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C16138 extends Lambda implements Function2<Scope, ParametersHolder, DynamicLinksRepository> {
        public static final C16138 INSTANCE = new C16138();

        C16138() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DynamicLinksRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DynamicLinksRepositoryImpl((DynamicLinksApi) single.get(Reflection.getOrCreateKotlinClass(DynamicLinksApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C16149 extends Lambda implements Function2<Scope, ParametersHolder, ReactionRepository> {
        public static final C16149 INSTANCE = new C16149();

        C16149() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ReactionRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ReactionRepositoryImpl((ReactionApi) single.get(Reflection.getOrCreateKotlinClass(ReactionApi.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C159010 extends Lambda implements Function2<Scope, ParametersHolder, KiklikoRepository> {
        public static final C159010 INSTANCE = new C159010();

        C159010() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final KiklikoRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new KiklikoRepositoryImpl((KiklikoApi) single.get(Reflection.getOrCreateKotlinClass(KiklikoApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C159111 extends Lambda implements Function2<Scope, ParametersHolder, TwitterRepository> {
        public static final C159111 INSTANCE = new C159111();

        C159111() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (TwitterApi) single.get(Reflection.getOrCreateKotlinClass(TwitterApi.class), null, null), (TwitterPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15891 extends Lambda implements Function2<Scope, ParametersHolder, TranslationRepository> {
        public static final C15891 INSTANCE = new C15891();

        C15891() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TranslationRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TranslationRepositoryImpl((GoogleServicesApi) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, null), (GoogleTranslationApi) single.get(Reflection.getOrCreateKotlinClass(GoogleTranslationApi.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (GoogleServicesErrorHandler) single.get(Reflection.getOrCreateKotlinClass(GoogleServicesErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C159212 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletRepository> {
        public static final C159212 INSTANCE = new C159212();

        C159212() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoWalletRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            return new CryptoWalletRepositoryImpl((CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (WalletTokenBalanceDao) single.get(Reflection.getOrCreateKotlinClass(WalletTokenBalanceDao.class), null, null), apiErrorHandler, (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C159313 extends Lambda implements Function2<Scope, ParametersHolder, BinanceInternalRepository> {
        public static final C159313 INSTANCE = new C159313();

        C159313() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinanceInternalRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new BinanceInternalRepositoryImpl((BinanceInternalApi) single.get(Reflection.getOrCreateKotlinClass(BinanceInternalApi.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C159414 extends Lambda implements Function2<Scope, ParametersHolder, CryptoPermissionRepository> {
        public static final C159414 INSTANCE = new C159414();

        C159414() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoPermissionRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            CryptoWalletApi cryptoWalletApi = (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null);
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            return new CryptoPermissionRepositoryImpl((PermissionApi) single.get(Reflection.getOrCreateKotlinClass(PermissionApi.class), null, null), cryptoWalletApi, cryptoPreferenceHelper, (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), apiErrorHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C159515 extends Lambda implements Function2<Scope, ParametersHolder, AccountLevelRepository> {
        public static final C159515 INSTANCE = new C159515();

        C159515() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AccountLevelRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            AccountLevelApi accountLevelApi = (AccountLevelApi) single.get(Reflection.getOrCreateKotlinClass(AccountLevelApi.class), null, null);
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new AccountLevelRepositoryImpl(accountLevelApi, (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), firebaseFunctionsErrorHandler, apiErrorHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C159616 extends Lambda implements Function2<Scope, ParametersHolder, CryptoLocalWalletRepository> {
        public static final C159616 INSTANCE = new C159616();

        C159616() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoLocalWalletRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoLocalWalletRepositoryImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoWalletsManager) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C159717 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeRepository> {
        public static final C159717 INSTANCE = new C159717();

        C159717() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PinCodeRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            PinCodeApi pinCodeApi = (PinCodeApi) single.get(Reflection.getOrCreateKotlinClass(PinCodeApi.class), null, null);
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            return new PinCodeRepositoryImpl(pinCodeApi, (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (CryptoLocalWalletRepository) single.get(Reflection.getOrCreateKotlinClass(CryptoLocalWalletRepository.class), null, null), cryptoPreferenceHelper, firebaseFunctionsErrorHandler, apiErrorHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C159818 extends Lambda implements Function2<Scope, ParametersHolder, SimplexRepository> {
        public static final C159818 INSTANCE = new C159818();

        C159818() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SimplexRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new SimplexRepositoryImpl((SimplexApi) single.get(Reflection.getOrCreateKotlinClass(SimplexApi.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C159919 extends Lambda implements Function2<Scope, ParametersHolder, SwapRepository> {
        public static final C159919 INSTANCE = new C159919();

        C159919() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SwapRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new SwapRepositoryImpl((SwapApi) single.get(Reflection.getOrCreateKotlinClass(SwapApi.class), null, null), (WalletSwapDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletSwapDataSourceFactory.class), null, null), (WalletApproveDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletApproveDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, apiErrorHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16002 extends Lambda implements Function2<Scope, ParametersHolder, WalletSessionRepository> {
        public static final C16002 INSTANCE = new C16002();

        C16002() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSessionRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSessionRepositoryImpl((WalletApi) single.get(Reflection.getOrCreateKotlinClass(WalletApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (AuthManager) single.get(Reflection.getOrCreateKotlinClass(AuthManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C160120 extends Lambda implements Function2<Scope, ParametersHolder, CancelRepository> {
        public static final C160120 INSTANCE = new C160120();

        C160120() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CancelRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new CancelRepositoryImpl((CancelApi) single.get(Reflection.getOrCreateKotlinClass(CancelApi.class), null, null), (WalletCancelDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletCancelDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C160221 extends Lambda implements Function2<Scope, ParametersHolder, DonationsRepository> {
        public static final C160221 INSTANCE = new C160221();

        C160221() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DonationsRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new DonationsRepositoryImpl((DonationsApi) single.get(Reflection.getOrCreateKotlinClass(DonationsApi.class), null, null), (WalletTransferDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C160322 extends Lambda implements Function2<Scope, ParametersHolder, BoostRepository> {
        public static final C160322 INSTANCE = new C160322();

        C160322() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BoostRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new BoostRepositoryImpl((BoostApi) single.get(Reflection.getOrCreateKotlinClass(BoostApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (WalletBoostDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletBoostDataSourceFactory.class), null, null), firebaseFunctionsErrorHandler, apiErrorHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C160423 extends Lambda implements Function2<Scope, ParametersHolder, AirdropRepository> {
        public static final C160423 INSTANCE = new C160423();

        C160423() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AirdropRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new AirdropRepositoryImpl((AirdropApi) single.get(Reflection.getOrCreateKotlinClass(AirdropApi.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C160524 extends Lambda implements Function2<Scope, ParametersHolder, NftAvatarRepository> {
        public static final C160524 INSTANCE = new C160524();

        C160524() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NftAvatarRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            return new NftAvatarRepositoryImpl((NftAvatarApi) single.get(Reflection.getOrCreateKotlinClass(NftAvatarApi.class), null, null), firebaseFunctionsErrorHandler, (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16083 extends Lambda implements Function2<Scope, ParametersHolder, WalletRepository> {
        public static final C16083 INSTANCE = new C16083();

        C16083() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            WalletApi walletApi = (WalletApi) single.get(Reflection.getOrCreateKotlinClass(WalletApi.class), null, null);
            WalletTokenBalanceDao walletTokenBalanceDao = (WalletTokenBalanceDao) single.get(Reflection.getOrCreateKotlinClass(WalletTokenBalanceDao.class), null, null);
            FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null);
            ApiErrorHandler apiErrorHandler = (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null);
            return new WalletRepositoryImpl(walletApi, (WalletTransferDataSourceFactory) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSourceFactory.class), null, null), walletTokenBalanceDao, (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), firebaseFunctionsErrorHandler, apiErrorHandler, (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C16094 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationRepository> {
        public static final C16094 INSTANCE = new C16094();

        C16094() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PushNotificationRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new PushNotificationRepositoryImpl((PushNotificationApi) single.get(Reflection.getOrCreateKotlinClass(PushNotificationApi.class), null, null), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C160625 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectRepository> {
        public static final C160625 INSTANCE = new C160625();

        C160625() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletConnectRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (WalletConnectApi) single.get(Reflection.getOrCreateKotlinClass(WalletConnectApi.class), null, null), (WalletConnectDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletConnectDataSource.class), null, null), (WalletConnectSessionsDao) single.get(Reflection.getOrCreateKotlinClass(WalletConnectSessionsDao.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepositoryModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.RepositoryModuleKt$repositoryModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C160726 extends Lambda implements Function2<Scope, ParametersHolder, TonConfigRepository> {
        public static final C160726 INSTANCE = new C160726();

        C160726() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TonConfigRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TonConfigRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getTON_CONFIG_CLIENT(), null));
        }
    }
}
