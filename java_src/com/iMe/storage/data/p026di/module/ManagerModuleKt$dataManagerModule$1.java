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
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import okhttp3.OkHttpClient;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: ManagerModule.kt */
/* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1 */
/* loaded from: classes3.dex */
final class ManagerModuleKt$dataManagerModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final ManagerModuleKt$dataManagerModule$1 INSTANCE = new ManagerModuleKt$dataManagerModule$1();

    ManagerModuleKt$dataManagerModule$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16571 extends Lambda implements Function2<Scope, ParametersHolder, TonController> {
        public static final C16571 INSTANCE = new C16571();

        C16571() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TonController invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TonControllerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TonConfigRepository) single.get(Reflection.getOrCreateKotlinClass(TonConfigRepository.class), null, null));
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C16571 c16571 = C16571.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TonController.class), null, c16571, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        StringQualifier evm_blockchain_crypto_wallet_manager = ManagerModuleKt.getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
        C16612 c16612 = C16612.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), evm_blockchain_crypto_wallet_manager, c16612, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        StringQualifier ton_blockchain_crypto_wallet_manager = ManagerModuleKt.getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
        C16623 c16623 = C16623.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ton_blockchain_crypto_wallet_manager, c16623, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        StringQualifier tron_blockchain_crypto_wallet_manager = ManagerModuleKt.getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
        C16634 c16634 = C16634.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), tron_blockchain_crypto_wallet_manager, c16634, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        StringQualifier btc_blockchain_crypto_wallet_manager = ManagerModuleKt.getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
        C16645 c16645 = C16645.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), btc_blockchain_crypto_wallet_manager, c16645, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        C16656 c16656 = C16656.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, c16656, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        C16667 c16667 = C16667.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, c16667, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        C16678 c16678 = C16678.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, c16678, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        C16689 c16689 = C16689.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(AuthManager.class), null, c16689, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        C165810 c165810 = C165810.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, c165810, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new KoinDefinition(module, singleInstanceFactory10);
        C165911 c165911 = C165911.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(UpdateManager.class), null, c165911, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new KoinDefinition(module, singleInstanceFactory11);
        C166012 c166012 = C166012.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(AppReviewManager.class), null, c166012, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new KoinDefinition(module, singleInstanceFactory12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16612 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager> {
        public static final C16612 INSTANCE = new C16612();

        C16612() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new EVMBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16623 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager> {
        public static final C16623 INSTANCE = new C16623();

        C16623() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TONBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (TonController) single.get(Reflection.getOrCreateKotlinClass(TonController.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C165911 extends Lambda implements Function2<Scope, ParametersHolder, UpdateManager> {
        public static final C165911 INSTANCE = new C165911();

        C165911() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final UpdateManager invoke(Scope single, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            Activity activity = (Activity) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Activity.class));
            PreferenceHelper preferenceHelper = (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null);
            TelegramGateway telegramGateway = (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
            return new UpdateManager(activity, (ActionGateway) single.get(Reflection.getOrCreateKotlinClass(ActionGateway.class), null, null), (ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), preferenceHelper, telegramGateway);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C166012 extends Lambda implements Function2<Scope, ParametersHolder, AppReviewManager> {
        public static final C166012 INSTANCE = new C166012();

        C166012() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AppReviewManager invoke(Scope single, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new AppReviewManager((Activity) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Activity.class)), (PreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C16634 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager> {
        public static final C16634 INSTANCE = new C16634();

        C16634() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TRONBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C16645 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager> {
        public static final C16645 INSTANCE = new C16645();

        C16645() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainCryptoWalletManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BTCBlockchainCryptoWalletManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C16656 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletsManager> {
        public static final C16656 INSTANCE = new C16656();

        C16656() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoWalletsManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoWalletsManagerImpl((BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C16667 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccessManager> {
        public static final C16667 INSTANCE = new C16667();

        C16667() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoAccessManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoAccessManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletsManager) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C16678 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayManager> {
        public static final C16678 INSTANCE = new C16678();

        C16678() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinancePayManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinancePayManagerImpl((CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C165810 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectManager> {
        public static final C165810 INSTANCE = new C165810();

        C165810() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletConnectManagerImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null), (OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), (RxEventBus) single.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) single.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C16689 extends Lambda implements Function2<Scope, ParametersHolder, AuthManager> {
        public static final C16689 INSTANCE = new C16689();

        C16689() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AuthManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AuthManagerImpl((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoPreferenceHelper) single.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }
}
