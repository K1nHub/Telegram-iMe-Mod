package com.iMe.i_staking.p026di;

import com.google.gson.Gson;
import com.iMe.i_staking.StakingApi;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.i_staking.datasource.StakingDataSource;
import com.iMe.i_staking.datasource.StakingDataSourceImpl;
import com.iMe.i_staking.repository.StakingRepository;
import com.iMe.i_staking.repository.StakingRepositoryImpl;
import com.iMe.storage.common.AppConfiguration$Api;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.p027di.module.NetworkModuleKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
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
/* compiled from: StakingModule.kt */
/* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1 */
/* loaded from: classes3.dex */
final class StakingModuleKt$stakingModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final StakingModuleKt$stakingModule$1 INSTANCE = new StakingModuleKt$stakingModule$1();

    StakingModuleKt$stakingModule$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingModule.kt */
    /* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15011 extends Lambda implements Function2<Scope, ParametersHolder, Retrofit> {
        public static final C15011 INSTANCE = new C15011();

        C15011() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Retrofit invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), StakingModuleKt.getSTAKING_CLIENT(), null), AppConfiguration$Api.INSTANCE.getServerUrl(), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        StringQualifier staking_retrofit = StakingModuleKt.getSTAKING_RETROFIT();
        C15011 c15011 = C15011.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Retrofit.class), staking_retrofit, c15011, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        StringQualifier staking_client = StakingModuleKt.getSTAKING_CLIENT();
        C15022 c15022 = C15022.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(OkHttpClient.class), staking_client, c15022, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C15033 c15033 = C15033.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(StakingApi.class), null, c15033, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C15044 c15044 = C15044.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(StakingDataSource.class), null, c15044, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C15055 c15055 = C15055.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(StakingRepository.class), null, c15055, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C15066 c15066 = C15066.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, c15066, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingModule.kt */
    /* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C15033 extends Lambda implements Function2<Scope, ParametersHolder, StakingApi> {
        public static final C15033 INSTANCE = new C15033();

        C15033() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), StakingModuleKt.getSTAKING_RETROFIT(), null)).create(StakingApi.class);
            Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(STAKING_RE…e(StakingApi::class.java)");
            return (StakingApi) create;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingModule.kt */
    /* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C15044 extends Lambda implements Function2<Scope, ParametersHolder, StakingDataSource> {
        public static final C15044 INSTANCE = new C15044();

        C15044() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingDataSourceImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (StakingApi) single.get(Reflection.getOrCreateKotlinClass(StakingApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingModule.kt */
    /* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C15055 extends Lambda implements Function2<Scope, ParametersHolder, StakingRepository> {
        public static final C15055 INSTANCE = new C15055();

        C15055() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (StakingApi) single.get(Reflection.getOrCreateKotlinClass(StakingApi.class), null, null), (StakingDataSource) single.get(Reflection.getOrCreateKotlinClass(StakingDataSource.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingModule.kt */
    /* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C15066 extends Lambda implements Function2<Scope, ParametersHolder, StakingInteractor> {
        public static final C15066 INSTANCE = new C15066();

        C15066() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingInteractor invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingInteractor((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingRepository) single.get(Reflection.getOrCreateKotlinClass(StakingRepository.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingModule.kt */
    /* renamed from: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C15022 extends Lambda implements Function2<Scope, ParametersHolder, OkHttpClient> {
        public static final C15022 INSTANCE = new C15022();

        C15022() {
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
