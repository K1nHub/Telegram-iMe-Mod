package com.iMe.p023di.module;

import com.iMe.feature.devTools.DevToolRepository;
import com.iMe.feature.devTools.DevUseCase;
import com.iMe.feature.devTools.DevViewModel;
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
import org.koin.core.module.dsl.OptionDSLKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: FeatureModule.kt */
/* renamed from: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1 */
/* loaded from: classes3.dex */
final class FeatureModuleKt$devToolsFeature$1 extends Lambda implements Function1<Module, Unit> {
    public static final FeatureModuleKt$devToolsFeature$1 INSTANCE = new FeatureModuleKt$devToolsFeature$1();

    FeatureModuleKt$devToolsFeature$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12931 extends Lambda implements Function2<Scope, ParametersHolder, DevViewModel> {
        public static final C12931 INSTANCE = new C12931();

        C12931() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DevViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DevViewModel((DevUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(DevUseCase.class), null, null));
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C12931 c12931 = C12931.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(DevViewModel.class), null, c12931, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C1292xe4c75efa c1292xe4c75efa = new C1292xe4c75efa();
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        Kind kind2 = Kind.Singleton;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(DevToolRepository.class), null, c1292xe4c75efa, kind2, emptyList2));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        OptionDSLKt.onOptions(new KoinDefinition(module, singleInstanceFactory), null);
        C12943 c12943 = C12943.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(DevUseCase.class), null, c12943, kind2, emptyList3));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeatureModule.kt */
    /* renamed from: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1$3 */
    /* loaded from: classes3.dex */
    public static final class C12943 extends Lambda implements Function2<Scope, ParametersHolder, DevUseCase> {
        public static final C12943 INSTANCE = new C12943();

        C12943() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DevUseCase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DevUseCase((DevToolRepository) single.get(Reflection.getOrCreateKotlinClass(DevToolRepository.class), null, null));
        }
    }
}
