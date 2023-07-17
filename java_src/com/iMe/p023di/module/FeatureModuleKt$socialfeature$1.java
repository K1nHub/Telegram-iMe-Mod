package com.iMe.p023di.module;

import com.iMe.feature.profile.GroupMembershipUseCase;
import com.iMe.feature.profile.ProfileRepository;
import com.iMe.feature.socialMedias.SocialRepository;
import com.iMe.feature.socialMedias.SocialRepositoryImpl;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.feature.socialMedias.auth.AuthUseCase;
import com.iMe.feature.socialMedias.auth.AuthViewModel;
import com.iMe.feature.socialMedias.webScreen.SocialWebViewModel;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.storage.data.locale.p027db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.network.api.own.SocialApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: FeatureModule.kt */
/* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1 */
/* loaded from: classes3.dex */
final class FeatureModuleKt$socialfeature$1 extends Lambda implements Function1<Module, Unit> {
    public static final FeatureModuleKt$socialfeature$1 INSTANCE = new FeatureModuleKt$socialfeature$1();

    FeatureModuleKt$socialfeature$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12971 extends Lambda implements Function2<Scope, ParametersHolder, AuthViewModel> {
        public static final C12971 INSTANCE = new C12971();

        C12971() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AuthViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AuthViewModel((AuthUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(AuthUseCase.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1$2 */
    /* loaded from: classes3.dex */
    public static final class C12982 extends Lambda implements Function2<Scope, ParametersHolder, SocialWebViewModel> {
        public static final C12982 INSTANCE = new C12982();

        C12982() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SocialWebViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SocialWebViewModel((SocialUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null));
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
        C12971 c12971 = C12971.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(AuthViewModel.class), null, c12971, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C12982 c12982 = C12982.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(SocialWebViewModel.class), null, c12982, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        C12993 c12993 = C12993.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        Kind kind2 = Kind.Singleton;
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(SocialRepository.class), null, c12993, kind2, emptyList3));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C13004 c13004 = C13004.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(AuthUseCase.class), null, c13004, kind2, emptyList4));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C13015 c13015 = C13015.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, c13015, kind2, emptyList5));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C13026 c13026 = C13026.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(GroupMembershipUseCase.class), null, c13026, kind2, emptyList6));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13004 extends Lambda implements Function2<Scope, ParametersHolder, AuthUseCase> {
        public static final C13004 INSTANCE = new C13004();

        C13004() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AuthUseCase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AuthUseCase((SocialRepository) single.get(Reflection.getOrCreateKotlinClass(SocialRepository.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13015 extends Lambda implements Function2<Scope, ParametersHolder, SocialUseCase> {
        public static final C13015 INSTANCE = new C13015();

        C13015() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SocialUseCase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SocialUseCase((SocialRepository) single.get(Reflection.getOrCreateKotlinClass(SocialRepository.class), null, null), (ProfileRepository) single.get(Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, null), (WalletSessionRepository) single.get(Reflection.getOrCreateKotlinClass(WalletSessionRepository.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13026 extends Lambda implements Function2<Scope, ParametersHolder, GroupMembershipUseCase> {
        public static final C13026 INSTANCE = new C13026();

        C13026() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final GroupMembershipUseCase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new GroupMembershipUseCase((TelegramControllersGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$socialfeature$1$3 */
    /* loaded from: classes3.dex */
    public static final class C12993 extends Lambda implements Function2<Scope, ParametersHolder, SocialRepository> {
        public static final C12993 INSTANCE = new C12993();

        C12993() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SocialRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SocialRepositoryImpl((SocialApi) single.get(Reflection.getOrCreateKotlinClass(SocialApi.class), null, null), (ApiErrorHandler) single.get(Reflection.getOrCreateKotlinClass(ApiErrorHandler.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (SocialNetworkDao) single.get(Reflection.getOrCreateKotlinClass(SocialNetworkDao.class), null, null));
        }
    }
}
