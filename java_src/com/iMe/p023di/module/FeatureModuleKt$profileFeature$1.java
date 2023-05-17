package com.iMe.p023di.module;

import com.iMe.feature.profile.ProfileRepository;
import com.iMe.feature.profile.ProfileRepositoryImpl;
import com.iMe.feature.profile.ProfileUseCase;
import com.iMe.storage.domain.gateway.TelegramGateway;
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
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: FeatureModule.kt */
/* renamed from: com.iMe.di.module.FeatureModuleKt$profileFeature$1 */
/* loaded from: classes3.dex */
final class FeatureModuleKt$profileFeature$1 extends Lambda implements Function1<Module, Unit> {
    public static final FeatureModuleKt$profileFeature$1 INSTANCE = new FeatureModuleKt$profileFeature$1();

    FeatureModuleKt$profileFeature$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$profileFeature$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12891 extends Lambda implements Function2<Scope, ParametersHolder, ProfileRepository> {
        public static final C12891 INSTANCE = new C12891();

        C12891() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ProfileRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ProfileRepositoryImpl((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$profileFeature$1$2 */
    /* loaded from: classes3.dex */
    public static final class C12902 extends Lambda implements Function2<Scope, ParametersHolder, ProfileUseCase> {
        public static final C12902 INSTANCE = new C12902();

        C12902() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ProfileUseCase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ProfileUseCase((ProfileRepository) single.get(Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, null));
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Module module) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C12891 c12891 = C12891.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, c12891, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C12902 c12902 = C12902.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(ProfileUseCase.class), null, c12902, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
    }
}
