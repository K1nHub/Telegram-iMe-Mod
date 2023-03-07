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
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.repository.wallet.WalletSessionRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.PreferenceHelper;
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C17371 c17371 = C17371.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, c17371, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C17482 c17482 = C17482.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSessionInteractor.class), null, c17482, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C17533 c17533 = C17533.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, c17533, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C17544 c17544 = C17544.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, c17544, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C17555 c17555 = C17555.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, c17555, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C17566 c17566 = C17566.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(RemoteConfigInteractor.class), null, c17566, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        C17577 c17577 = C17577.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(DynamicLinksInteractor.class), null, c17577, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        C17588 c17588 = C17588.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, c17588, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        C17599 c17599 = C17599.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, c17599, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        C173810 c173810 = C173810.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, c173810, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        C173911 c173911 = C173911.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, c173911, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        C174012 c174012 = C174012.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, c174012, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
        C174113 c174113 = C174113.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, c174113, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new Pair(module, singleInstanceFactory13);
        C174214 c174214 = C174214.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, c174214, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new Pair(module, singleInstanceFactory14);
        C174315 c174315 = C174315.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CancelInteractor.class), null, c174315, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new Pair(module, singleInstanceFactory15);
        C174416 c174416 = C174416.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, c174416, kind, emptyList16));
        module.indexPrimaryType(singleInstanceFactory16);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory16);
        }
        new Pair(module, singleInstanceFactory16);
        C174517 c174517 = C174517.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(BoostInteractor.class), null, c174517, kind, emptyList17));
        module.indexPrimaryType(singleInstanceFactory17);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory17);
        }
        new Pair(module, singleInstanceFactory17);
        C174618 c174618 = C174618.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, c174618, kind, emptyList18));
        module.indexPrimaryType(singleInstanceFactory18);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory18);
        }
        new Pair(module, singleInstanceFactory18);
        C174719 c174719 = C174719.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, c174719, kind, emptyList19));
        module.indexPrimaryType(singleInstanceFactory19);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory19);
        }
        new Pair(module, singleInstanceFactory19);
        C174920 c174920 = C174920.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, c174920, kind, emptyList20));
        module.indexPrimaryType(singleInstanceFactory20);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory20);
        }
        new Pair(module, singleInstanceFactory20);
        C175021 c175021 = C175021.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, c175021, kind, emptyList21));
        module.indexPrimaryType(singleInstanceFactory21);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory21);
        }
        new Pair(module, singleInstanceFactory21);
        C175122 c175122 = C175122.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(NftAvatarInteractor.class), null, c175122, kind, emptyList22));
        module.indexPrimaryType(singleInstanceFactory22);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory22);
        }
        new Pair(module, singleInstanceFactory22);
        C175223 c175223 = C175223.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, c175223, kind, emptyList23));
        module.indexPrimaryType(singleInstanceFactory23);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory23);
        }
        new Pair(module, singleInstanceFactory23);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InteractorModule.kt */
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C17544 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationInteractor> {
        public static final C17544 INSTANCE = new C17544();

        C17544() {
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
    public static final class C17555 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesInteractor> {
        public static final C17555 INSTANCE = new C17555();

        C17555() {
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
    public static final class C17566 extends Lambda implements Function2<Scope, ParametersHolder, RemoteConfigInteractor> {
        public static final C17566 INSTANCE = new C17566();

        C17566() {
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
    public static final class C17577 extends Lambda implements Function2<Scope, ParametersHolder, DynamicLinksInteractor> {
        public static final C17577 INSTANCE = new C17577();

        C17577() {
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
    public static final class C17588 extends Lambda implements Function2<Scope, ParametersHolder, KiklikoInteractor> {
        public static final C17588 INSTANCE = new C17588();

        C17588() {
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
    public static final class C17599 extends Lambda implements Function2<Scope, ParametersHolder, CatalogInteractor> {
        public static final C17599 INSTANCE = new C17599();

        C17599() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C174012 extends Lambda implements Function2<Scope, ParametersHolder, SimplexInteractor> {
        public static final C174012 INSTANCE = new C174012();

        C174012() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C174113 extends Lambda implements Function2<Scope, ParametersHolder, SwapInteractor> {
        public static final C174113 INSTANCE = new C174113();

        C174113() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C174416 extends Lambda implements Function2<Scope, ParametersHolder, DonationsInteractor> {
        public static final C174416 INSTANCE = new C174416();

        C174416() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C174517 extends Lambda implements Function2<Scope, ParametersHolder, BoostInteractor> {
        public static final C174517 INSTANCE = new C174517();

        C174517() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C174618 extends Lambda implements Function2<Scope, ParametersHolder, CryptoPermissionInteractor> {
        public static final C174618 INSTANCE = new C174618();

        C174618() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C174719 extends Lambda implements Function2<Scope, ParametersHolder, BinanceInternalInteractor> {
        public static final C174719 INSTANCE = new C174719();

        C174719() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C174920 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectInteractor> {
        public static final C174920 INSTANCE = new C174920();

        C174920() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C175223 extends Lambda implements Function2<Scope, ParametersHolder, ReactionInteractor> {
        public static final C175223 INSTANCE = new C175223();

        C175223() {
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
    public static final class C17371 extends Lambda implements Function2<Scope, ParametersHolder, TranslationInteractor> {
        public static final C17371 INSTANCE = new C17371();

        C17371() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C173810 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletInteractor> {
        public static final C173810 INSTANCE = new C173810();

        C173810() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C173911 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeInteractor> {
        public static final C173911 INSTANCE = new C173911();

        C173911() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C174214 extends Lambda implements Function2<Scope, ParametersHolder, AccountLevelInteractor> {
        public static final C174214 INSTANCE = new C174214();

        C174214() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C174315 extends Lambda implements Function2<Scope, ParametersHolder, CancelInteractor> {
        public static final C174315 INSTANCE = new C174315();

        C174315() {
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
    public static final class C17482 extends Lambda implements Function2<Scope, ParametersHolder, WalletSessionInteractor> {
        public static final C17482 INSTANCE = new C17482();

        C17482() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C175021 extends Lambda implements Function2<Scope, ParametersHolder, AirdropInteractor> {
        public static final C175021 INSTANCE = new C175021();

        C175021() {
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
    /* renamed from: com.smedialink.storage.domain.di.module.InteractorModuleKt$interactorModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C175122 extends Lambda implements Function2<Scope, ParametersHolder, NftAvatarInteractor> {
        public static final C175122 INSTANCE = new C175122();

        C175122() {
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
    public static final class C17533 extends Lambda implements Function2<Scope, ParametersHolder, WalletInteractor> {
        public static final C17533 INSTANCE = new C17533();

        C17533() {
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
