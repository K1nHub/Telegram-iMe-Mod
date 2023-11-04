package com.iMe.storage.data.p025di.module;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import com.iMe.storage.data.locale.p026db.dao.main.AlbumsDao;
import com.iMe.storage.data.locale.p026db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p026db.dao.main.FiltersDao;
import com.iMe.storage.data.locale.p026db.dao.main.HiddenChatsDao;
import com.iMe.storage.data.locale.p026db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p026db.dao.main.PlaylistsDao;
import com.iMe.storage.data.locale.p026db.dao.main.TemplatesDao;
import com.iMe.storage.data.locale.p026db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p026db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p026db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p026db.dao.minor.cloud.CloudAlbumsDao;
import com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p026db.dao.minor.wallet.WalletConnectSessionsDao;
import com.iMe.storage.data.locale.p026db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.locale.p026db.database.AppCacheDatabase;
import com.iMe.storage.data.locale.p026db.database.AppMainDatabase;
import com.iMe.storage.data.locale.p026db.migration.AppCacheDatabaseMigrations;
import com.iMe.storage.data.locale.p026db.migration.AppMainDatabaseMigrations;
import java.util.Arrays;
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
/* compiled from: DatabaseModule.kt */
/* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt */
/* loaded from: classes3.dex */
public final class DatabaseModuleKt {
    private static Module databaseModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1
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
            List emptyList9;
            List emptyList10;
            List emptyList11;
            List emptyList12;
            List emptyList13;
            List emptyList14;
            List emptyList15;
            List emptyList16;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C15811 c15811 = new Function2<Scope, ParametersHolder, AppMainDatabase>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final AppMainDatabase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Context androidContext = ModuleExtKt.androidContext(single);
                    Migration[] migrations = AppMainDatabaseMigrations.INSTANCE.getMigrations();
                    RoomDatabase initDb = Room.databaseBuilder(androidContext, AppMainDatabase.class, "user_main_db").addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length)).fallbackToDestructiveMigration().build();
                    Intrinsics.checkNotNullExpressionValue(initDb, "initDb");
                    return (AppMainDatabase) initDb;
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, c15811, kind, emptyList));
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            new KoinDefinition(module, singleInstanceFactory);
            C15892 c15892 = new Function2<Scope, ParametersHolder, AppCacheDatabase>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final AppCacheDatabase invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Context androidContext = ModuleExtKt.androidContext(single);
                    Migration[] migrations = AppCacheDatabaseMigrations.INSTANCE.getMigrations();
                    RoomDatabase initDb = Room.databaseBuilder(androidContext, AppCacheDatabase.class, "minor_db").addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length)).fallbackToDestructiveMigration().build();
                    Intrinsics.checkNotNullExpressionValue(initDb, "initDb");
                    return (AppCacheDatabase) initDb;
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, c15892, kind, emptyList2));
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
            C15903 c15903 = new Function2<Scope, ParametersHolder, HiddenChatsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final HiddenChatsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).hiddenChatsDao();
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(HiddenChatsDao.class), null, c15903, kind, emptyList3));
            module.indexPrimaryType(singleInstanceFactory3);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory3);
            }
            new KoinDefinition(module, singleInstanceFactory3);
            C15914 c15914 = new Function2<Scope, ParametersHolder, HistoryDialogDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final HistoryDialogDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).historyDialogDao();
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HistoryDialogDao.class), null, c15914, kind, emptyList4));
            module.indexPrimaryType(singleInstanceFactory4);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory4);
            }
            new KoinDefinition(module, singleInstanceFactory4);
            C15925 c15925 = new Function2<Scope, ParametersHolder, FiltersDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final FiltersDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).filtersDao();
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(FiltersDao.class), null, c15925, kind, emptyList5));
            module.indexPrimaryType(singleInstanceFactory5);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory5);
            }
            new KoinDefinition(module, singleInstanceFactory5);
            C15936 c15936 = new Function2<Scope, ParametersHolder, DialogTranslationSettingsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final DialogTranslationSettingsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).dialogTranslationSettingsDao();
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(DialogTranslationSettingsDao.class), null, c15936, kind, emptyList6));
            module.indexPrimaryType(singleInstanceFactory6);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory6);
            }
            new KoinDefinition(module, singleInstanceFactory6);
            C15947 c15947 = new Function2<Scope, ParametersHolder, TopicsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final TopicsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).topicsDao();
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(TopicsDao.class), null, c15947, kind, emptyList7));
            module.indexPrimaryType(singleInstanceFactory7);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory7);
            }
            new KoinDefinition(module, singleInstanceFactory7);
            C15958 c15958 = new Function2<Scope, ParametersHolder, WalletConnectSessionsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectSessionsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).walletConnectSessionsDao();
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletConnectSessionsDao.class), null, c15958, kind, emptyList8));
            module.indexPrimaryType(singleInstanceFactory8);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory8);
            }
            new KoinDefinition(module, singleInstanceFactory8);
            C15969 c15969 = new Function2<Scope, ParametersHolder, TemplatesDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final TemplatesDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).templatesDao();
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(TemplatesDao.class), null, c15969, kind, emptyList9));
            module.indexPrimaryType(singleInstanceFactory9);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory9);
            }
            new KoinDefinition(module, singleInstanceFactory9);
            C158210 c158210 = new Function2<Scope, ParametersHolder, PlaylistsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final PlaylistsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).playlistsDao();
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(PlaylistsDao.class), null, c158210, kind, emptyList10));
            module.indexPrimaryType(singleInstanceFactory10);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory10);
            }
            new KoinDefinition(module, singleInstanceFactory10);
            C158311 c158311 = new Function2<Scope, ParametersHolder, AlbumsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final AlbumsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).albumsDao();
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(AlbumsDao.class), null, c158311, kind, emptyList11));
            module.indexPrimaryType(singleInstanceFactory11);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory11);
            }
            new KoinDefinition(module, singleInstanceFactory11);
            C158412 c158412 = new Function2<Scope, ParametersHolder, CatalogCategoryDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final CatalogCategoryDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).catalogCategoryDao();
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(CatalogCategoryDao.class), null, c158412, kind, emptyList12));
            module.indexPrimaryType(singleInstanceFactory12);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory12);
            }
            new KoinDefinition(module, singleInstanceFactory12);
            C158513 c158513 = new Function2<Scope, ParametersHolder, CatalogLanguageDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final CatalogLanguageDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).catalogLanguageDao();
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(CatalogLanguageDao.class), null, c158513, kind, emptyList13));
            module.indexPrimaryType(singleInstanceFactory13);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory13);
            }
            new KoinDefinition(module, singleInstanceFactory13);
            C158614 c158614 = new Function2<Scope, ParametersHolder, WalletTokensBalancesDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final WalletTokensBalancesDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).walletTokenBalanceDao();
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletTokensBalancesDao.class), null, c158614, kind, emptyList14));
            module.indexPrimaryType(singleInstanceFactory14);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory14);
            }
            new KoinDefinition(module, singleInstanceFactory14);
            C158715 c158715 = new Function2<Scope, ParametersHolder, CloudAlbumsDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final CloudAlbumsDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).cloudAlbumDao();
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(CloudAlbumsDao.class), null, c158715, kind, emptyList15));
            module.indexPrimaryType(singleInstanceFactory15);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory15);
            }
            new KoinDefinition(module, singleInstanceFactory15);
            C158816 c158816 = new Function2<Scope, ParametersHolder, SocialNetworkDao>() { // from class: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final SocialNetworkDao invoke(Scope single, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).socialNetworkDao();
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            SingleInstanceFactory<?> singleInstanceFactory16 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(SocialNetworkDao.class), null, c158816, kind, emptyList16));
            module.indexPrimaryType(singleInstanceFactory16);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory16);
            }
            new KoinDefinition(module, singleInstanceFactory16);
        }
    }, 1, null);

    public static final Module getDatabaseModule() {
        return databaseModule;
    }
}
