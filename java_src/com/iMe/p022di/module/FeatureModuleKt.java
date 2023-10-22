package com.iMe.p022di.module;

import com.iMe.feature.devTools.DevToolRepository;
import com.iMe.feature.devTools.DevUseCase;
import com.iMe.feature.devTools.DevViewModel;
import com.iMe.feature.profile.GroupMembershipUseCase;
import com.iMe.feature.profile.ProfileRepository;
import com.iMe.feature.profile.ProfileRepositoryImpl;
import com.iMe.feature.profile.ProfileUseCase;
import com.iMe.feature.socialMedias.SocialRepository;
import com.iMe.feature.socialMedias.SocialRepositoryImpl;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.feature.socialMedias.auth.AuthUseCase;
import com.iMe.feature.socialMedias.auth.AuthViewModel;
import com.iMe.feature.socialMedias.webScreen.SocialWebViewModel;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.network.api.own.SocialApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.repository.wallet.SessionRepository;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.module.dsl.OptionDSLKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: FeatureModule.kt */
/* renamed from: com.iMe.di.module.FeatureModuleKt */
/* loaded from: classes3.dex */
public final class FeatureModuleKt {
    private static Module devToolsFeature = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1
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
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C11871 c11871 = new Function2<Scope, ParametersHolder, DevViewModel>() { // from class: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1.1
                @Override // kotlin.jvm.functions.Function2
                public final DevViewModel invoke(Scope viewModel, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DevViewModel((DevUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(DevUseCase.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(DevViewModel.class), null, c11871, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            Function2<Scope, ParametersHolder, DevToolRepository> function2 = new Function2<Scope, ParametersHolder, DevToolRepository>() { // from class: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1$invoke$$inlined$singleOf$default$1
                @Override // kotlin.jvm.functions.Function2
                public final DevToolRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DevToolRepository();
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            Kind kind2 = Kind.Singleton;
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(DevToolRepository.class), null, function2, kind2, emptyList2));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            OptionDSLKt.onOptions(new KoinDefinition(module, singleInstanceFactory), null);
            C11883 c11883 = new Function2<Scope, ParametersHolder, DevUseCase>() { // from class: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1.3
                @Override // kotlin.jvm.functions.Function2
                public final DevUseCase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DevUseCase((DevToolRepository) single.get(Reflection.getOrCreateKotlinClass(DevToolRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(DevUseCase.class), null, c11883, kind2, emptyList3));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
        }
    }, 1, null);
    private static Module socialfeature = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1
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
            C11911 c11911 = new Function2<Scope, ParametersHolder, AuthViewModel>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1.1
                @Override // kotlin.jvm.functions.Function2
                public final AuthViewModel invoke(Scope viewModel, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AuthViewModel((AuthUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(AuthUseCase.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(AuthViewModel.class), null, c11911, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            C11922 c11922 = new Function2<Scope, ParametersHolder, SocialWebViewModel>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1.2
                @Override // kotlin.jvm.functions.Function2
                public final SocialWebViewModel invoke(Scope viewModel, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SocialWebViewModel((SocialUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(SocialWebViewModel.class), null, c11922, kind, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            C11933 c11933 = new Function2<Scope, ParametersHolder, SocialRepository>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1.3
                @Override // kotlin.jvm.functions.Function2
                public final SocialRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SocialRepositoryImpl((SocialApi) single.get(Reflection.getOrCreateKotlinClass(SocialApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (SocialNetworkDao) single.get(Reflection.getOrCreateKotlinClass(SocialNetworkDao.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            Kind kind2 = Kind.Singleton;
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(SocialRepository.class), null, c11933, kind2, emptyList3));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C11944 c11944 = new Function2<Scope, ParametersHolder, AuthUseCase>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1.4
                @Override // kotlin.jvm.functions.Function2
                public final AuthUseCase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AuthUseCase((SocialRepository) single.get(Reflection.getOrCreateKotlinClass(SocialRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(AuthUseCase.class), null, c11944, kind2, emptyList4));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C11955 c11955 = new Function2<Scope, ParametersHolder, SocialUseCase>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1.5
                @Override // kotlin.jvm.functions.Function2
                public final SocialUseCase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SocialUseCase((SocialRepository) single.get(Reflection.getOrCreateKotlinClass(SocialRepository.class), null, null), (ProfileRepository) single.get(Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, null), (SessionRepository) single.get(Reflection.getOrCreateKotlinClass(SessionRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, c11955, kind2, emptyList5));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C11966 c11966 = new Function2<Scope, ParametersHolder, GroupMembershipUseCase>() { // from class: com.iMe.di.module.FeatureModuleKt$socialfeature$1.6
                @Override // kotlin.jvm.functions.Function2
                public final GroupMembershipUseCase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new GroupMembershipUseCase((TelegramControllersGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(GroupMembershipUseCase.class), null, c11966, kind2, emptyList6));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
        }
    }, 1, null);
    private static Module profileFeature = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.FeatureModuleKt$profileFeature$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Module module) {
            invoke2(module);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Module module) {
            List emptyList;
            List emptyList2;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C11891 c11891 = new Function2<Scope, ParametersHolder, ProfileRepository>() { // from class: com.iMe.di.module.FeatureModuleKt$profileFeature$1.1
                @Override // kotlin.jvm.functions.Function2
                public final ProfileRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ProfileRepositoryImpl((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, c11891, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C11902 c11902 = new Function2<Scope, ParametersHolder, ProfileUseCase>() { // from class: com.iMe.di.module.FeatureModuleKt$profileFeature$1.2
                @Override // kotlin.jvm.functions.Function2
                public final ProfileUseCase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ProfileUseCase((ProfileRepository) single.get(Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(ProfileUseCase.class), null, c11902, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
        }
    }, 1, null);

    public static final Module getDevToolsFeature() {
        return devToolsFeature;
    }

    public static final Module getSocialfeature() {
        return socialfeature;
    }

    public static final Module getProfileFeature() {
        return profileFeature;
    }
}
