package com.iMe.p023di.module;

import com.iMe.domain.contacts.ContactsInteractor;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.gateway.impl.TelegramControllersGatewayImpl;
import com.iMe.gateway.impl.TelegramGatewayImpl;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.TelegramApiManager;
import com.iMe.manager.contacts.SelectedContactsDataStore;
import com.iMe.manager.multireply.MultiReplyInteractor;
import com.iMe.manager.multireply.data.MultiReplyRepository;
import com.iMe.manager.multireply.message.MessageLinkCache;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
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
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: TelegramModule.kt */
/* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1 */
/* loaded from: classes3.dex */
final class TelegramModuleKt$telegramModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final TelegramModuleKt$telegramModule$1 INSTANCE = new TelegramModuleKt$telegramModule$1();

    TelegramModuleKt$telegramModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C14121 extends Lambda implements Function2<Scope, ParametersHolder, TelegramApi> {
        public static final C14121 INSTANCE = new C14121();

        C14121() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TelegramApi invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TelegramApiManager((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C14132 extends Lambda implements Function2<Scope, ParametersHolder, TelegramGateway> {
        public static final C14132 INSTANCE = new C14132();

        C14132() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TelegramGateway invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TelegramGatewayImpl(ModuleExtKt.androidContext(factory));
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
        List emptyList7;
        List emptyList8;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C14121 c14121 = C14121.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TelegramApi.class), null, c14121, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C14132 c14132 = C14132.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        Kind kind2 = Kind.Factory;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, c14132, kind2, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C14143 c14143 = C14143.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, c14143, kind2, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        C14154 c14154 = C14154.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(MessageLinkCache.class), null, c14154, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C14165 c14165 = C14165.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(MultiReplyRepository.class), null, c14165, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C14176 c14176 = C14176.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory3 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(MultiReplyInteractor.class), null, c14176, kind2, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        C14187 c14187 = C14187.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory4 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(ContactsInteractor.class), null, c14187, kind2, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory4);
        new KoinDefinition(module, factoryInstanceFactory4);
        C14198 c14198 = C14198.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        InstanceFactory<?> factoryInstanceFactory5 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectedContactsDataStore.class), null, c14198, kind2, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory5);
        new KoinDefinition(module, factoryInstanceFactory5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C14143 extends Lambda implements Function2<Scope, ParametersHolder, TelegramControllersGateway> {
        public static final C14143 INSTANCE = new C14143();

        C14143() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TelegramControllersGateway invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TelegramControllersGatewayImpl((TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C14154 extends Lambda implements Function2<Scope, ParametersHolder, MessageLinkCache> {
        public static final C14154 INSTANCE = new C14154();

        C14154() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final MessageLinkCache invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new MessageLinkCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C14165 extends Lambda implements Function2<Scope, ParametersHolder, MultiReplyRepository> {
        public static final C14165 INSTANCE = new C14165();

        C14165() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final MultiReplyRepository invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new MultiReplyRepository((TelegramApi) single.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (MessageLinkCache) single.get(Reflection.getOrCreateKotlinClass(MessageLinkCache.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C14176 extends Lambda implements Function2<Scope, ParametersHolder, MultiReplyInteractor> {
        public static final C14176 INSTANCE = new C14176();

        C14176() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final MultiReplyInteractor invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new MultiReplyInteractor((MultiReplyRepository) factory.get(Reflection.getOrCreateKotlinClass(MultiReplyRepository.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C14187 extends Lambda implements Function2<Scope, ParametersHolder, ContactsInteractor> {
        public static final C14187 INSTANCE = new C14187();

        C14187() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ContactsInteractor invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ContactsInteractor((SelectedContactsDataStore) factory.get(Reflection.getOrCreateKotlinClass(SelectedContactsDataStore.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelegramModule.kt */
    /* renamed from: com.iMe.di.module.TelegramModuleKt$telegramModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C14198 extends Lambda implements Function2<Scope, ParametersHolder, SelectedContactsDataStore> {
        public static final C14198 INSTANCE = new C14198();

        C14198() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SelectedContactsDataStore invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SelectedContactsDataStore();
        }
    }
}
