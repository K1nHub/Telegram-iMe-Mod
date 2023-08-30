package com.iMe.storage.data.p026di.module;

import android.app.Activity;
import com.google.gson.Gson;
import com.iMe.storage.data.manager.auth.AuthManagerImpl;
import com.iMe.storage.data.manager.binancepay.BinancePayManagerImpl;
import com.iMe.storage.data.manager.crypto.CryptoAccessManagerImpl;
import com.iMe.storage.data.manager.crypto.CryptoWalletsManagerImpl;
import com.iMe.storage.data.manager.crypto.blockchains.BTCBlockchainCryptoWalletManagerImpl;
import com.iMe.storage.data.manager.crypto.blockchains.EVMBlockchainCryptoWalletManagerImpl;
import com.iMe.storage.data.manager.crypto.blockchains.TONBlockchainCryptoWalletManagerImpl;
import com.iMe.storage.data.manager.crypto.blockchains.TRONBlockchainCryptoWalletManagerImpl;
import com.iMe.storage.data.manager.review.AppReviewManager;
import com.iMe.storage.data.manager.ton.TonControllerImpl;
import com.iMe.storage.data.manager.update.UpdateManager;
import com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl;
import com.iMe.storage.domain.gateway.ActionGateway;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.crypto.CryptoWalletsManager;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.repository.crypto.ton.TonConfigRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.OkHttpClient;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: ManagerModule.kt */
/* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt */
/* loaded from: classes3.dex */
public final class ManagerModuleKt {
    private static final StringQualifier EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static final StringQualifier TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static final StringQualifier TRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("TRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static final StringQualifier BTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("BTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static Module dataManagerModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1
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
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C17011 c17011 = new Function2<Scope, ParametersHolder, TonController>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final TonController invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TonControllerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TonConfigRepository) single.get(Reflection.getOrCreateKotlinClass(TonConfigRepository.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TonController.class), null, c17011, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            StringQualifier evm_blockchain_crypto_wallet_manager = ManagerModuleKt.getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
            C17052 c17052 = new Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new EVMBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), evm_blockchain_crypto_wallet_manager, c17052, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            StringQualifier ton_blockchain_crypto_wallet_manager = ManagerModuleKt.getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
            C17063 c17063 = new Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TONBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (TonController) single.get(Reflection.getOrCreateKotlinClass(TonController.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ton_blockchain_crypto_wallet_manager, c17063, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            StringQualifier tron_blockchain_crypto_wallet_manager = ManagerModuleKt.getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
            C17074 c17074 = new Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TRONBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), tron_blockchain_crypto_wallet_manager, c17074, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            StringQualifier btc_blockchain_crypto_wallet_manager = ManagerModuleKt.getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
            C17085 c17085 = new Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BTCBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), btc_blockchain_crypto_wallet_manager, c17085, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
            C17096 c17096 = new Function2<Scope, ParametersHolder, CryptoWalletsManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final CryptoWalletsManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoWalletsManagerImpl((BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, c17096, kind, emptyList6));
            module.indexPrimaryType(singleInstanceFactory6);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory6);
            }
            new KoinDefinition(module, singleInstanceFactory6);
            C17107 c17107 = new Function2<Scope, ParametersHolder, CryptoAccessManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final CryptoAccessManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoAccessManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletsManager) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, c17107, kind, emptyList7));
            module.indexPrimaryType(singleInstanceFactory7);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory7);
            }
            new KoinDefinition(module, singleInstanceFactory7);
            C17118 c17118 = new Function2<Scope, ParametersHolder, BinancePayManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final BinancePayManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BinancePayManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, c17118, kind, emptyList8));
            module.indexPrimaryType(singleInstanceFactory8);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory8);
            }
            new KoinDefinition(module, singleInstanceFactory8);
            C17129 c17129 = new Function2<Scope, ParametersHolder, AuthManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final AuthManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AuthManagerImpl((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(AuthManager.class), null, c17129, kind, emptyList9));
            module.indexPrimaryType(singleInstanceFactory9);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory9);
            }
            new KoinDefinition(module, singleInstanceFactory9);
            C170210 c170210 = new Function2<Scope, ParametersHolder, WalletConnectManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectManager invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletConnectManagerImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null), (OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), (RxEventBus) single.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) single.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, c170210, kind, emptyList10));
            module.indexPrimaryType(singleInstanceFactory10);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory10);
            }
            new KoinDefinition(module, singleInstanceFactory10);
            C170311 c170311 = new Function2<Scope, ParametersHolder, UpdateManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final UpdateManager invoke(Scope single, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    Activity activity = (Activity) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Activity.class));
                    PreferenceHelper preferenceHelper = (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null);
                    TelegramGateway telegramGateway = (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
                    return new UpdateManager(activity, (ActionGateway) single.get(Reflection.getOrCreateKotlinClass(ActionGateway.class), null, null), (ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), preferenceHelper, telegramGateway);
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(UpdateManager.class), null, c170311, kind, emptyList11));
            module.indexPrimaryType(singleInstanceFactory11);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory11);
            }
            new KoinDefinition(module, singleInstanceFactory11);
            C170412 c170412 = new Function2<Scope, ParametersHolder, AppReviewManager>() { // from class: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final AppReviewManager invoke(Scope single, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new AppReviewManager((Activity) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Activity.class)), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(AppReviewManager.class), null, c170412, kind, emptyList12));
            module.indexPrimaryType(singleInstanceFactory12);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory12);
            }
            new KoinDefinition(module, singleInstanceFactory12);
        }
    }, 1, null);

    public static final StringQualifier getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final StringQualifier getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final StringQualifier getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return TRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final StringQualifier getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return BTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final Module getDataManagerModule() {
        return dataManagerModule;
    }
}
