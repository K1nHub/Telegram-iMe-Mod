package com.iMe.i_staking.p025di;

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
import com.iMe.storage.data.p026di.module.NetworkModuleKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
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
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
import retrofit2.Retrofit;
/* compiled from: StakingModule.kt */
/* renamed from: com.iMe.i_staking.di.StakingModuleKt */
/* loaded from: classes3.dex */
public final class StakingModuleKt {
    private static final StringQualifier STAKING_RETROFIT = QualifierKt.named("STAKING_RETROFIT");
    private static final StringQualifier STAKING_CLIENT = QualifierKt.named("STAKING_CLIENT");
    private static Module stakingModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1
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
            Intrinsics.checkNotNullParameter(module, "$this$module");
            StringQualifier staking_retrofit = StakingModuleKt.getSTAKING_RETROFIT();
            C15821 c15821 = new Function2<Scope, ParametersHolder, Retrofit>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final Retrofit invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createRetrofit((OkHttpClient) single.get(Reflection.getOrCreateKotlinClass(OkHttpClient.class), StakingModuleKt.getSTAKING_CLIENT(), null), AppConfiguration$Api.INSTANCE.getServerUrl(), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Retrofit.class), staking_retrofit, c15821, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            StringQualifier staking_client = StakingModuleKt.getSTAKING_CLIENT();
            C15832 c15832 = new Function2<Scope, ParametersHolder, OkHttpClient>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final OkHttpClient invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return NetworkModuleKt.createOkHttpClient((Cache) single.get(Reflection.getOrCreateKotlinClass(Cache.class), null, null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getDURATION_ANALYTIC_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getMETADATA_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getLOGGING_INTERCEPTOR(), null), (Interceptor) single.get(Reflection.getOrCreateKotlinClass(Interceptor.class), NetworkModuleKt.getERROR_INTERCEPTOR(), null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(OkHttpClient.class), staking_client, c15832, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C15843 c15843 = new Function2<Scope, ParametersHolder, StakingApi>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final StakingApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object create = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), StakingModuleKt.getSTAKING_RETROFIT(), null)).create(StakingApi.class);
                    Intrinsics.checkNotNullExpressionValue(create, "get<Retrofit>(STAKING_RE…e(StakingApi::class.java)");
                    return (StakingApi) create;
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(StakingApi.class), null, c15843, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C15854 c15854 = new Function2<Scope, ParametersHolder, StakingDataSource>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final StakingDataSource invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingDataSourceImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (StakingApi) single.get(Reflection.getOrCreateKotlinClass(StakingApi.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(StakingDataSource.class), null, c15854, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            C15865 c15865 = new Function2<Scope, ParametersHolder, StakingRepository>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final StakingRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingRepositoryImpl((ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (StakingApi) single.get(Reflection.getOrCreateKotlinClass(StakingApi.class), null, null), (StakingDataSource) single.get(Reflection.getOrCreateKotlinClass(StakingDataSource.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(StakingRepository.class), null, c15865, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
            C15876 c15876 = new Function2<Scope, ParametersHolder, StakingInteractor>() { // from class: com.iMe.i_staking.di.StakingModuleKt$stakingModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final StakingInteractor invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingInteractor((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingRepository) single.get(Reflection.getOrCreateKotlinClass(StakingRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, c15876, kind, emptyList6));
            module.indexPrimaryType(singleInstanceFactory6);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory6);
            }
            new KoinDefinition(module, singleInstanceFactory6);
        }
    }, 1, null);

    public static final StringQualifier getSTAKING_RETROFIT() {
        return STAKING_RETROFIT;
    }

    public static final StringQualifier getSTAKING_CLIENT() {
        return STAKING_CLIENT;
    }

    public static final Module getStakingModule() {
        return stakingModule;
    }
}
