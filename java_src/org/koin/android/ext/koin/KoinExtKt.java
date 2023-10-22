package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.android.logger.AndroidLogger;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.DefinitionBindingKt;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: KoinExt.kt */
/* loaded from: classes4.dex */
public final class KoinExtKt {
    public static /* synthetic */ KoinApplication androidLogger$default(KoinApplication koinApplication, Level level, int i, Object obj) {
        if ((i & 1) != 0) {
            level = Level.INFO;
        }
        return androidLogger(koinApplication, level);
    }

    public static final KoinApplication androidLogger(KoinApplication koinApplication, Level level) {
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(level, "level");
        koinApplication.getKoin().setupLogger(new AndroidLogger(level));
        return koinApplication;
    }

    public static final KoinApplication androidContext(KoinApplication koinApplication, final Context androidContext) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(androidContext, "androidContext");
        Logger logger = koinApplication.getKoin().getLogger();
        Level level = Level.INFO;
        if (logger.isAt(level)) {
            Logger logger2 = koinApplication.getKoin().getLogger();
            if (logger2.isAt(level)) {
                logger2.display(level, "[init] declare Android Context");
            }
        }
        if (androidContext instanceof Application) {
            Koin koin = koinApplication.getKoin();
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: org.koin.android.ext.koin.KoinExtKt$androidContext$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Module module) {
                    invoke2(module);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Module module) {
                    List emptyList;
                    Intrinsics.checkNotNullParameter(module, "$this$module");
                    final Context context = androidContext;
                    Function2<Scope, ParametersHolder, Application> function2 = new Function2<Scope, ParametersHolder, Application>() { // from class: org.koin.android.ext.koin.KoinExtKt$androidContext$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Application invoke(Scope single, ParametersHolder it) {
                            Intrinsics.checkNotNullParameter(single, "$this$single");
                            Intrinsics.checkNotNullParameter(it, "it");
                            return (Application) context;
                        }
                    };
                    StringQualifier rootScopeQualifier = ScopeRegistry.Companion.getRootScopeQualifier();
                    Kind kind = Kind.Singleton;
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Application.class), null, function2, kind, emptyList));
                    module.indexPrimaryType(singleInstanceFactory);
                    if (module.get_createdAtStart()) {
                        module.prepareForCreationAtStart(singleInstanceFactory);
                    }
                    DefinitionBindingKt.binds(new KoinDefinition(module, singleInstanceFactory), new KClass[]{Reflection.getOrCreateKotlinClass(Context.class), Reflection.getOrCreateKotlinClass(Application.class)});
                }
            }, 1, null));
            Koin.loadModules$default(koin, listOf2, false, 2, null);
        } else {
            Koin koin2 = koinApplication.getKoin();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: org.koin.android.ext.koin.KoinExtKt$androidContext$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Module module) {
                    invoke2(module);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Module module) {
                    List emptyList;
                    Intrinsics.checkNotNullParameter(module, "$this$module");
                    final Context context = androidContext;
                    Function2<Scope, ParametersHolder, Context> function2 = new Function2<Scope, ParametersHolder, Context>() { // from class: org.koin.android.ext.koin.KoinExtKt$androidContext$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Context invoke(Scope single, ParametersHolder it) {
                            Intrinsics.checkNotNullParameter(single, "$this$single");
                            Intrinsics.checkNotNullParameter(it, "it");
                            return context;
                        }
                    };
                    StringQualifier rootScopeQualifier = ScopeRegistry.Companion.getRootScopeQualifier();
                    Kind kind = Kind.Singleton;
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Context.class), null, function2, kind, emptyList));
                    module.indexPrimaryType(singleInstanceFactory);
                    if (module.get_createdAtStart()) {
                        module.prepareForCreationAtStart(singleInstanceFactory);
                    }
                    new KoinDefinition(module, singleInstanceFactory);
                }
            }, 1, null));
            Koin.loadModules$default(koin2, listOf, false, 2, null);
        }
        return koinApplication;
    }
}
