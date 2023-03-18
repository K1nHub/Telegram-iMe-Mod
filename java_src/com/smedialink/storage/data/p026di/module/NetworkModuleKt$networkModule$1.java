package com.smedialink.storage.data.p026di.module;

import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.Gson;
import com.ihsanbal.logging.LoggingInterceptor;
import com.smedialink.storage.common.AppConfiguration$Api;
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
import com.smedialink.storage.data.network.api.own.TonApi;
import com.smedialink.storage.data.network.api.own.TwitterApi;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.api.own.WalletConnectApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.DbErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.smedialink.storage.data.network.interceptor.ApiErrorInterceptor;
import com.smedialink.storage.data.network.interceptor.DurationAnalyticsInterceptor;
import com.smedialink.storage.data.network.interceptor.MetadataInterceptor;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
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
import okhttp3.Cache;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import retrofit2.Retrofit;
/* compiled from: NetworkModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1 */
/* loaded from: classes3.dex */
final class NetworkModuleKt$networkModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final NetworkModuleKt$networkModule$1 INSTANCE = new NetworkModuleKt$networkModule$1();

    NetworkModuleKt$networkModule$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15421 extends Lambda implements Function2<Scope, ParametersHolder, Cache> {
        public static final C15421 INSTANCE = new C15421();

        C15421() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Cache invoke(Scope single, ParametersHolder it) {
            Cache createCache;
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            createCache = NetworkModuleKt.createCache(single);
            return createCache;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C15532 extends Lambda implements Function2<Scope, ParametersHolder, Gson> {
        public static final C15532 INSTANCE = new C15532();

        C15532() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Gson invoke(Scope single, ParametersHolder it) {
            Gson createGson;
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            createGson = NetworkModuleKt.createGson();
            return createGson;
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
        List emptyList27;
        List emptyList28;
        List emptyList29;
        List emptyList30;
        List emptyList31;
        List emptyList32;
        List emptyList33;
        List emptyList34;
        List emptyList35;
        List emptyList36;
        List emptyList37;
        List emptyList38;
        List emptyList39;
        List emptyList40;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C15421 c15421 = C15421.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Cache.class), null, c15421, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C15532 c15532 = C15532.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(Gson.class), null, c15532, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        StringQualifier default_client = NetworkModuleKt.getDEFAULT_CLIENT();
        C15643 c15643 = C15643.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(OkHttpClient.class), default_client, c15643, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        StringQualifier server_client = NetworkModuleKt.getSERVER_CLIENT();
        C15754 c15754 = C15754.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(OkHttpClient.class), server_client, c15754, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        StringQualifier ton_config_client = NetworkModuleKt.getTON_CONFIG_CLIENT();
        C15775 c15775 = C15775.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(OkHttpClient.class), ton_config_client, c15775, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        StringQualifier logging_interceptor = NetworkModuleKt.getLOGGING_INTERCEPTOR();
        C15786 c15786 = C15786.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(Interceptor.class), logging_interceptor, c15786, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        StringQualifier metadata_interceptor = NetworkModuleKt.getMETADATA_INTERCEPTOR();
        C15797 c15797 = C15797.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(Interceptor.class), metadata_interceptor, c15797, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        StringQualifier duration_analytic_interceptor = NetworkModuleKt.getDURATION_ANALYTIC_INTERCEPTOR();
        C15808 c15808 = C15808.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(Interceptor.class), duration_analytic_interceptor, c15808, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        StringQualifier error_interceptor = NetworkModuleKt.getERROR_INTERCEPTOR();
        C15819 c15819 = C15819.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(Interceptor.class), error_interceptor, c15819, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        StringQualifier kikliko_retrofit = NetworkModuleKt.getKIKLIKO_RETROFIT();
        C154310 c154310 = C154310.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(Retrofit.class), kikliko_retrofit, c154310, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        StringQualifier google_retrofit = NetworkModuleKt.getGOOGLE_RETROFIT();
        C154411 c154411 = C154411.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(Retrofit.class), google_retrofit, c154411, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        StringQualifier server_retrofit = NetworkModuleKt.getSERVER_RETROFIT();
        C154512 c154512 = C154512.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(Retrofit.class), server_retrofit, c154512, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
        C154613 c154613 = C154613.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(SwapApi.class), null, c154613, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new Pair(module, singleInstanceFactory13);
        C154714 c154714 = C154714.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(PinCodeApi.class), null, c154714, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new Pair(module, singleInstanceFactory14);
        C154815 c154815 = C154815.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, c154815, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new Pair(module, singleInstanceFactory15);
        C154916 c154916 = C154916.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(PermissionApi.class), null, c154916, kind, emptyList16));
        module.indexPrimaryType(singleInstanceFactory16);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory16);
        }
        new Pair(module, singleInstanceFactory16);
        C155017 c155017 = C155017.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(SimplexApi.class), null, c155017, kind, emptyList17));
        module.indexPrimaryType(singleInstanceFactory17);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory17);
        }
        new Pair(module, singleInstanceFactory17);
        C155118 c155118 = C155118.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(CancelApi.class), null, c155118, kind, emptyList18));
        module.indexPrimaryType(singleInstanceFactory18);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory18);
        }
        new Pair(module, singleInstanceFactory18);
        C155219 c155219 = C155219.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(BoostApi.class), null, c155219, kind, emptyList19));
        module.indexPrimaryType(singleInstanceFactory19);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory19);
        }
        new Pair(module, singleInstanceFactory19);
        C155420 c155420 = C155420.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(AccountLevelApi.class), null, c155420, kind, emptyList20));
        module.indexPrimaryType(singleInstanceFactory20);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory20);
        }
        new Pair(module, singleInstanceFactory20);
        C155521 c155521 = C155521.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(BinanceInternalApi.class), null, c155521, kind, emptyList21));
        module.indexPrimaryType(singleInstanceFactory21);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory21);
        }
        new Pair(module, singleInstanceFactory21);
        C155622 c155622 = C155622.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(DonationsApi.class), null, c155622, kind, emptyList22));
        module.indexPrimaryType(singleInstanceFactory22);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory22);
        }
        new Pair(module, singleInstanceFactory22);
        C155723 c155723 = C155723.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletApi.class), null, c155723, kind, emptyList23));
        module.indexPrimaryType(singleInstanceFactory23);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory23);
        }
        new Pair(module, singleInstanceFactory23);
        C155824 c155824 = C155824.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(WalletConnectApi.class), null, c155824, kind, emptyList24));
        module.indexPrimaryType(singleInstanceFactory24);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory24);
        }
        new Pair(module, singleInstanceFactory24);
        C155925 c155925 = C155925.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory25 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(AirdropApi.class), null, c155925, kind, emptyList25));
        module.indexPrimaryType(singleInstanceFactory25);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory25);
        }
        new Pair(module, singleInstanceFactory25);
        C156026 c156026 = C156026.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory26 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(NftAvatarApi.class), null, c156026, kind, emptyList26));
        module.indexPrimaryType(singleInstanceFactory26);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory26);
        }
        new Pair(module, singleInstanceFactory26);
        C156127 c156127 = C156127.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory27 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(TonApi.class), null, c156127, kind, emptyList27));
        module.indexPrimaryType(singleInstanceFactory27);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory27);
        }
        new Pair(module, singleInstanceFactory27);
        C156228 c156228 = C156228.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory28 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, c156228, kind, emptyList28));
        module.indexPrimaryType(singleInstanceFactory28);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory28);
        }
        new Pair(module, singleInstanceFactory28);
        C156329 c156329 = C156329.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory29 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(PushNotificationApi.class), null, c156329, kind, emptyList29));
        module.indexPrimaryType(singleInstanceFactory29);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory29);
        }
        new Pair(module, singleInstanceFactory29);
        C156530 c156530 = C156530.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory30 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(ReactionApi.class), null, c156530, kind, emptyList30));
        module.indexPrimaryType(singleInstanceFactory30);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory30);
        }
        new Pair(module, singleInstanceFactory30);
        C156631 c156631 = C156631.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory31 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(RemoteConfigApi.class), null, c156631, kind, emptyList31));
        module.indexPrimaryType(singleInstanceFactory31);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory31);
        }
        new Pair(module, singleInstanceFactory31);
        C156732 c156732 = C156732.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory32 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(DynamicLinksApi.class), null, c156732, kind, emptyList32));
        module.indexPrimaryType(singleInstanceFactory32);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory32);
        }
        new Pair(module, singleInstanceFactory32);
        C156833 c156833 = C156833.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory33 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(KiklikoApi.class), null, c156833, kind, emptyList33));
        module.indexPrimaryType(singleInstanceFactory33);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory33);
        }
        new Pair(module, singleInstanceFactory33);
        C156934 c156934 = C156934.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory34 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(GoogleTranslationApi.class), null, c156934, kind, emptyList34));
        module.indexPrimaryType(singleInstanceFactory34);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory34);
        }
        new Pair(module, singleInstanceFactory34);
        C157035 c157035 = C157035.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory35 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(CatalogApi.class), null, c157035, kind, emptyList35));
        module.indexPrimaryType(singleInstanceFactory35);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory35);
        }
        new Pair(module, singleInstanceFactory35);
        C157136 c157136 = C157136.INSTANCE;
        StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
        emptyList36 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory36 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(TwitterApi.class), null, c157136, kind, emptyList36));
        module.indexPrimaryType(singleInstanceFactory36);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory36);
        }
        new Pair(module, singleInstanceFactory36);
        C157237 c157237 = C157237.INSTANCE;
        StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
        emptyList37 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory37 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, c157237, kind, emptyList37));
        module.indexPrimaryType(singleInstanceFactory37);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory37);
        }
        new Pair(module, singleInstanceFactory37);
        C157338 c157338 = C157338.INSTANCE;
        StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
        emptyList38 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory38 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(GoogleServicesErrorHandler.class), null, c157338, kind, emptyList38));
        module.indexPrimaryType(singleInstanceFactory38);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory38);
        }
        new Pair(module, singleInstanceFactory38);
        C157439 c157439 = C157439.INSTANCE;
        StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
        emptyList39 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory39 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, c157439, kind, emptyList39));
        module.indexPrimaryType(singleInstanceFactory39);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory39);
        }
        new Pair(module, singleInstanceFactory39);
        C157640 c157640 = C157640.INSTANCE;
        StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
        emptyList40 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory40 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(DbErrorHandler.class), null, c157640, kind, emptyList40));
        module.indexPrimaryType(singleInstanceFactory40);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory40);
        }
        new Pair(module, singleInstanceFactory40);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C15775 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C15775 INSTANCE = new C15775();

        C15775() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final OkHttpClient invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createTonConfigOkHttpClient();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C15786 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C15786 INSTANCE = new C15786();

        C15786() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Interceptor invoke(Scope single, ParametersHolder it) {
            LoggingInterceptor createLoggingInterceptor;
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            createLoggingInterceptor = NetworkModuleKt.createLoggingInterceptor();
            return createLoggingInterceptor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C15797 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C15797 INSTANCE = new C15797();

        C15797() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Interceptor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new MetadataInterceptor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C15808 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C15808 INSTANCE = new C15808();

        C15808() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Interceptor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DurationAnalyticsInterceptor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C15819 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C15819 INSTANCE = new C15819();

        C15819() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Interceptor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ApiErrorInterceptor((Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (RxEventBus) single.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C154310 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C154310 INSTANCE = new C154310();

        C154310() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Retrofit invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), "https://api.kikliko.com/api/v1/ime-android/", (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C154411 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C154411 INSTANCE = new C154411();

        C154411() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Retrofit invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), "https://translate.googleapis.com/", (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C154512 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C154512 INSTANCE = new C154512();

        C154512() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Retrofit invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getSERVER_CLIENT(), null), AppConfiguration$Api.INSTANCE.getServerUrl(), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C154613 extends Lambda implements Function2<Scope, ParametersHolder, SwapApi> {
        public static final C154613 INSTANCE = new C154613();

        C154613() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SwapApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(SwapApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…eate(SwapApi::class.java)");
            return (SwapApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C154714 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeApi> {
        public static final C154714 INSTANCE = new C154714();

        C154714() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PinCodeApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(PinCodeApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(PinCodeApi::class.java)");
            return (PinCodeApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C154815 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletApi> {
        public static final C154815 INSTANCE = new C154815();

        C154815() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoWalletApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CryptoWalletApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ptoWalletApi::class.java)");
            return (CryptoWalletApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C154916 extends Lambda implements Function2<Scope, ParametersHolder, PermissionApi> {
        public static final C154916 INSTANCE = new C154916();

        C154916() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PermissionApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(PermissionApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ermissionApi::class.java)");
            return (PermissionApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C155017 extends Lambda implements Function2<Scope, ParametersHolder, SimplexApi> {
        public static final C155017 INSTANCE = new C155017();

        C155017() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SimplexApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(SimplexApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(SimplexApi::class.java)");
            return (SimplexApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C155118 extends Lambda implements Function2<Scope, ParametersHolder, CancelApi> {
        public static final C155118 INSTANCE = new C155118();

        C155118() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CancelApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CancelApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…te(CancelApi::class.java)");
            return (CancelApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C155219 extends Lambda implements Function2<Scope, ParametersHolder, BoostApi> {
        public static final C155219 INSTANCE = new C155219();

        C155219() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BoostApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(BoostApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ate(BoostApi::class.java)");
            return (BoostApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C155420 extends Lambda implements Function2<Scope, ParametersHolder, AccountLevelApi> {
        public static final C155420 INSTANCE = new C155420();

        C155420() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AccountLevelApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(AccountLevelApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ountLevelApi::class.java)");
            return (AccountLevelApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C155521 extends Lambda implements Function2<Scope, ParametersHolder, BinanceInternalApi> {
        public static final C155521 INSTANCE = new C155521();

        C155521() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BinanceInternalApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(BinanceInternalApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…eInternalApi::class.java)");
            return (BinanceInternalApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C155622 extends Lambda implements Function2<Scope, ParametersHolder, DonationsApi> {
        public static final C155622 INSTANCE = new C155622();

        C155622() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DonationsApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(DonationsApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…DonationsApi::class.java)");
            return (DonationsApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C155723 extends Lambda implements Function2<Scope, ParametersHolder, WalletApi> {
        public static final C155723 INSTANCE = new C155723();

        C155723() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(WalletApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…te(WalletApi::class.java)");
            return (WalletApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C155824 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectApi> {
        public static final C155824 INSTANCE = new C155824();

        C155824() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(WalletConnectApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…etConnectApi::class.java)");
            return (WalletConnectApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C155925 extends Lambda implements Function2<Scope, ParametersHolder, AirdropApi> {
        public static final C155925 INSTANCE = new C155925();

        C155925() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AirdropApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(AirdropApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(AirdropApi::class.java)");
            return (AirdropApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C156026 extends Lambda implements Function2<Scope, ParametersHolder, NftAvatarApi> {
        public static final C156026 INSTANCE = new C156026();

        C156026() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final NftAvatarApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(NftAvatarApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…NftAvatarApi::class.java)");
            return (NftAvatarApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C156127 extends Lambda implements Function2<Scope, ParametersHolder, TonApi> {
        public static final C156127 INSTANCE = new C156127();

        C156127() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TonApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(TonApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…reate(TonApi::class.java)");
            return (TonApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C156228 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesApi> {
        public static final C156228 INSTANCE = new C156228();

        C156228() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GoogleServicesApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(GoogleServicesApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…eServicesApi::class.java)");
            return (GoogleServicesApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C156329 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationApi> {
        public static final C156329 INSTANCE = new C156329();

        C156329() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PushNotificationApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(PushNotificationApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ificationApi::class.java)");
            return (PushNotificationApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C156530 extends Lambda implements Function2<Scope, ParametersHolder, ReactionApi> {
        public static final C156530 INSTANCE = new C156530();

        C156530() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ReactionApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(ReactionApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…(ReactionApi::class.java)");
            return (ReactionApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C156631 extends Lambda implements Function2<Scope, ParametersHolder, RemoteConfigApi> {
        public static final C156631 INSTANCE = new C156631();

        C156631() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final RemoteConfigApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new RemoteConfigApi((FirebaseRemoteConfig) single.get(Reflection.getOrCreateKotlinClass(FirebaseRemoteConfig.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C156732 extends Lambda implements Function2<Scope, ParametersHolder, DynamicLinksApi> {
        public static final C156732 INSTANCE = new C156732();

        C156732() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DynamicLinksApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DynamicLinksApi((FirebaseDynamicLinks) single.get(Reflection.getOrCreateKotlinClass(FirebaseDynamicLinks.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C156833 extends Lambda implements Function2<Scope, ParametersHolder, KiklikoApi> {
        public static final C156833 INSTANCE = new C156833();

        C156833() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final KiklikoApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getKIKLIKO_RETROFIT(), null)).create(KiklikoApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(KIKLIKO_RE…e(KiklikoApi::class.java)");
            return (KiklikoApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C156934 extends Lambda implements Function2<Scope, ParametersHolder, GoogleTranslationApi> {
        public static final C156934 INSTANCE = new C156934();

        C156934() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GoogleTranslationApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getGOOGLE_RETROFIT(), null)).create(GoogleTranslationApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(GOOGLE_RET…anslationApi::class.java)");
            return (GoogleTranslationApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C157035 extends Lambda implements Function2<Scope, ParametersHolder, CatalogApi> {
        public static final C157035 INSTANCE = new C157035();

        C157035() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CatalogApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(CatalogApi::class.java)");
            return (CatalogApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$36 */
    /* loaded from: classes3.dex */
    public static final class C157136 extends Lambda implements Function2<Scope, ParametersHolder, TwitterApi> {
        public static final C157136 INSTANCE = new C157136();

        C157136() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(TwitterApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(TwitterApi::class.java)");
            return (TwitterApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$37 */
    /* loaded from: classes3.dex */
    public static final class C157237 extends Lambda implements Function2<Scope, ParametersHolder, ApiErrorHandler> {
        public static final C157237 INSTANCE = new C157237();

        C157237() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ApiErrorHandler invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ApiErrorHandler();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$38 */
    /* loaded from: classes3.dex */
    public static final class C157338 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesErrorHandler> {
        public static final C157338 INSTANCE = new C157338();

        C157338() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GoogleServicesErrorHandler invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new GoogleServicesErrorHandler((ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$39 */
    /* loaded from: classes3.dex */
    public static final class C157439 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseFunctionsErrorHandler> {
        public static final C157439 INSTANCE = new C157439();

        C157439() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FirebaseFunctionsErrorHandler invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new FirebaseFunctionsErrorHandler();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$40 */
    /* loaded from: classes3.dex */
    public static final class C157640 extends Lambda implements Function2<Scope, ParametersHolder, DbErrorHandler> {
        public static final C157640 INSTANCE = new C157640();

        C157640() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DbErrorHandler invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DbErrorHandler();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C15643 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C15643 INSTANCE = new C15643();

        C15643() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final OkHttpClient invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createOkHttpClient((Cache) single.get(Reflection.getOrCreateKotlinClass(Cache.class), null, null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getLOGGING_INTERCEPTOR(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.NetworkModuleKt$networkModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C15754 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C15754 INSTANCE = new C15754();

        C15754() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final OkHttpClient invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createOkHttpClient((Cache) single.get(Reflection.getOrCreateKotlinClass(Cache.class), null, null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getDURATION_ANALYTIC_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getMETADATA_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getLOGGING_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getERROR_INTERCEPTOR(), null));
        }
    }
}
