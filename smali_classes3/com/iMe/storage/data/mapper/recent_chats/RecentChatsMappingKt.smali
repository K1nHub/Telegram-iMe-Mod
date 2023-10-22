.class public final Lcom/iMe/storage/data/mapper/recent_chats/RecentChatsMappingKt;
.super Ljava/lang/Object;
.source "RecentChatsMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/HistoryDialogModel;J)Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getCreationDate()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v8

    move-object v1, v0

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;-><init>(JJJZ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)Lcom/iMe/storage/domain/model/HistoryDialogModel;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->getCreationDate()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/HistoryDialogModel;-><init>(JJZ)V

    return-object v0
.end method
