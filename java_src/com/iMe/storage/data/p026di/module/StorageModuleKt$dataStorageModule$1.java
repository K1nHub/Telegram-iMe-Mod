package com.iMe.storage.data.p026di.module;

import com.google.gson.Gson;
import com.iMe.storage.data.locale.prefs.impl.AppPreference;
import com.iMe.storage.data.locale.prefs.impl.CryptoPreference;
import com.iMe.storage.data.locale.prefs.impl.HintsPreference;
import com.iMe.storage.data.locale.prefs.impl.TwitterPreference;
import com.iMe.storage.domain.gateway.TelegramGateway;
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
/* compiled from: StorageModule.kt */
/* renamed from: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1 */
/* loaded from: classes3.dex */
final class StorageModuleKt$dataStorageModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final StorageModuleKt$dataStorageModule$1 INSTANCE = new StorageModuleKt$dataStorageModule$1();

    StorageModuleKt$dataStorageModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StorageModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16601 extends Lambda implements Function2<Scope, ParametersHolder, PreferenceHelper> {
        public static final C16601 INSTANCE = new C16601();

        C16601() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PreferenceHelper invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AppPreference((TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), ModuleExtKt.androidContext(single), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
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
        List emptyList4;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C16601 c16601 = C16601.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, c16601, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C16612 c16612 = C16612.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, c16612, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C16623 c16623 = C16623.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, c16623, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C16634 c16634 = C16634.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, c16634, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StorageModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16612 extends Lambda implements Function2<Scope, ParametersHolder, CryptoPreferenceHelper> {
        public static final C16612 INSTANCE = new C16612();

        C16612() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoPreferenceHelper invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CryptoPreference(ModuleExtKt.androidContext(single), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StorageModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16623 extends Lambda implements Function2<Scope, ParametersHolder, HintsPreferenceHelper> {
        public static final C16623 INSTANCE = new C16623();

        C16623() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final HintsPreferenceHelper invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new HintsPreference(ModuleExtKt.androidContext(single), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StorageModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.StorageModuleKt$dataStorageModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C16634 extends Lambda implements Function2<Scope, ParametersHolder, TwitterPreferenceHelper> {
        public static final C16634 INSTANCE = new C16634();

        C16634() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterPreferenceHelper invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterPreference(ModuleExtKt.androidContext(single), (Gson) single.get(Reflection.getOrCreateKotlinClass(Gson.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }
}