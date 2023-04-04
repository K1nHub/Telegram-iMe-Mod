package com.iMe.p024di.module;

import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.notifications.PushNotificationsManager;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.interactor.firebase.DynamicLinksInteractor;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
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
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: ManagerModule.kt */
/* renamed from: com.iMe.di.module.ManagerModuleKt$presentationManagerModule$1 */
/* loaded from: classes3.dex */
final class ManagerModuleKt$presentationManagerModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final ManagerModuleKt$presentationManagerModule$1 INSTANCE = new ManagerModuleKt$presentationManagerModule$1();

    ManagerModuleKt$presentationManagerModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.di.module.ManagerModuleKt$presentationManagerModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C13311 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationsManager> {
        public static final C13311 INSTANCE = new C13311();

        C13311() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PushNotificationsManager invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new PushNotificationsManager((PushNotificationInteractor) factory.get(Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, null), (PreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C13311 c13311 = C13311.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(PushNotificationsManager.class), null, c13311, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13322 c13322 = C13322.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, c13322, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13333 c13333 = C13333.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, c13333, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13344 c13344 = C13344.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, c13344, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.di.module.ManagerModuleKt$presentationManagerModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13344 extends Lambda implements Function2<Scope, ParametersHolder, WalletCreateManager> {
        public static final C13344 INSTANCE = new C13344();

        C13344() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletCreateManager invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletCreateManager((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.di.module.ManagerModuleKt$presentationManagerModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13322 extends Lambda implements Function2<Scope, ParametersHolder, CryptoRecipientManager> {
        public static final C13322 INSTANCE = new C13322();

        C13322() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoRecipientManager invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            CryptoPermissionInteractor cryptoPermissionInteractor = (CryptoPermissionInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, null);
            return new CryptoRecipientManager((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), cryptoPermissionInteractor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManagerModule.kt */
    /* renamed from: com.iMe.di.module.ManagerModuleKt$presentationManagerModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13333 extends Lambda implements Function2<Scope, ParametersHolder, BinancePayProcessManager> {
        public static final C13333 INSTANCE = new C13333();

        C13333() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinancePayProcessManager invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BinancePayProcessManager((BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), (DynamicLinksInteractor) factory.get(Reflection.getOrCreateKotlinClass(DynamicLinksInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }
}
