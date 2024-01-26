package com.iMe.storage.data.p025di.module;

import com.facebook.flipper.plugins.network.FlipperOkhttpInterceptor;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.iMe.storage.common.AppConfiguration$Api;
import com.iMe.storage.data.manager.FlipperManager;
import com.iMe.storage.data.network.api.google.DynamicLinksApi;
import com.iMe.storage.data.network.api.google.RemoteConfigApi;
import com.iMe.storage.data.network.api.own.AccountLevelApi;
import com.iMe.storage.data.network.api.own.AirdropApi;
import com.iMe.storage.data.network.api.own.BinanceInternalApi;
import com.iMe.storage.data.network.api.own.BoostApi;
import com.iMe.storage.data.network.api.own.CancelApi;
import com.iMe.storage.data.network.api.own.CatalogApi;
import com.iMe.storage.data.network.api.own.CryptoBoxApi;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.DonationsApi;
import com.iMe.storage.data.network.api.own.GoogleServicesApi;
import com.iMe.storage.data.network.api.own.GoogleTranslationApi;
import com.iMe.storage.data.network.api.own.KiklikoApi;
import com.iMe.storage.data.network.api.own.NftApi;
import com.iMe.storage.data.network.api.own.PermissionApi;
import com.iMe.storage.data.network.api.own.PinCodeApi;
import com.iMe.storage.data.network.api.own.PushNotificationApi;
import com.iMe.storage.data.network.api.own.ReactionApi;
import com.iMe.storage.data.network.api.own.SimplexApi;
import com.iMe.storage.data.network.api.own.SocialApi;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.api.own.TonFragmentApi;
import com.iMe.storage.data.network.api.own.TwitterApi;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.DbErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.iMe.storage.data.network.interceptor.ApiErrorInterceptor;
import com.iMe.storage.data.network.interceptor.MetadataInterceptor;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.ihsanbal.logging.Level;
import com.ihsanbal.logging.LoggingInterceptor;
import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Cache;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.koin.android.ext.koin.ModuleExtKt;
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
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
/* compiled from: NetworkModule.kt */
/* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt */
/* loaded from: classes3.dex */
public final class NetworkModuleKt {
    private static final StringQualifier LOGGING_INTERCEPTOR = QualifierKt.named("LOGGING_INTERCEPTOR");
    private static final StringQualifier METADATA_INTERCEPTOR = QualifierKt.named("METADATA_INTERCEPTOR");
    private static final StringQualifier ERROR_INTERCEPTOR = QualifierKt.named("ERROR_INTERCEPTOR");
    private static final StringQualifier DEFAULT_CLIENT = QualifierKt.named("DEFAULT_CLIENT");
    private static final StringQualifier SERVER_CLIENT = QualifierKt.named("MAIN_CLIENT");
    private static final StringQualifier TON_CONFIG_CLIENT = QualifierKt.named("TON_CONFIG_CLIENT");
    private static final StringQualifier GOOGLE_RETROFIT = QualifierKt.named("GOOGLE_RETROFIT");
    private static final StringQualifier KIKLIKO_RETROFIT = QualifierKt.named("KIKLIKO_RETROFIT");
    private static final StringQualifier SERVER_RETROFIT = QualifierKt.named("SERVER_RETROFIT");
    private static final Module networkModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1
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
            List emptyList41;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C16111 c16111 = new Function2<Scope, ParametersHolder, Cache>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final Cache invoke(Scope single, ParametersHolder it) {
                    Cache createCache;
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    createCache = NetworkModuleKt.createCache(single);
                    return createCache;
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Cache.class), null, c16111, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C16222 c16222 = new Function2<Scope, ParametersHolder, Gson>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final Gson invoke(Scope single, ParametersHolder it) {
                    Gson createGson;
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    createGson = NetworkModuleKt.createGson();
                    return createGson;
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(Gson.class), null, c16222, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            StringQualifier default_client = NetworkModuleKt.getDEFAULT_CLIENT();
            C16333 c16333 = new Function2<Scope, ParametersHolder, OkHttpClient>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final OkHttpClient invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createOkHttpClient((Cache) single.get(Reflection.getOrCreateKotlinClass(Cache.class), null, null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getLOGGING_INTERCEPTOR(), null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(OkHttpClient.class), default_client, c16333, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            StringQualifier server_client = NetworkModuleKt.getSERVER_CLIENT();
            C16444 c16444 = new Function2<Scope, ParametersHolder, OkHttpClient>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final OkHttpClient invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createOkHttpClient((Cache) single.get(Reflection.getOrCreateKotlinClass(Cache.class), null, null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getMETADATA_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getLOGGING_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getERROR_INTERCEPTOR(), null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(OkHttpClient.class), server_client, c16444, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            StringQualifier ton_config_client = NetworkModuleKt.getTON_CONFIG_CLIENT();
            C16475 c16475 = new Function2<Scope, ParametersHolder, OkHttpClient>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final OkHttpClient invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createTonConfigOkHttpClient();
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(OkHttpClient.class), ton_config_client, c16475, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
            StringQualifier logging_interceptor = NetworkModuleKt.getLOGGING_INTERCEPTOR();
            C16486 c16486 = new Function2<Scope, ParametersHolder, Interceptor>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final Interceptor invoke(Scope single, ParametersHolder it) {
                    LoggingInterceptor createLoggingInterceptor;
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    createLoggingInterceptor = NetworkModuleKt.createLoggingInterceptor();
                    return createLoggingInterceptor;
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(Interceptor.class), logging_interceptor, c16486, kind, emptyList6));
            module.indexPrimaryType(singleInstanceFactory6);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory6);
            }
            new KoinDefinition(module, singleInstanceFactory6);
            StringQualifier metadata_interceptor = NetworkModuleKt.getMETADATA_INTERCEPTOR();
            C16497 c16497 = new Function2<Scope, ParametersHolder, Interceptor>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final Interceptor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new MetadataInterceptor();
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(Interceptor.class), metadata_interceptor, c16497, kind, emptyList7));
            module.indexPrimaryType(singleInstanceFactory7);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory7);
            }
            new KoinDefinition(module, singleInstanceFactory7);
            StringQualifier error_interceptor = NetworkModuleKt.getERROR_INTERCEPTOR();
            C16508 c16508 = new Function2<Scope, ParametersHolder, Interceptor>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final Interceptor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ApiErrorInterceptor((Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null), (RxEventBus) single.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(Interceptor.class), error_interceptor, c16508, kind, emptyList8));
            module.indexPrimaryType(singleInstanceFactory8);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory8);
            }
            new KoinDefinition(module, singleInstanceFactory8);
            StringQualifier kikliko_retrofit = NetworkModuleKt.getKIKLIKO_RETROFIT();
            C16519 c16519 = new Function2<Scope, ParametersHolder, Retrofit>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final Retrofit invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), "https://api.kikliko.com/api/v1/bab6wg08TpiadT2UhFSme8feAbbMX017dFEbi6xVpvK7DuvZFuFLwPtVIU6uxNI1/", (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(Retrofit.class), kikliko_retrofit, c16519, kind, emptyList9));
            module.indexPrimaryType(singleInstanceFactory9);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory9);
            }
            new KoinDefinition(module, singleInstanceFactory9);
            StringQualifier google_retrofit = NetworkModuleKt.getGOOGLE_RETROFIT();
            C161210 c161210 = new Function2<Scope, ParametersHolder, Retrofit>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final Retrofit invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), "https://translate.googleapis.com/", (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(Retrofit.class), google_retrofit, c161210, kind, emptyList10));
            module.indexPrimaryType(singleInstanceFactory10);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory10);
            }
            new KoinDefinition(module, singleInstanceFactory10);
            StringQualifier server_retrofit = NetworkModuleKt.getSERVER_RETROFIT();
            C161311 c161311 = new Function2<Scope, ParametersHolder, Retrofit>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final Retrofit invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getSERVER_CLIENT(), null), AppConfiguration$Api.INSTANCE.getServerUrl(), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(Retrofit.class), server_retrofit, c161311, kind, emptyList11));
            module.indexPrimaryType(singleInstanceFactory11);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory11);
            }
            new KoinDefinition(module, singleInstanceFactory11);
            C161412 c161412 = new Function2<Scope, ParametersHolder, SwapApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final SwapApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(SwapApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…eate(SwapApi::class.java)");
                    return (SwapApi) create;
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(SwapApi.class), null, c161412, kind, emptyList12));
            module.indexPrimaryType(singleInstanceFactory12);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory12);
            }
            new KoinDefinition(module, singleInstanceFactory12);
            C161513 c161513 = new Function2<Scope, ParametersHolder, PinCodeApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final PinCodeApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(PinCodeApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(PinCodeApi::class.java)");
                    return (PinCodeApi) create;
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(PinCodeApi.class), null, c161513, kind, emptyList13));
            module.indexPrimaryType(singleInstanceFactory13);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory13);
            }
            new KoinDefinition(module, singleInstanceFactory13);
            C161614 c161614 = new Function2<Scope, ParametersHolder, CryptoWalletApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final CryptoWalletApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CryptoWalletApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ptoWalletApi::class.java)");
                    return (CryptoWalletApi) create;
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, c161614, kind, emptyList14));
            module.indexPrimaryType(singleInstanceFactory14);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory14);
            }
            new KoinDefinition(module, singleInstanceFactory14);
            C161715 c161715 = new Function2<Scope, ParametersHolder, PermissionApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final PermissionApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(PermissionApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ermissionApi::class.java)");
                    return (PermissionApi) create;
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(PermissionApi.class), null, c161715, kind, emptyList15));
            module.indexPrimaryType(singleInstanceFactory15);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory15);
            }
            new KoinDefinition(module, singleInstanceFactory15);
            C161816 c161816 = new Function2<Scope, ParametersHolder, SimplexApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final SimplexApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(SimplexApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(SimplexApi::class.java)");
                    return (SimplexApi) create;
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(SimplexApi.class), null, c161816, kind, emptyList16));
            module.indexPrimaryType(singleInstanceFactory16);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory16);
            }
            new KoinDefinition(module, singleInstanceFactory16);
            C161917 c161917 = new Function2<Scope, ParametersHolder, CancelApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final CancelApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CancelApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…te(CancelApi::class.java)");
                    return (CancelApi) create;
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(CancelApi.class), null, c161917, kind, emptyList17));
            module.indexPrimaryType(singleInstanceFactory17);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory17);
            }
            new KoinDefinition(module, singleInstanceFactory17);
            C162018 c162018 = new Function2<Scope, ParametersHolder, BoostApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final BoostApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(BoostApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ate(BoostApi::class.java)");
                    return (BoostApi) create;
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(BoostApi.class), null, c162018, kind, emptyList18));
            module.indexPrimaryType(singleInstanceFactory18);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory18);
            }
            new KoinDefinition(module, singleInstanceFactory18);
            C162119 c162119 = new Function2<Scope, ParametersHolder, AccountLevelApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final AccountLevelApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(AccountLevelApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ountLevelApi::class.java)");
                    return (AccountLevelApi) create;
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(AccountLevelApi.class), null, c162119, kind, emptyList19));
            module.indexPrimaryType(singleInstanceFactory19);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory19);
            }
            new KoinDefinition(module, singleInstanceFactory19);
            C162320 c162320 = new Function2<Scope, ParametersHolder, BinanceInternalApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.20
                @Override // kotlin.jvm.functions.Function2
                public final BinanceInternalApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(BinanceInternalApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…eInternalApi::class.java)");
                    return (BinanceInternalApi) create;
                }
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(BinanceInternalApi.class), null, c162320, kind, emptyList20));
            module.indexPrimaryType(singleInstanceFactory20);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory20);
            }
            new KoinDefinition(module, singleInstanceFactory20);
            C162421 c162421 = new Function2<Scope, ParametersHolder, DonationsApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final DonationsApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(DonationsApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…DonationsApi::class.java)");
                    return (DonationsApi) create;
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(DonationsApi.class), null, c162421, kind, emptyList21));
            module.indexPrimaryType(singleInstanceFactory21);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory21);
            }
            new KoinDefinition(module, singleInstanceFactory21);
            C162522 c162522 = new Function2<Scope, ParametersHolder, WalletApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final WalletApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(WalletApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…te(WalletApi::class.java)");
                    return (WalletApi) create;
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(WalletApi.class), null, c162522, kind, emptyList22));
            module.indexPrimaryType(singleInstanceFactory22);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory22);
            }
            new KoinDefinition(module, singleInstanceFactory22);
            C162623 c162623 = new Function2<Scope, ParametersHolder, WalletConnectApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(WalletConnectApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…etConnectApi::class.java)");
                    return (WalletConnectApi) create;
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletConnectApi.class), null, c162623, kind, emptyList23));
            module.indexPrimaryType(singleInstanceFactory23);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory23);
            }
            new KoinDefinition(module, singleInstanceFactory23);
            C162724 c162724 = new Function2<Scope, ParametersHolder, AirdropApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final AirdropApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(AirdropApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(AirdropApi::class.java)");
                    return (AirdropApi) create;
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(AirdropApi.class), null, c162724, kind, emptyList24));
            module.indexPrimaryType(singleInstanceFactory24);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory24);
            }
            new KoinDefinition(module, singleInstanceFactory24);
            C162825 c162825 = new Function2<Scope, ParametersHolder, NftApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final NftApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(NftApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…reate(NftApi::class.java)");
                    return (NftApi) create;
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory25 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(NftApi.class), null, c162825, kind, emptyList25));
            module.indexPrimaryType(singleInstanceFactory25);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory25);
            }
            new KoinDefinition(module, singleInstanceFactory25);
            C162926 c162926 = new Function2<Scope, ParametersHolder, GoogleServicesApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final GoogleServicesApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(GoogleServicesApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…eServicesApi::class.java)");
                    return (GoogleServicesApi) create;
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory26 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, c162926, kind, emptyList26));
            module.indexPrimaryType(singleInstanceFactory26);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory26);
            }
            new KoinDefinition(module, singleInstanceFactory26);
            C163027 c163027 = new Function2<Scope, ParametersHolder, PushNotificationApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.27
                @Override // kotlin.jvm.functions.Function2
                public final PushNotificationApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(PushNotificationApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…ificationApi::class.java)");
                    return (PushNotificationApi) create;
                }
            };
            StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
            emptyList27 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory27 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(PushNotificationApi.class), null, c163027, kind, emptyList27));
            module.indexPrimaryType(singleInstanceFactory27);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory27);
            }
            new KoinDefinition(module, singleInstanceFactory27);
            C163128 c163128 = new Function2<Scope, ParametersHolder, ReactionApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.28
                @Override // kotlin.jvm.functions.Function2
                public final ReactionApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(ReactionApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…(ReactionApi::class.java)");
                    return (ReactionApi) create;
                }
            };
            StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
            emptyList28 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory28 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(ReactionApi.class), null, c163128, kind, emptyList28));
            module.indexPrimaryType(singleInstanceFactory28);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory28);
            }
            new KoinDefinition(module, singleInstanceFactory28);
            C163229 c163229 = new Function2<Scope, ParametersHolder, RemoteConfigApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.29
                @Override // kotlin.jvm.functions.Function2
                public final RemoteConfigApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new RemoteConfigApi((FirebaseRemoteConfig) single.get(Reflection.getOrCreateKotlinClass(FirebaseRemoteConfig.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
            emptyList29 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory29 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(RemoteConfigApi.class), null, c163229, kind, emptyList29));
            module.indexPrimaryType(singleInstanceFactory29);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory29);
            }
            new KoinDefinition(module, singleInstanceFactory29);
            C163430 c163430 = new Function2<Scope, ParametersHolder, DynamicLinksApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.30
                @Override // kotlin.jvm.functions.Function2
                public final DynamicLinksApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DynamicLinksApi((FirebaseDynamicLinks) single.get(Reflection.getOrCreateKotlinClass(FirebaseDynamicLinks.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
            emptyList30 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory30 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(DynamicLinksApi.class), null, c163430, kind, emptyList30));
            module.indexPrimaryType(singleInstanceFactory30);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory30);
            }
            new KoinDefinition(module, singleInstanceFactory30);
            C163531 c163531 = new Function2<Scope, ParametersHolder, KiklikoApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.31
                @Override // kotlin.jvm.functions.Function2
                public final KiklikoApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getKIKLIKO_RETROFIT(), null)).create(KiklikoApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(KIKLIKO_RE…e(KiklikoApi::class.java)");
                    return (KiklikoApi) create;
                }
            };
            StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
            emptyList31 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory31 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(KiklikoApi.class), null, c163531, kind, emptyList31));
            module.indexPrimaryType(singleInstanceFactory31);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory31);
            }
            new KoinDefinition(module, singleInstanceFactory31);
            C163632 c163632 = new Function2<Scope, ParametersHolder, GoogleTranslationApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.32
                @Override // kotlin.jvm.functions.Function2
                public final GoogleTranslationApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getGOOGLE_RETROFIT(), null)).create(GoogleTranslationApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(GOOGLE_RET…anslationApi::class.java)");
                    return (GoogleTranslationApi) create;
                }
            };
            StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
            emptyList32 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory32 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(GoogleTranslationApi.class), null, c163632, kind, emptyList32));
            module.indexPrimaryType(singleInstanceFactory32);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory32);
            }
            new KoinDefinition(module, singleInstanceFactory32);
            C163733 c163733 = new Function2<Scope, ParametersHolder, CatalogApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.33
                @Override // kotlin.jvm.functions.Function2
                public final CatalogApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CatalogApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(CatalogApi::class.java)");
                    return (CatalogApi) create;
                }
            };
            StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
            emptyList33 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory33 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(CatalogApi.class), null, c163733, kind, emptyList33));
            module.indexPrimaryType(singleInstanceFactory33);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory33);
            }
            new KoinDefinition(module, singleInstanceFactory33);
            C163834 c163834 = new Function2<Scope, ParametersHolder, TwitterApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.34
                @Override // kotlin.jvm.functions.Function2
                public final TwitterApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(TwitterApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…e(TwitterApi::class.java)");
                    return (TwitterApi) create;
                }
            };
            StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
            emptyList34 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory34 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(TwitterApi.class), null, c163834, kind, emptyList34));
            module.indexPrimaryType(singleInstanceFactory34);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory34);
            }
            new KoinDefinition(module, singleInstanceFactory34);
            C163935 c163935 = new Function2<Scope, ParametersHolder, SocialApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.35
                @Override // kotlin.jvm.functions.Function2
                public final SocialApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(SocialApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…te(SocialApi::class.java)");
                    return (SocialApi) create;
                }
            };
            StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
            emptyList35 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory35 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(SocialApi.class), null, c163935, kind, emptyList35));
            module.indexPrimaryType(singleInstanceFactory35);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory35);
            }
            new KoinDefinition(module, singleInstanceFactory35);
            C164036 c164036 = new Function2<Scope, ParametersHolder, CryptoBoxApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.36
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(CryptoBoxApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…CryptoBoxApi::class.java)");
                    return (CryptoBoxApi) create;
                }
            };
            StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
            emptyList36 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory36 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(CryptoBoxApi.class), null, c164036, kind, emptyList36));
            module.indexPrimaryType(singleInstanceFactory36);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory36);
            }
            new KoinDefinition(module, singleInstanceFactory36);
            C164137 c164137 = new Function2<Scope, ParametersHolder, TonFragmentApi>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.37
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(TonFragmentApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…nFragmentApi::class.java)");
                    return (TonFragmentApi) create;
                }
            };
            StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
            emptyList37 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory37 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(TonFragmentApi.class), null, c164137, kind, emptyList37));
            module.indexPrimaryType(singleInstanceFactory37);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory37);
            }
            new KoinDefinition(module, singleInstanceFactory37);
            C164238 c164238 = new Function2<Scope, ParametersHolder, ApiErrorHandler>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.38
                @Override // kotlin.jvm.functions.Function2
                public final ApiErrorHandler invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ApiErrorHandler();
                }
            };
            StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
            emptyList38 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory38 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, c164238, kind, emptyList38));
            module.indexPrimaryType(singleInstanceFactory38);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory38);
            }
            new KoinDefinition(module, singleInstanceFactory38);
            C164339 c164339 = new Function2<Scope, ParametersHolder, GoogleServicesErrorHandler>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.39
                @Override // kotlin.jvm.functions.Function2
                public final GoogleServicesErrorHandler invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new GoogleServicesErrorHandler((ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
            emptyList39 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory39 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(GoogleServicesErrorHandler.class), null, c164339, kind, emptyList39));
            module.indexPrimaryType(singleInstanceFactory39);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory39);
            }
            new KoinDefinition(module, singleInstanceFactory39);
            C164540 c164540 = new Function2<Scope, ParametersHolder, FirebaseFunctionsErrorHandler>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.40
                @Override // kotlin.jvm.functions.Function2
                public final FirebaseFunctionsErrorHandler invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FirebaseFunctionsErrorHandler();
                }
            };
            StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
            emptyList40 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory40 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, c164540, kind, emptyList40));
            module.indexPrimaryType(singleInstanceFactory40);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory40);
            }
            new KoinDefinition(module, singleInstanceFactory40);
            C164641 c164641 = new Function2<Scope, ParametersHolder, DbErrorHandler>() { // from class: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1.41
                @Override // kotlin.jvm.functions.Function2
                public final DbErrorHandler invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DbErrorHandler();
                }
            };
            StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
            emptyList41 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory41 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(DbErrorHandler.class), null, c164641, kind, emptyList41));
            module.indexPrimaryType(singleInstanceFactory41);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory41);
            }
            new KoinDefinition(module, singleInstanceFactory41);
        }
    }, 1, null);

    public static final StringQualifier getLOGGING_INTERCEPTOR() {
        return LOGGING_INTERCEPTOR;
    }

    public static final StringQualifier getMETADATA_INTERCEPTOR() {
        return METADATA_INTERCEPTOR;
    }

    public static final StringQualifier getERROR_INTERCEPTOR() {
        return ERROR_INTERCEPTOR;
    }

    public static final StringQualifier getDEFAULT_CLIENT() {
        return DEFAULT_CLIENT;
    }

    public static final StringQualifier getSERVER_CLIENT() {
        return SERVER_CLIENT;
    }

    public static final StringQualifier getTON_CONFIG_CLIENT() {
        return TON_CONFIG_CLIENT;
    }

    public static final StringQualifier getGOOGLE_RETROFIT() {
        return GOOGLE_RETROFIT;
    }

    public static final StringQualifier getKIKLIKO_RETROFIT() {
        return KIKLIKO_RETROFIT;
    }

    public static final StringQualifier getSERVER_RETROFIT() {
        return SERVER_RETROFIT;
    }

    public static final Module getNetworkModule() {
        return networkModule;
    }

    public static final Retrofit createRetrofit(OkHttpClient okHttpClient, String url, Gson gson) {
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Retrofit build = new Retrofit.Builder().baseUrl(url).client(okHttpClient).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create(gson)).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n        .baseU…e(gson))\n        .build()");
        return build;
    }

    public static final OkHttpClient createOkHttpClient(Cache cache, Interceptor... interceptors) {
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        OkHttpClient.Builder cache2 = new OkHttpClient.Builder().cache(cache);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder writeTimeout = cache2.readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit);
        for (Interceptor interceptor : interceptors) {
            writeTimeout.addInterceptor(interceptor);
        }
        if (FlipperManager.isFlipperEnabled()) {
            writeTimeout.addInterceptor(new FlipperOkhttpInterceptor(FlipperManager.INSTANCE.getNetworkFlipperPlugin(), null, 2, null));
        }
        return writeTimeout.build();
    }

    public static final OkHttpClient createTonConfigOkHttpClient() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Cache createCache(Scope scope) {
        return new Cache(new File(ModuleExtKt.androidContext(scope).getCacheDir(), "httpcache"), 209715200);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson createGson() {
        Gson create = new GsonBuilder().setPrettyPrinting().enableComplexMapKeySerialization().create();
        Intrinsics.checkNotNullExpressionValue(create, "GsonBuilder()\n        .s…ation()\n        .create()");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LoggingInterceptor createLoggingInterceptor() {
        LoggingInterceptor build = new LoggingInterceptor.Builder().loggable(false).setLevel(Level.BASIC).log(4).request("Request").response("Response").build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n        .logga…sponse\")\n        .build()");
        return build;
    }
}
