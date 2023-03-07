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
    public static final class C15041 extends Lambda implements Function2<Scope, ParametersHolder, AppMainDatabase> {
        public static final C15041 INSTANCE = new C15041();

        C15041() {
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
    public static final class C15102 extends Lambda implements Function2<Scope, ParametersHolder, AppCacheDatabase> {
        public static final C15102 INSTANCE = new C15102();

        C15102() {
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
        C15041 c15041 = C15041.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, c15041, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C15102 c15102 = C15102.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, c15102, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C15113 c15113 = C15113.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(HistoryDialogDao.class), null, c15113, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C15124 c15124 = C15124.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(FiltersDao.class), null, c15124, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C15135 c15135 = C15135.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(DialogTranslationSettingsDao.class), null, c15135, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        C15146 c15146 = C15146.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(TopicsDao.class), null, c15146, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        C15157 c15157 = C15157.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletConnectSessionsDao.class), null, c15157, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        C15168 c15168 = C15168.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(TemplatesDao.class), null, c15168, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        C15179 c15179 = C15179.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(BookmarksDao.class), null, c15179, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        C150510 c150510 = C150510.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(PlaylistsDao.class), null, c150510, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        C150611 c150611 = C150611.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(CatalogCategoryDao.class), null, c150611, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        C150712 c150712 = C150712.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(CatalogLanguageDao.class), null, c150712, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
        C150813 c150813 = C150813.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletTokenBalanceDao.class), null, c150813, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new Pair(module, singleInstanceFactory13);
        C150914 c150914 = C150914.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(AlbumsDao.class), null, c150914, kind, emptyList14));
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
    public static final class C150510 extends Lambda implements Function2<Scope, ParametersHolder, PlaylistsDao> {
        public static final C150510 INSTANCE = new C150510();

        C150510() {
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
    public static final class C150611 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoryDao> {
        public static final C150611 INSTANCE = new C150611();

        C150611() {
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
    public static final class C150712 extends Lambda implements Function2<Scope, ParametersHolder, CatalogLanguageDao> {
        public static final C150712 INSTANCE = new C150712();

        C150712() {
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
    public static final class C150813 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokenBalanceDao> {
        public static final C150813 INSTANCE = new C150813();

        C150813() {
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
    public static final class C150914 extends Lambda implements Function2<Scope, ParametersHolder, AlbumsDao> {
        public static final C150914 INSTANCE = new C150914();

        C150914() {
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
    public static final class C15113 extends Lambda implements Function2<Scope, ParametersHolder, HistoryDialogDao> {
        public static final C15113 INSTANCE = new C15113();

        C15113() {
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
    public static final class C15124 extends Lambda implements Function2<Scope, ParametersHolder, FiltersDao> {
        public static final C15124 INSTANCE = new C15124();

        C15124() {
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
    public static final class C15135 extends Lambda implements Function2<Scope, ParametersHolder, DialogTranslationSettingsDao> {
        public static final C15135 INSTANCE = new C15135();

        C15135() {
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
    public static final class C15146 extends Lambda implements Function2<Scope, ParametersHolder, TopicsDao> {
        public static final C15146 INSTANCE = new C15146();

        C15146() {
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
    public static final class C15157 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsDao> {
        public static final C15157 INSTANCE = new C15157();

        C15157() {
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
    public static final class C15168 extends Lambda implements Function2<Scope, ParametersHolder, TemplatesDao> {
        public static final C15168 INSTANCE = new C15168();

        C15168() {
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
    public static final class C15179 extends Lambda implements Function2<Scope, ParametersHolder, BookmarksDao> {
        public static final C15179 INSTANCE = new C15179();

        C15179() {
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
