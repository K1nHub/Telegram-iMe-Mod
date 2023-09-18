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
import org.koin.dsl.ModuleDSLKt;
/* compiled from: TelegramModule.kt */
/* renamed from: com.iMe.di.module.TelegramModuleKt */
/* loaded from: classes4.dex */
public final class TelegramModuleKt {
    private static Module telegramModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1
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
            List emptyList6;
            List emptyList7;
            List emptyList8;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C14361 c14361 = new Function2<Scope, ParametersHolder, TelegramApi>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final TelegramApi invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TelegramApiManager((SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramGateway) single.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TelegramApi.class), null, c14361, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C14372 c14372 = new Function2<Scope, ParametersHolder, TelegramGateway>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final TelegramGateway invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TelegramGatewayImpl(ModuleExtKt.androidContext(factory));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            Kind kind2 = Kind.Factory;
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, c14372, kind2, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            C14383 c14383 = new Function2<Scope, ParametersHolder, TelegramControllersGateway>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final TelegramControllersGateway invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TelegramControllersGatewayImpl((TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory2 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, c14383, kind2, emptyList3));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            C14394 c14394 = new Function2<Scope, ParametersHolder, MessageLinkCache>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final MessageLinkCache invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new MessageLinkCache();
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(MessageLinkCache.class), null, c14394, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C14405 c14405 = new Function2<Scope, ParametersHolder, MultiReplyRepository>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final MultiReplyRepository invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new MultiReplyRepository((TelegramApi) single.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (MessageLinkCache) single.get(Reflection.getOrCreateKotlinClass(MessageLinkCache.class), null, null), (SchedulersProvider) single.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(MultiReplyRepository.class), null, c14405, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C14416 c14416 = new Function2<Scope, ParametersHolder, MultiReplyInteractor>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final MultiReplyInteractor invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new MultiReplyInteractor((MultiReplyRepository) factory.get(Reflection.getOrCreateKotlinClass(MultiReplyRepository.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory3 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(MultiReplyInteractor.class), null, c14416, kind2, emptyList6));
            module.indexPrimaryType(factoryInstanceFactory3);
            new KoinDefinition(module, factoryInstanceFactory3);
            C14427 c14427 = new Function2<Scope, ParametersHolder, ContactsInteractor>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final ContactsInteractor invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ContactsInteractor((SelectedContactsDataStore) factory.get(Reflection.getOrCreateKotlinClass(SelectedContactsDataStore.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory4 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(ContactsInteractor.class), null, c14427, kind2, emptyList7));
            module.indexPrimaryType(factoryInstanceFactory4);
            new KoinDefinition(module, factoryInstanceFactory4);
            C14438 c14438 = new Function2<Scope, ParametersHolder, SelectedContactsDataStore>() { // from class: com.iMe.di.module.TelegramModuleKt$telegramModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final SelectedContactsDataStore invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SelectedContactsDataStore();
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            InstanceFactory<?> factoryInstanceFactory5 = new FactoryInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(SelectedContactsDataStore.class), null, c14438, kind2, emptyList8));
            module.indexPrimaryType(factoryInstanceFactory5);
            new KoinDefinition(module, factoryInstanceFactory5);
        }
    }, 1, null);

    public static final Module getTelegramModule() {
        return telegramModule;
    }
}
