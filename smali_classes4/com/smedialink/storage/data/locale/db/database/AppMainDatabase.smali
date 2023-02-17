.class public abstract Lcom/smedialink/storage/data/locale/db/database/AppMainDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppMainDatabase.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bookmarksDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;
.end method

.method public abstract dialogTranslationSettingsDao()Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
.end method

.method public abstract filtersDao()Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;
.end method

.method public abstract historyDialogDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;
.end method

.method public abstract playlistsDao()Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;
.end method

.method public abstract templatesDao()Lcom/smedialink/storage/data/locale/db/dao/main/TemplatesDao;
.end method

.method public abstract topicsDao()Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;
.end method

.method public abstract walletConnectSessionsDao()Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;
.end method
