package com.iMe.p023di.module;

import com.iMe.gateway.impl.ActionGatewayImpl;
import com.iMe.storage.domain.gateway.ActionGateway;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.validator.wallet.CustomPriceValidator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.koin.ModuleExtKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: UtilsModule.kt */
/* renamed from: com.iMe.di.module.UtilsModuleKt$presentationUtilsModule$1 */
/* loaded from: classes3.dex */
final class UtilsModuleKt$presentationUtilsModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final UtilsModuleKt$presentationUtilsModule$1 INSTANCE = new UtilsModuleKt$presentationUtilsModule$1();

    UtilsModuleKt$presentationUtilsModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UtilsModule.kt */
    /* renamed from: com.iMe.di.module.UtilsModuleKt$presentationUtilsModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C14311 extends Lambda implements Function2<Scope, ParametersHolder, RxEventBus> {
        public static final C14311 INSTANCE = new C14311();

        C14311() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final RxEventBus invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new RxEventBus((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UtilsModule.kt */
    /* renamed from: com.iMe.di.module.UtilsModuleKt$presentationUtilsModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C14322 extends Lambda implements Function2<Scope, ParametersHolder, ActionGateway> {
        public static final C14322 INSTANCE = new C14322();

        C14322() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ActionGateway invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ActionGatewayImpl(ModuleExtKt.androidContext(single));
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Module module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C14311 c14311 = C14311.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(RxEventBus.class), null, c14311, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C14322 c14322 = C14322.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(ActionGateway.class), null, c14322, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C14333 c14333 = C14333.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CustomPriceValidator.class), null, c14333, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UtilsModule.kt */
    /* renamed from: com.iMe.di.module.UtilsModuleKt$presentationUtilsModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C14333 extends Lambda implements Function2<Scope, ParametersHolder, CustomPriceValidator> {
        public static final C14333 INSTANCE = new C14333();

        C14333() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CustomPriceValidator invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CustomPriceValidator((ResourceManager) single.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }
}
