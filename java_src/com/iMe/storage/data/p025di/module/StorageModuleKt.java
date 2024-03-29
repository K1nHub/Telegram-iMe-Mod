package com.iMe.storage.data.p025di.module;

import com.google.gson.Gson;
import com.iMe.storage.data.locale.prefs.impl.AnalyticsPreference;
import com.iMe.storage.data.locale.prefs.impl.AppPreference;
import com.iMe.storage.data.locale.prefs.impl.CryptoPreference;
import com.iMe.storage.data.locale.prefs.impl.HintsPreference;
import com.iMe.storage.data.locale.prefs.impl.TwitterPreference;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.storage.AnalyticsPreferenceHelper;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
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
import org.koin.dsl.ModuleDSLKt;
/* compiled from: StorageModule.kt */
/* renamed from: com.iMe.storage.data.di.module.StorageModuleKt */
/* loaded from: classes3.dex */
public final class StorageModuleKt {
    private static Module dataStorageModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1
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
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C16801 c16801 = new Function2<Scope, ParametersHolder, PreferenceHelper>() { // from class: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final PreferenceHelper invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AppPreference((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), ModuleExtKt.androidContext(single), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, c16801, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C16812 c16812 = new Function2<Scope, ParametersHolder, CryptoPreferenceHelper>() { // from class: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final CryptoPreferenceHelper invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoPreference(ModuleExtKt.androidContext(single), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, c16812, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C16823 c16823 = new Function2<Scope, ParametersHolder, HintsPreferenceHelper>() { // from class: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final HintsPreferenceHelper invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new HintsPreference(ModuleExtKt.androidContext(single), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, c16823, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C16834 c16834 = new Function2<Scope, ParametersHolder, TwitterPreferenceHelper>() { // from class: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final TwitterPreferenceHelper invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TwitterPreference(ModuleExtKt.androidContext(single), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, c16834, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            C16845 c16845 = new Function2<Scope, ParametersHolder, AnalyticsPreferenceHelper>() { // from class: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final AnalyticsPreferenceHelper invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AnalyticsPreference((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), ModuleExtKt.androidContext(single));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(AnalyticsPreferenceHelper.class), null, c16845, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
        }
    }, 1, null);

    public static final Module getDataStorageModule() {
        return dataStorageModule;
    }
}
