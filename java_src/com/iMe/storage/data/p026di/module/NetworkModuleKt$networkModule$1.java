package com.iMe.storage.data.p026di.module;

import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.Gson;
import com.iMe.storage.common.AppConfiguration$Api;
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
import com.iMe.storage.data.network.api.own.SocialApi;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.api.own.TonApi;
import com.iMe.storage.data.network.api.own.TwitterApi;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.DbErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.iMe.storage.data.network.interceptor.ApiErrorInterceptor;
import com.iMe.storage.data.network.interceptor.DurationAnalyticsInterceptor;
import com.iMe.storage.data.network.interceptor.MetadataInterceptor;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.ihsanbal.logging.LoggingInterceptor;
import java.util.List;
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
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import retrofit2.Retrofit;
/* compiled from: NetworkModule.kt */
/* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1 */
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16691 extends Lambda implements Function2<Scope, ParametersHolder, Cache> {
        public static final C16691 INSTANCE = new C16691();

        C16691() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16802 extends Lambda implements Function2<Scope, ParametersHolder, Gson> {
        public static final C16802 INSTANCE = new C16802();

        C16802() {
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
        List emptyList41;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C16691 c16691 = C16691.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Cache.class), null, c16691, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C16802 c16802 = C16802.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(Gson.class), null, c16802, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        StringQualifier default_client = NetworkModuleKt.getDEFAULT_CLIENT();
        C16913 c16913 = C16913.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(OkHttpClient.class), default_client, c16913, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        StringQualifier server_client = NetworkModuleKt.getSERVER_CLIENT();
        C17024 c17024 = C17024.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(OkHttpClient.class), server_client, c17024, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        StringQualifier ton_config_client = NetworkModuleKt.getTON_CONFIG_CLIENT();
        C17055 c17055 = C17055.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(OkHttpClient.class), ton_config_client, c17055, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        StringQualifier logging_interceptor = NetworkModuleKt.getLOGGING_INTERCEPTOR();
        C17066 c17066 = C17066.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(Interceptor.class), logging_interceptor, c17066, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        StringQualifier metadata_interceptor = NetworkModuleKt.getMETADATA_INTERCEPTOR();
        C17077 c17077 = C17077.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(Interceptor.class), metadata_interceptor, c17077, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        StringQualifier duration_analytic_interceptor = NetworkModuleKt.getDURATION_ANALYTIC_INTERCEPTOR();
        C17088 c17088 = C17088.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(Interceptor.class), duration_analytic_interceptor, c17088, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        StringQualifier error_interceptor = NetworkModuleKt.getERROR_INTERCEPTOR();
        C17099 c17099 = C17099.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(Interceptor.class), error_interceptor, c17099, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        StringQualifier kikliko_retrofit = NetworkModuleKt.getKIKLIKO_RETROFIT();
        C167010 c167010 = C167010.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(Retrofit.class), kikliko_retrofit, c167010, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new KoinDefinition(module, singleInstanceFactory10);
        StringQualifier google_retrofit = NetworkModuleKt.getGOOGLE_RETROFIT();
        C167111 c167111 = C167111.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(Retrofit.class), google_retrofit, c167111, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new KoinDefinition(module, singleInstanceFactory11);
        StringQualifier server_retrofit = NetworkModuleKt.getSERVER_RETROFIT();
        C167212 c167212 = C167212.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(Retrofit.class), server_retrofit, c167212, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new KoinDefinition(module, singleInstanceFactory12);
        C167313 c167313 = C167313.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(SwapApi.class), null, c167313, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new KoinDefinition(module, singleInstanceFactory13);
        C167414 c167414 = C167414.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(PinCodeApi.class), null, c167414, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new KoinDefinition(module, singleInstanceFactory14);
        C167515 c167515 = C167515.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, c167515, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new KoinDefinition(module, singleInstanceFactory15);
        C167616 c167616 = C167616.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(PermissionApi.class), null, c167616, kind, emptyList16));
        module.indexPrimaryType(singleInstanceFactory16);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory16);
        }
        new KoinDefinition(module, singleInstanceFactory16);
        C167717 c167717 = C167717.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory17 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(SimplexApi.class), null, c167717, kind, emptyList17));
        module.indexPrimaryType(singleInstanceFactory17);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory17);
        }
        new KoinDefinition(module, singleInstanceFactory17);
        C167818 c167818 = C167818.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory18 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(CancelApi.class), null, c167818, kind, emptyList18));
        module.indexPrimaryType(singleInstanceFactory18);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory18);
        }
        new KoinDefinition(module, singleInstanceFactory18);
        C167919 c167919 = C167919.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory19 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(BoostApi.class), null, c167919, kind, emptyList19));
        module.indexPrimaryType(singleInstanceFactory19);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory19);
        }
        new KoinDefinition(module, singleInstanceFactory19);
        C168120 c168120 = C168120.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory20 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(AccountLevelApi.class), null, c168120, kind, emptyList20));
        module.indexPrimaryType(singleInstanceFactory20);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory20);
        }
        new KoinDefinition(module, singleInstanceFactory20);
        C168221 c168221 = C168221.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory21 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(BinanceInternalApi.class), null, c168221, kind, emptyList21));
        module.indexPrimaryType(singleInstanceFactory21);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory21);
        }
        new KoinDefinition(module, singleInstanceFactory21);
        C168322 c168322 = C168322.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory22 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(DonationsApi.class), null, c168322, kind, emptyList22));
        module.indexPrimaryType(singleInstanceFactory22);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory22);
        }
        new KoinDefinition(module, singleInstanceFactory22);
        C168423 c168423 = C168423.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory23 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletApi.class), null, c168423, kind, emptyList23));
        module.indexPrimaryType(singleInstanceFactory23);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory23);
        }
        new KoinDefinition(module, singleInstanceFactory23);
        C168524 c168524 = C168524.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory24 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(WalletConnectApi.class), null, c168524, kind, emptyList24));
        module.indexPrimaryType(singleInstanceFactory24);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory24);
        }
        new KoinDefinition(module, singleInstanceFactory24);
        C168625 c168625 = C168625.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory25 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(AirdropApi.class), null, c168625, kind, emptyList25));
        module.indexPrimaryType(singleInstanceFactory25);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory25);
        }
        new KoinDefinition(module, singleInstanceFactory25);
        C168726 c168726 = C168726.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory26 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(NftAvatarApi.class), null, c168726, kind, emptyList26));
        module.indexPrimaryType(singleInstanceFactory26);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory26);
        }
        new KoinDefinition(module, singleInstanceFactory26);
        C168827 c168827 = C168827.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory27 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(TonApi.class), null, c168827, kind, emptyList27));
        module.indexPrimaryType(singleInstanceFactory27);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory27);
        }
        new KoinDefinition(module, singleInstanceFactory27);
        C168928 c168928 = C168928.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory28 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(GoogleServicesApi.class), null, c168928, kind, emptyList28));
        module.indexPrimaryType(singleInstanceFactory28);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory28);
        }
        new KoinDefinition(module, singleInstanceFactory28);
        C169029 c169029 = C169029.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory29 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(PushNotificationApi.class), null, c169029, kind, emptyList29));
        module.indexPrimaryType(singleInstanceFactory29);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory29);
        }
        new KoinDefinition(module, singleInstanceFactory29);
        C169230 c169230 = C169230.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory30 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(ReactionApi.class), null, c169230, kind, emptyList30));
        module.indexPrimaryType(singleInstanceFactory30);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory30);
        }
        new KoinDefinition(module, singleInstanceFactory30);
        C169331 c169331 = C169331.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory31 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(RemoteConfigApi.class), null, c169331, kind, emptyList31));
        module.indexPrimaryType(singleInstanceFactory31);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory31);
        }
        new KoinDefinition(module, singleInstanceFactory31);
        C169432 c169432 = C169432.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory32 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(DynamicLinksApi.class), null, c169432, kind, emptyList32));
        module.indexPrimaryType(singleInstanceFactory32);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory32);
        }
        new KoinDefinition(module, singleInstanceFactory32);
        C169533 c169533 = C169533.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory33 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(KiklikoApi.class), null, c169533, kind, emptyList33));
        module.indexPrimaryType(singleInstanceFactory33);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory33);
        }
        new KoinDefinition(module, singleInstanceFactory33);
        C169634 c169634 = C169634.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory34 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(GoogleTranslationApi.class), null, c169634, kind, emptyList34));
        module.indexPrimaryType(singleInstanceFactory34);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory34);
        }
        new KoinDefinition(module, singleInstanceFactory34);
        C169735 c169735 = C169735.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory35 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(CatalogApi.class), null, c169735, kind, emptyList35));
        module.indexPrimaryType(singleInstanceFactory35);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory35);
        }
        new KoinDefinition(module, singleInstanceFactory35);
        C169836 c169836 = C169836.INSTANCE;
        StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
        emptyList36 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory36 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(TwitterApi.class), null, c169836, kind, emptyList36));
        module.indexPrimaryType(singleInstanceFactory36);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory36);
        }
        new KoinDefinition(module, singleInstanceFactory36);
        C169937 c169937 = C169937.INSTANCE;
        StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
        emptyList37 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory37 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(SocialApi.class), null, c169937, kind, emptyList37));
        module.indexPrimaryType(singleInstanceFactory37);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory37);
        }
        new KoinDefinition(module, singleInstanceFactory37);
        C170038 c170038 = C170038.INSTANCE;
        StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
        emptyList38 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory38 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, c170038, kind, emptyList38));
        module.indexPrimaryType(singleInstanceFactory38);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory38);
        }
        new KoinDefinition(module, singleInstanceFactory38);
        C170139 c170139 = C170139.INSTANCE;
        StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
        emptyList39 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory39 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(GoogleServicesErrorHandler.class), null, c170139, kind, emptyList39));
        module.indexPrimaryType(singleInstanceFactory39);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory39);
        }
        new KoinDefinition(module, singleInstanceFactory39);
        C170340 c170340 = C170340.INSTANCE;
        StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
        emptyList40 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory40 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, c170340, kind, emptyList40));
        module.indexPrimaryType(singleInstanceFactory40);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory40);
        }
        new KoinDefinition(module, singleInstanceFactory40);
        C170441 c170441 = C170441.INSTANCE;
        StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
        emptyList41 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory41 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(DbErrorHandler.class), null, c170441, kind, emptyList41));
        module.indexPrimaryType(singleInstanceFactory41);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory41);
        }
        new KoinDefinition(module, singleInstanceFactory41);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C17055 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C17055 INSTANCE = new C17055();

        C17055() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C17066 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C17066 INSTANCE = new C17066();

        C17066() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C17077 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C17077 INSTANCE = new C17077();

        C17077() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C17088 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C17088 INSTANCE = new C17088();

        C17088() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C17099 extends Lambda implements Function2<Scope, ParametersHolder, Interceptor> {
        public static final C17099 INSTANCE = new C17099();

        C17099() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C167010 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C167010 INSTANCE = new C167010();

        C167010() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Retrofit invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), NetworkModuleKt.getDEFAULT_CLIENT(), null), "https://api.kikliko.com/api/v1/bab6wg08TpiadT2UhFSme8feAbbMX017dFEbi6xVpvK7DuvZFuFLwPtVIU6uxNI1/", (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C167111 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C167111 INSTANCE = new C167111();

        C167111() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C167212 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C167212 INSTANCE = new C167212();

        C167212() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C167313 extends Lambda implements Function2<Scope, ParametersHolder, SwapApi> {
        public static final C167313 INSTANCE = new C167313();

        C167313() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C167414 extends Lambda implements Function2<Scope, ParametersHolder, PinCodeApi> {
        public static final C167414 INSTANCE = new C167414();

        C167414() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C167515 extends Lambda implements Function2<Scope, ParametersHolder, CryptoWalletApi> {
        public static final C167515 INSTANCE = new C167515();

        C167515() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C167616 extends Lambda implements Function2<Scope, ParametersHolder, PermissionApi> {
        public static final C167616 INSTANCE = new C167616();

        C167616() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C167717 extends Lambda implements Function2<Scope, ParametersHolder, SimplexApi> {
        public static final C167717 INSTANCE = new C167717();

        C167717() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C167818 extends Lambda implements Function2<Scope, ParametersHolder, CancelApi> {
        public static final C167818 INSTANCE = new C167818();

        C167818() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C167919 extends Lambda implements Function2<Scope, ParametersHolder, BoostApi> {
        public static final C167919 INSTANCE = new C167919();

        C167919() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C168120 extends Lambda implements Function2<Scope, ParametersHolder, AccountLevelApi> {
        public static final C168120 INSTANCE = new C168120();

        C168120() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C168221 extends Lambda implements Function2<Scope, ParametersHolder, BinanceInternalApi> {
        public static final C168221 INSTANCE = new C168221();

        C168221() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C168322 extends Lambda implements Function2<Scope, ParametersHolder, DonationsApi> {
        public static final C168322 INSTANCE = new C168322();

        C168322() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C168423 extends Lambda implements Function2<Scope, ParametersHolder, WalletApi> {
        public static final C168423 INSTANCE = new C168423();

        C168423() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C168524 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectApi> {
        public static final C168524 INSTANCE = new C168524();

        C168524() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C168625 extends Lambda implements Function2<Scope, ParametersHolder, AirdropApi> {
        public static final C168625 INSTANCE = new C168625();

        C168625() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C168726 extends Lambda implements Function2<Scope, ParametersHolder, NftAvatarApi> {
        public static final C168726 INSTANCE = new C168726();

        C168726() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C168827 extends Lambda implements Function2<Scope, ParametersHolder, TonApi> {
        public static final C168827 INSTANCE = new C168827();

        C168827() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C168928 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesApi> {
        public static final C168928 INSTANCE = new C168928();

        C168928() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C169029 extends Lambda implements Function2<Scope, ParametersHolder, PushNotificationApi> {
        public static final C169029 INSTANCE = new C169029();

        C169029() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C169230 extends Lambda implements Function2<Scope, ParametersHolder, ReactionApi> {
        public static final C169230 INSTANCE = new C169230();

        C169230() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C169331 extends Lambda implements Function2<Scope, ParametersHolder, RemoteConfigApi> {
        public static final C169331 INSTANCE = new C169331();

        C169331() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C169432 extends Lambda implements Function2<Scope, ParametersHolder, DynamicLinksApi> {
        public static final C169432 INSTANCE = new C169432();

        C169432() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C169533 extends Lambda implements Function2<Scope, ParametersHolder, KiklikoApi> {
        public static final C169533 INSTANCE = new C169533();

        C169533() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C169634 extends Lambda implements Function2<Scope, ParametersHolder, GoogleTranslationApi> {
        public static final C169634 INSTANCE = new C169634();

        C169634() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C169735 extends Lambda implements Function2<Scope, ParametersHolder, CatalogApi> {
        public static final C169735 INSTANCE = new C169735();

        C169735() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$36 */
    /* loaded from: classes3.dex */
    public static final class C169836 extends Lambda implements Function2<Scope, ParametersHolder, TwitterApi> {
        public static final C169836 INSTANCE = new C169836();

        C169836() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$37 */
    /* loaded from: classes3.dex */
    public static final class C169937 extends Lambda implements Function2<Scope, ParametersHolder, SocialApi> {
        public static final C169937 INSTANCE = new C169937();

        C169937() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SocialApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), NetworkModuleKt.getSERVER_RETROFIT(), null)).create(SocialApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(SERVER_RET…te(SocialApi::class.java)");
            return (SocialApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$38 */
    /* loaded from: classes3.dex */
    public static final class C170038 extends Lambda implements Function2<Scope, ParametersHolder, ApiErrorHandler> {
        public static final C170038 INSTANCE = new C170038();

        C170038() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$39 */
    /* loaded from: classes3.dex */
    public static final class C170139 extends Lambda implements Function2<Scope, ParametersHolder, GoogleServicesErrorHandler> {
        public static final C170139 INSTANCE = new C170139();

        C170139() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$40 */
    /* loaded from: classes3.dex */
    public static final class C170340 extends Lambda implements Function2<Scope, ParametersHolder, FirebaseFunctionsErrorHandler> {
        public static final C170340 INSTANCE = new C170340();

        C170340() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$41 */
    /* loaded from: classes3.dex */
    public static final class C170441 extends Lambda implements Function2<Scope, ParametersHolder, DbErrorHandler> {
        public static final C170441 INSTANCE = new C170441();

        C170441() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16913 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C16913 INSTANCE = new C16913();

        C16913() {
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
    /* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt$networkModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C17024 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C17024 INSTANCE = new C17024();

        C17024() {
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
