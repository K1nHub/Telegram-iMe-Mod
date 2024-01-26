.class public Lorg/telegram/messenger/MessagesController$DialogFilter;
.super Ljava/lang/Object;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFilter"
.end annotation


# static fields
.field private static dialogFilterPointer:I = 0xa


# instance fields
.field public alwaysShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public id:I

.field public invites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;",
            ">;"
        }
    .end annotation
.end field

.field public localId:I

.field public locked:Z

.field public name:Ljava/lang/String;

.field public neverShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public order:I

.field public volatile pendingUnreadCount:I

.field public pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

.field public unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 1273
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 1274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1277
    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->invites:Ljava/util/ArrayList;

    .line 1280
    sget v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogFilterPointer:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogFilterPointer:I

    iput v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->localId:I

    return-void
.end method


# virtual methods
.method public alwaysShow(ILorg/telegram/tgnet/TLRPC$Dialog;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1406
    :cond_0
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 1408
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1409
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1411
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 1415
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z
    .locals 1

    .line 1284
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1285
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1289
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result p1

    return p1
.end method

.method public includesDialog(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$Dialog;)Z
    .locals 8

    .line 1293
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1296
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1299
    :cond_1
    iget v0, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-nez v0, :cond_3

    .line 1303
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    return v1

    .line 1307
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1308
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    .line 1311
    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int/2addr v3, v4

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    iget-wide v6, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v6, v7, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    if-eqz v3, :cond_5

    :cond_4
    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_6

    .line 1312
    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-nez v3, :cond_6

    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    if-nez v3, :cond_6

    :cond_5
    return v1

    .line 1316
    :cond_6
    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DRAFTS:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, p2, p3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->getDraft(JJ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v3

    if-eqz v3, :cond_7

    return v2

    .line 1319
    :cond_7
    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_MENTIONED:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_9

    .line 1320
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_8

    .line 1321
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 1323
    :cond_9
    iget-wide v6, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 1324
    iget p4, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_SECRET_CHAT:I

    and-int/2addr p4, v3

    if-eqz p4, :cond_a

    return v2

    :cond_a
    cmp-long p4, p2, v4

    if-lez p4, :cond_f

    .line 1330
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    if-eqz p4, :cond_16

    .line 1333
    iget-boolean v0, p4, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v0, :cond_b

    .line 1334
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DELETED:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    return v2

    .line 1339
    :cond_b
    iget-boolean v0, p4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_e

    .line 1340
    iget-boolean v0, p4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v0, :cond_d

    iget-boolean p4, p4, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez p4, :cond_d

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    .line 1345
    :cond_c
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    return v2

    .line 1341
    :cond_d
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    return v2

    .line 1350
    :cond_e
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    return v2

    :cond_f
    if-gez p4, :cond_16

    neg-long p1, p2

    .line 1356
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1359
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz p2, :cond_10

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz p2, :cond_10

    .line 1360
    iget p2, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_10

    return v2

    .line 1364
    :cond_10
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1365
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p2, :cond_11

    .line 1366
    iget p2, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_OWNER:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_12

    return v2

    .line 1370
    :cond_11
    iget p2, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ADMIN:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_12

    return v2

    .line 1376
    :cond_12
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p2, :cond_13

    .line 1377
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    return v2

    .line 1381
    :cond_13
    iget p2, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_14

    return v2

    .line 1385
    :cond_14
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1386
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PRIVATE_GROUPS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    return v2

    .line 1390
    :cond_15
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PUBLIC_GROUPS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    return v2

    :cond_16
    return v1
.end method

.method public isChatlist()Z
    .locals 2

    .line 1423
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1419
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMyChatlist()Z
    .locals 2

    .line 1427
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST_ADMIN:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
