package com.iMe.storage.data.p026di.module;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p027db.dao.main.FiltersDao;
import com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao;
import com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p027db.dao.main.PlaylistsDao;
import com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao;
import com.iMe.storage.data.locale.p027db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.locale.p027db.database.AppCacheDatabase;
import com.iMe.storage.data.locale.p027db.database.AppMainDatabase;
import com.iMe.storage.data.locale.p027db.migration.AppCacheDatabaseMigrations;
import com.iMe.storage.data.locale.p027db.migration.AppMainDatabaseMigrations;
import java.util.Arrays;
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
/* compiled from: DatabaseModule.kt */
/* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1 */
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16481 extends Lambda implements Function2<Scope, ParametersHolder, AppMainDatabase> {
        public static final C16481 INSTANCE = new C16481();

        C16481() {
            super(2);
        }

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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16552 extends Lambda implements Function2<Scope, ParametersHolder, AppCacheDatabase> {
        public static final C16552 INSTANCE = new C16552();

        C16552() {
            super(2);
        }

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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C16481 c16481 = C16481.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, c16481, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C16552 c16552 = C16552.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, c16552, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C16563 c16563 = C16563.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(HiddenChatsDao.class), null, c16563, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C16574 c16574 = C16574.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(HistoryDialogDao.class), null, c16574, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        C16585 c16585 = C16585.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(FiltersDao.class), null, c16585, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        C16596 c16596 = C16596.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(DialogTranslationSettingsDao.class), null, c16596, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        C16607 c16607 = C16607.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(TopicsDao.class), null, c16607, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        C16618 c16618 = C16618.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletConnectSessionsDao.class), null, c16618, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        C16629 c16629 = C16629.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(TemplatesDao.class), null, c16629, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        C164910 c164910 = C164910.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(PlaylistsDao.class), null, c164910, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new KoinDefinition(module, singleInstanceFactory10);
        C165011 c165011 = C165011.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(CatalogCategoryDao.class), null, c165011, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new KoinDefinition(module, singleInstanceFactory11);
        C165112 c165112 = C165112.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(CatalogLanguageDao.class), null, c165112, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new KoinDefinition(module, singleInstanceFactory12);
        C165213 c165213 = C165213.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletTokensBalancesDao.class), null, c165213, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new KoinDefinition(module, singleInstanceFactory13);
        C165314 c165314 = C165314.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory14 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(AlbumsDao.class), null, c165314, kind, emptyList14));
        module.indexPrimaryType(singleInstanceFactory14);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory14);
        }
        new KoinDefinition(module, singleInstanceFactory14);
        C165415 c165415 = C165415.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory15 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(SocialNetworkDao.class), null, c165415, kind, emptyList15));
        module.indexPrimaryType(singleInstanceFactory15);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory15);
        }
        new KoinDefinition(module, singleInstanceFactory15);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C164910 extends Lambda implements Function2<Scope, ParametersHolder, PlaylistsDao> {
        public static final C164910 INSTANCE = new C164910();

        C164910() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C165011 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoryDao> {
        public static final C165011 INSTANCE = new C165011();

        C165011() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C165112 extends Lambda implements Function2<Scope, ParametersHolder, CatalogLanguageDao> {
        public static final C165112 INSTANCE = new C165112();

        C165112() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C165213 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokensBalancesDao> {
        public static final C165213 INSTANCE = new C165213();

        C165213() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTokensBalancesDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).walletTokenBalanceDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C165314 extends Lambda implements Function2<Scope, ParametersHolder, AlbumsDao> {
        public static final C165314 INSTANCE = new C165314();

        C165314() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C165415 extends Lambda implements Function2<Scope, ParametersHolder, SocialNetworkDao> {
        public static final C165415 INSTANCE = new C165415();

        C165415() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SocialNetworkDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppCacheDatabase) single.get(Reflection.getOrCreateKotlinClass(AppCacheDatabase.class), null, null)).socialNetworkDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16563 extends Lambda implements Function2<Scope, ParametersHolder, HiddenChatsDao> {
        public static final C16563 INSTANCE = new C16563();

        C16563() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final HiddenChatsDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).hiddenChatsDao();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C16574 extends Lambda implements Function2<Scope, ParametersHolder, HistoryDialogDao> {
        public static final C16574 INSTANCE = new C16574();

        C16574() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C16585 extends Lambda implements Function2<Scope, ParametersHolder, FiltersDao> {
        public static final C16585 INSTANCE = new C16585();

        C16585() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C16596 extends Lambda implements Function2<Scope, ParametersHolder, DialogTranslationSettingsDao> {
        public static final C16596 INSTANCE = new C16596();

        C16596() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C16607 extends Lambda implements Function2<Scope, ParametersHolder, TopicsDao> {
        public static final C16607 INSTANCE = new C16607();

        C16607() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C16618 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionsDao> {
        public static final C16618 INSTANCE = new C16618();

        C16618() {
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
    /* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt$databaseModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C16629 extends Lambda implements Function2<Scope, ParametersHolder, TemplatesDao> {
        public static final C16629 INSTANCE = new C16629();

        C16629() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TemplatesDao invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((AppMainDatabase) single.get(Reflection.getOrCreateKotlinClass(AppMainDatabase.class), null, null)).templatesDao();
        }
    }
}
