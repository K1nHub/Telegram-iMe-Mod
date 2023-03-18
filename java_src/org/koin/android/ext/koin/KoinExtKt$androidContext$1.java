package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.DefinitionBindingKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KoinExt.kt */
/* loaded from: classes4.dex */
public final class KoinExtKt$androidContext$1 extends Lambda implements Function1<Module, Unit> {
    final /* synthetic */ Context $androidContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KoinExtKt$androidContext$1(Context context) {
        super(1);
        this.$androidContext = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KoinExt.kt */
    /* renamed from: org.koin.android.ext.koin.KoinExtKt$androidContext$1$1 */
    /* loaded from: classes4.dex */
    public static final class C31781 extends Lambda implements Function2<Scope, ParametersHolder, Application> {
        final /* synthetic */ Context $androidContext;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C31781(Context context) {
            super(2);
            this.$androidContext = context;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Application invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (Application) this.$androidContext;
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C31781 c31781 = new C31781(this.$androidContext);
        StringQualifier rootScopeQualifier = ScopeRegistry.Companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(Application.class), null, c31781, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        DefinitionBindingKt.binds(new Pair(module, singleInstanceFactory), new KClass[]{Reflection.getOrCreateKotlinClass(Context.class), Reflection.getOrCreateKotlinClass(Application.class)});
    }
}
