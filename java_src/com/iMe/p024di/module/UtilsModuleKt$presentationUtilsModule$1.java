package com.iMe.p024di.module;

import com.iMe.gateway.impl.ActionGatewayImpl;
import com.iMe.storage.domain.gateway.ActionGateway;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.validator.wallet.CustomPriceValidator;
import java.util.List;
import kotlin.Pair;
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
    public static final class C14201 extends Lambda implements Function2<Scope, ParametersHolder, RxEventBus> {
        public static final C14201 INSTANCE = new C14201();

        C14201() {
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
    public static final class C14212 extends Lambda implements Function2<Scope, ParametersHolder, ActionGateway> {
        public static final C14212 INSTANCE = new C14212();

        C14212() {
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
        C14201 c14201 = C14201.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(RxEventBus.class), null, c14201, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C14212 c14212 = C14212.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(ActionGateway.class), null, c14212, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C14223 c14223 = C14223.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(CustomPriceValidator.class), null, c14223, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UtilsModule.kt */
    /* renamed from: com.iMe.di.module.UtilsModuleKt$presentationUtilsModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C14223 extends Lambda implements Function2<Scope, ParametersHolder, CustomPriceValidator> {
        public static final C14223 INSTANCE = new C14223();

        C14223() {
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
