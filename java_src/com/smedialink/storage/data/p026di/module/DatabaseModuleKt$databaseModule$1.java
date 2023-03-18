package com.smedialink.storage.data.p026di.module;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import com.smedialink.storage.data.locale.p027db.dao.main.BookmarksDao;
import com.smedialink.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.smedialink.storage.data.locale.p027db.dao.main.FiltersDao;
import com.smedialink.storage.data.locale.p027db.dao.main.HistoryDialogDao;
import com.smedialink.storage.data.locale.p027db.dao.main.PlaylistsDao;
import com.smedialink.storage.data.locale.p027db.dao.main.TemplatesDao;
import com.smedialink.storage.data.locale.p027db.dao.main.TopicsDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
import com.smedialink.storage.data.locale.p027db.database.AppCacheDatabase;
import com.smedialink.storage.data.locale.p027db.database.AppMainDatabase;
import com.smedialink.storage.data.locale.p027db.migration.AppCacheDatabaseMigrations;
import com.smedialink.storage.data.locale.p027db.migration.AppMainDatabaseMigrations;
import java.util.Arrays;
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
/* compiled from: DatabaseModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1 */
/* loaded from: classes3.dex */
final class DatabaseModuleKt$databaseModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final DatabaseModuleKt$databaseModule$1 INSTANCE = new DatabaseModuleKt$databaseModule$1();

    DatabaseModuleKt$databaseModule$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15141 extends Lambda implements Function2<Scope, ParametersHolder, AppMainDatabase> {
        public static final C15141 INSTANCE = new C15141();

        C15141() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AppMainDatabase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Context androidContext = ModuleExtKt.androidContext(single);
            Migration[] migrations = AppMainDatabaseMigrations.INSTANCE.getMigrations();
            RoomDatabase build = Room.databaseBuilder(androidContext, AppMainDatabase.class, "user_main_db").addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length)).fallbackToDestructiveMigration().build();
            Intrinsics.checkNotNullExpressionValue(build, "databaseBuilder(context,…ration()\n        .build()");
            return (AppMainDatabase) build;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C15202 extends Lambda implements Function2<Scope, ParametersHolder, AppCacheDatabase> {
        public static final C15202 INSTANCE = new C15202();

        C15202() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AppCacheDatabase invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Context androidContext = ModuleExtKt.androidContext(single);
            Migration[] migrations = AppCacheDatabaseMigrations.INSTANCE.getMigrations();
            RoomDatabase build = Room.databaseBuilder(androidContext, AppCacheDatabase.class, "minor_db").addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length)).fallbackToDestructiveMigration().build();
            Intrinsics.checkNotNullExpressionValue(build, "databaseBuilder(context,…ration()\n        .build()");
            return (AppCacheDatabase) build;
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
        List emptyList9;
        List emptyList10;
        List emptyList11;
        List emptyList12;
        List emptyList13;
        List emptyList14;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C15141 c15141 = C15141.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, c15141, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C15202 c15202 = C15202.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, c15202, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C15213 c15213 = C15213.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(HistoryDialogDao.class), null, c15213, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C15224 c15224 = C15224.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(FiltersDao.class), null, c15224, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C15235 c15235 = C15235.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(DialogTranslationSettingsDao.class), null, c15235, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C15246 c15246 = C15246.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(TopicsDao.class), null, c15246, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        C15257 c15257 = C15257.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletConnectSessionsDao.class), null, c15257, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        C15268 c15268 = C15268.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(TemplatesDao.class), null, c15268, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        C15279 c15279 = C15279.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(BookmarksDao.class), null, c15279, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        C151510 c151510 = C151510.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(PlaylistsDao.class), null, c151510, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        C151611 c151611 = C151611.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(CatalogCategoryDao.class), null, c151611, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        C151712 c151712 = C151712.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(CatalogLanguageDao.class), null, c151712, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
        C151813 c151813 = C151813.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletTokenBalanceDao.class), null, c151813, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new Pair(module, singleInstanceFactory13);
        C151914 c151914 = C151914.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(AlbumsDao.class), null, c151914, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new Pair(module, singleInstanceFactory14);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C151510 extends Lambda implements Function2<Scope, ParametersHolder, PlaylistsDao> {
        public static final C151510 INSTANCE = new C151510();

        C151510() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PlaylistsDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).playlistsDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C151611 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoryDao> {
        public static final C151611 INSTANCE = new C151611();

        C151611() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogCategoryDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).catalogCategoryDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C151712 extends Lambda implements Function2<Scope, ParametersHolder, CatalogLanguageDao> {
        public static final C151712 INSTANCE = new C151712();

        C151712() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogLanguageDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).catalogLanguageDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C151813 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokenBalanceDao> {
        public static final C151813 INSTANCE = new C151813();

        C151813() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTokenBalanceDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).walletTokenBalanceDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C151914 extends Lambda implements Function2<Scope, ParametersHolder, AlbumsDao> {
        public static final C151914 INSTANCE = new C151914();

        C151914() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AlbumsDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).cloudAlbumDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C15213 extends Lambda implements Function2<Scope, ParametersHolder, HistoryDialogDao> {
        public static final C15213 INSTANCE = new C15213();

        C15213() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final HistoryDialogDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).historyDialogDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C15224 extends Lambda implements Function2<Scope, ParametersHolder, FiltersDao> {
        public static final C15224 INSTANCE = new C15224();

        C15224() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final FiltersDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).filtersDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C15235 extends Lambda implements Function2<Scope, ParametersHolder, DialogTranslationSettingsDao> {
        public static final C15235 INSTANCE = new C15235();

        C15235() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DialogTranslationSettingsDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).dialogTranslationSettingsDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C15246 extends Lambda implements Function2<Scope, ParametersHolder, TopicsDao> {
        public static final C15246 INSTANCE = new C15246();

        C15246() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TopicsDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).topicsDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C15257 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsDao> {
        public static final C15257 INSTANCE = new C15257();

        C15257() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectSessionsDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).walletConnectSessionsDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C15268 extends Lambda implements Function2<Scope, ParametersHolder, TemplatesDao> {
        public static final C15268 INSTANCE = new C15268();

        C15268() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TemplatesDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).templatesDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DatabaseModuleKt$databaseModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C15279 extends Lambda implements Function2<Scope, ParametersHolder, BookmarksDao> {
        public static final C15279 INSTANCE = new C15279();

        C15279() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BookmarksDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).bookmarksDao();
        }
    }
}
