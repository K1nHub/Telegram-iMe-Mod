package com.smedialink.storage.data.p026di.module;

import android.app.Activity;
import com.google.gson.Gson;
import com.smedialink.storage.data.manager.auth.AuthManagerImpl;
import com.smedialink.storage.data.manager.binancepay.BinancePayManagerImpl;
import com.smedialink.storage.data.manager.crypto.CryptoAccessManagerImpl;
import com.smedialink.storage.data.manager.crypto.CryptoWalletsManagerImpl;
import com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl;
import com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl;
import com.smedialink.storage.data.manager.review.AppReviewManager;
import com.smedialink.storage.data.manager.ton.TonControllerImpl;
import com.smedialink.storage.data.manager.update.UpdateManager;
import com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl;
import com.smedialink.storage.domain.gateway.ActionGateway;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.manager.auth.AuthManager;
import com.smedialink.storage.domain.manager.binancepay.BinancePayManager;
import com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.crypto.CryptoWalletsManager;
import com.smedialink.storage.domain.manager.ton.TonController;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.repository.crypto.ton.TonConfigRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
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
import okhttp3.OkHttpClient;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: ManagerModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1 */
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15321 extends Lambda implements Function2<Scope, ParametersHolder, TonController> {
        public static final C15321 INSTANCE = new C15321();

        C15321() {
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C15321 c15321 = C15321.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TonController.class), null, c15321, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        StringQualifier evm_blockchain_crypto_wallet_manager = ManagerModuleKt.getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
        C15342 c15342 = C15342.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), evm_blockchain_crypto_wallet_manager, c15342, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        StringQualifier ton_blockchain_crypto_wallet_manager = ManagerModuleKt.getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER();
        C15353 c15353 = C15353.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ton_blockchain_crypto_wallet_manager, c15353, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C15364 c15364 = C15364.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(CryptoWalletsManager.class), null, c15364, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C15375 c15375 = C15375.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, c15375, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C15386 c15386 = C15386.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, c15386, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        C15397 c15397 = C15397.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(AuthManager.class), null, c15397, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        C15408 c15408 = C15408.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, c15408, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        C15419 c15419 = C15419.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(UpdateManager.class), null, c15419, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        C153310 c153310 = C153310.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(AppReviewManager.class), null, c153310, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C15342 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager> {
        public static final C15342 INSTANCE = new C15342();

        C15342() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C15353 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainCryptoWalletManager> {
        public static final C15353 INSTANCE = new C15353();

        C15353() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C153310 extends Lambda implements Function2<Scope, ParametersHolder, AppReviewManager> {
        public static final C153310 INSTANCE = new C153310();

        C153310() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C15364 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletsManager> {
        public static final C15364 INSTANCE = new C15364();

        C15364() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoWalletsManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoWalletsManagerImpl((BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null), (BlockchainCryptoWalletManager) single.get(Reflection.getOrCreateKotlinClass(BlockchainCryptoWalletManager.class), ManagerModuleKt.getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C15419 extends Lambda implements Function2<Scope, ParametersHolder, UpdateManager> {
        public static final C15419 INSTANCE = new C15419();

        C15419() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C15375 extends Lambda implements Function2<Scope, ParametersHolder, CryptoAccessManager> {
        public static final C15375 INSTANCE = new C15375();

        C15375() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C15386 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayManager> {
        public static final C15386 INSTANCE = new C15386();

        C15386() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C15408 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectManager> {
        public static final C15408 INSTANCE = new C15408();

        C15408() {
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
    /* renamed from: com.smedialink.storage.data.di.module.ManagerModuleKt$dataManagerModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C15397 extends Lambda implements Function2<Scope, ParametersHolder, AuthManager> {
        public static final C15397 INSTANCE = new C15397();

        C15397() {
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
