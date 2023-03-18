package com.smedialink.storage.data.p026di.module;

import com.smedialink.storage.data.utils.p028rx.AppSchedulers;
import com.smedialink.storage.data.utils.system.AndroidResourceManager;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
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
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: UtilsModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.UtilsModuleKt$dataUtilsModule$1 */
/* loaded from: classes3.dex */
final class UtilsModuleKt$dataUtilsModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final UtilsModuleKt$dataUtilsModule$1 INSTANCE = new UtilsModuleKt$dataUtilsModule$1();

    UtilsModuleKt$dataUtilsModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UtilsModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.UtilsModuleKt$dataUtilsModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16121 extends Lambda implements Function2<Scope, ParametersHolder, ResourceManager> {
        public static final C16121 INSTANCE = new C16121();

        C16121() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ResourceManager invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AndroidResourceManager(ModuleExtKt.androidContext(single), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UtilsModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.UtilsModuleKt$dataUtilsModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16132 extends Lambda implements Function2<Scope, ParametersHolder, SchedulersProvider> {
        public static final C16132 INSTANCE = new C16132();

        C16132() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SchedulersProvider invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AppSchedulers();
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Module module) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C16121 c16121 = C16121.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(ResourceManager.class), null, c16121, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C16132 c16132 = C16132.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        Kind kind2 = Kind.Factory;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, c16132, kind2, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
    }
}
