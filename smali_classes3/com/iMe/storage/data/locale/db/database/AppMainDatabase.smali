.class public abstract Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppMainDatabase.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bookmarksDao()Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;
.end method

.method public abstract dialogTranslationSettingsDao()Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
.end method

.method public abstract filtersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
.end method

.method public abstract hiddenChatsDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;
.end method

.method public abstract historyDialogDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;
.end method

.method public abstract playlistsDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;
.end method

.method public abstract templatesDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;
.end method

.method public abstract topicsDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;
.end method

.method public abstract walletConnectSessionsDao()Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;
.end method
