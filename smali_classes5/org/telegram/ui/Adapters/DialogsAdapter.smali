.class public Lorg/telegram/ui/Adapters/DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsAdapter.java"

# interfaces
.implements Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;,
        Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;,
        Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;
    }
.end annotation


# instance fields
.field private archiveHintCell:Lorg/telegram/ui/Cells/ArchiveHintCell;

.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private collapsedView:Z

.field private currentAccount:I

.field private currentCount:I

.field private dialogsCount:I

.field private dialogsListFrozen:Z

.field dialogsStableIds:Lorg/telegram/messenger/support/LongSparseIntArray;

.field private dialogsType:I

.field private folderId:I

.field private forceShowEmptyCell:Z

.field private forceUpdatingContacts:Z

.field private hasChatlistHint:Z

.field private hasHints:Z

.field private initialDialogsType:I

.field public isEmpty:Z

.field private isOnlySelect:Z

.field private isReordering:Z

.field private isTransitionSupport:Z

.field private isWalletBotHidden:Z

.field itemInternals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;",
            ">;"
        }
    .end annotation
.end field

.field public lastDialogsEmptyType:I

.field private lastSortTime:J

.field private mContext:Landroid/content/Context;

.field oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;",
            ">;"
        }
    .end annotation
.end field

.field private onlineContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field private openedDialogId:J

.field private parentFragment:Lorg/telegram/ui/DialogsActivity;

.field private preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

.field private pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field private requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

.field private selectedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private showArchiveHint:Z

.field stableIdPointer:I


# direct methods
.method public static synthetic $r8$lambda$3S47uKeGYxrdM70dYaQfdJn-1WY(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$B0qIe6TxDardgaYX-7eWyt6VPHc(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNqHElwfngWdKzkbcgEaTXmaGDk(Lorg/telegram/ui/Adapters/DialogsAdapter;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$onBindViewHolder$3(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yS6Mw2TD_4TG3UFXUY5dN0oiTsg(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$sortOnlineContacts$0(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DialogsActivity;",
            "Landroid/content/Context;",
            "IIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I",
            "Lorg/telegram/tgnet/TLRPC$RequestPeerType;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    const/16 v0, 0xa

    .line 293
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->stableIdPointer:I

    .line 294
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsStableIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v0, -0x1

    .line 757
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 181
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    .line 182
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 183
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 184
    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    .line 185
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 186
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    .line 187
    iput-object p6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    .line 188
    iput p7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    if-nez p4, :cond_1

    .line 198
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-direct {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    .line 200
    :cond_1
    iput-object p8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 83
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 83
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 83
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method private isArchive()Z
    .locals 2

    .line 113
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isHiddenChats()Z
    .locals 2

    .line 117
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 2

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Ljava/lang/Float;)V
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 1

    .line 618
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 619
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 620
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "installReferer"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$sortOnlineContacts$0(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 429
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 430
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 434
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 436
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 437
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 441
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 443
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 444
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    const/4 p0, -0x1

    const/4 p2, 0x1

    if-lez p3, :cond_6

    if-lez p1, :cond_6

    if-le p3, p1, :cond_4

    return p2

    :cond_4
    if-ge p3, p1, :cond_5

    return p0

    :cond_5
    return v0

    :cond_6
    if-gez p3, :cond_9

    if-gez p1, :cond_9

    if-le p3, p1, :cond_7

    return p2

    :cond_7
    if-ge p3, p1, :cond_8

    return p0

    :cond_8
    return v0

    :cond_9
    if-gez p3, :cond_a

    if-gtz p1, :cond_b

    :cond_a
    if-nez p3, :cond_c

    if-eqz p1, :cond_c

    :cond_b
    return p0

    :cond_c
    if-ltz p1, :cond_e

    if-eqz p3, :cond_d

    goto :goto_2

    :cond_d
    return v0

    :cond_e
    :goto_2
    return p2
.end method

.method private updateItemList()V
    .locals 16

    move-object/from16 v0, p0

    .line 1332
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateHasHints()V

    .line 1335
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 1336
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 1338
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isWalletBotHidden:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1339
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide v5

    const/4 v3, -0x1

    move v8, v3

    move v7, v4

    .line 1342
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    if-ne v8, v3, :cond_1

    .line 1343
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v9, v9, v5

    if-nez v9, :cond_0

    move v8, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eq v8, v3, :cond_2

    .line 1349
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1353
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    .line 1354
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1356
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-nez v3, :cond_8

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v3, :cond_8

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v3, :cond_8

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-nez v3, :cond_8

    .line 1357
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllFoldersDialogsCount()I

    move-result v3

    const/4 v7, 0x0

    if-gt v3, v5, :cond_7

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    if-eqz v3, :cond_7

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v8

    invoke-virtual {v3, v8}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1358
    new-instance v3, Ljava/util/ArrayList;

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1359
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 1360
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v10, v4

    :goto_1
    if-ge v10, v3, :cond_5

    .line 1361
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v13, v11, v8

    if-eqz v13, :cond_3

    .line 1362
    iget-object v13, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1363
    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_4
    add-int/2addr v10, v6

    goto :goto_1

    .line 1368
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1369
    iput-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_2

    .line 1371
    :cond_6
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortOnlineContacts(Z)V

    goto :goto_2

    .line 1374
    :cond_7
    iput-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1378
    :cond_8
    :goto_2
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    .line 1379
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v7, 0x8

    const/4 v8, 0x7

    if-eq v3, v8, :cond_9

    if-ne v3, v7, :cond_a

    .line 1380
    :cond_9
    iget-object v9, v1, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    sub-int/2addr v3, v8

    aget-object v3, v9, v3

    if-eqz v3, :cond_a

    .line 1381
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1382
    iget v9, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v9, v4}, Lorg/telegram/messenger/MessagesController;->checkChatlistFolderUpdate(IZ)V

    .line 1383
    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChatlistFolderUpdates(I)Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1384
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 1385
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    .line 1386
    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v10, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_b

    .line 1392
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v10, 0xf

    invoke-direct {v9, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_b
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v10, 0x2

    if-nez v3, :cond_25

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    if-eqz v3, :cond_c

    goto/16 :goto_10

    .line 1407
    :cond_c
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/16 v11, 0xd

    const/16 v12, 0xb

    const/16 v14, 0x10

    const/4 v15, 0x5

    if-nez v3, :cond_e

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v3, :cond_e

    .line 1408
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1409
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_d

    .line 1410
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1412
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v13

    invoke-direct {v9, v0, v15, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1417
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v3, v8, :cond_13

    if-eq v3, v7, :cond_13

    .line 1418
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v3, :cond_10

    .line 1419
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1420
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_f

    .line 1421
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1423
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v11

    invoke-direct {v9, v0, v15, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    move v3, v4

    .line 1428
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_11

    .line 1429
    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v11, v0, v4, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1431
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move v3, v4

    .line 1434
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_12

    .line 1435
    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v13, 0x6

    iget-object v15, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v11, v0, v13, v15}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$TL_contact;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v15, 0x5

    goto :goto_7

    .line 1437
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto/16 :goto_b

    .line 1439
    :cond_13
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v3, :cond_15

    .line 1440
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1441
    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v11, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v4

    :goto_8
    if-ge v9, v3, :cond_14

    .line 1443
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v15, 0x4

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-direct {v13, v0, v15, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xa

    goto :goto_8

    .line 1445
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v9, 0x3

    invoke-direct {v5, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1446
    :cond_15
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    if-eqz v3, :cond_16

    .line 1447
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v9, 0x9

    invoke-direct {v5, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1449
    :cond_16
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v3, v12, :cond_18

    if-ne v3, v11, :cond_17

    goto :goto_9

    :cond_17
    const/16 v5, 0xc

    if-ne v3, v5, :cond_19

    .line 1453
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1450
    :cond_18
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v9, 0xc

    invoke-direct {v5, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_a
    move v3, v4

    .line 1456
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    instance-of v9, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-nez v9, :cond_1a

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeChat;

    if-eqz v5, :cond_1b

    :cond_1a
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-lez v5, :cond_1b

    .line 1457
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v11, 0xc

    invoke-direct {v9, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-nez v3, :cond_22

    move v3, v4

    .line 1461
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1d

    .line 1462
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v5, v10, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v5, :cond_1c

    .line 1463
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/16 v13, 0xe

    invoke-direct {v9, v0, v13, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1465
    :cond_1c
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v9, v0, v4, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1468
    :cond_1d
    iget-boolean v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    if-nez v2, :cond_1e

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v2, v8, :cond_1e

    if-eq v2, v7, :cond_1e

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-eq v3, v10, :cond_1e

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    const/16 v5, 0x190

    if-eq v3, v5, :cond_1e

    sget v3, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-eq v2, v3, :cond_1e

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1469
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v2, :cond_22

    .line 1470
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1472
    :cond_1e
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v2, :cond_20

    .line 1473
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1474
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v2, :cond_1f

    .line 1475
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1477
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    const/4 v7, 0x5

    invoke-direct {v3, v0, v7, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1480
    :cond_20
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v3, :cond_21

    const/16 v3, 0xa

    if-le v2, v3, :cond_21

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v2, :cond_21

    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1481
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v5, 0xa

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    :cond_22
    :goto_e
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->hiddenUndoChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1488
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_24

    .line 1489
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    .line 1490
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v3, :cond_23

    iget-object v2, v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v2, :cond_23

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isHiddenByUndo(J)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1491
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_23
    add-int/2addr v4, v6

    goto :goto_f

    :cond_24
    return-void

    :cond_25
    :goto_10
    move v1, v4

    .line 1396
    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 1397
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v10, :cond_26

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v3, :cond_26

    .line 1398
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/16 v7, 0xe

    invoke-direct {v5, v0, v7, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    const/16 v7, 0xe

    .line 1400
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v5, v0, v4, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    return-void
.end method


# virtual methods
.method public canClickButtonInside()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public dialogsEmptyType()I
    .locals 4

    .line 761
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sget v1, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v0, v1, :cond_1

    .line 762
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->ARCHIVE_ALBUMS:Lcom/iMe/ui/dialogs/EmptyCellType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->ALBUMS:Lcom/iMe/ui/dialogs/EmptyCellType;

    :goto_0
    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_1
    const/16 v1, 0x191

    const/4 v2, 0x3

    if-ne v0, v1, :cond_3

    .line 765
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->isManagementBookmarksLoading:Z

    if-eqz v0, :cond_2

    return v2

    .line 768
    :cond_2
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->BOOKMARKS:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_3
    const/16 v1, 0x192

    if-ne v0, v1, :cond_4

    .line 771
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->DRAFTS:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    .line 773
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 774
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->HIDDEN_CHATS:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_5
    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_6

    .line 777
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 783
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 785
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v0, :cond_7

    .line 786
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->ARCHIVE:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_7
    return v3

    .line 791
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 778
    :cond_a
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_b
    return v2
.end method

.method public didDatabaseCleared()V
    .locals 1

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clear()V

    :cond_0
    return-void
.end method

.method public findDialogPosition(J)I
    .locals 3

    const/4 v0, 0x0

    .line 262
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public fixPosition(I)I
    .locals 2

    .line 216
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 219
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v0, :cond_1

    .line 220
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 222
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 224
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    add-int/lit8 p1, p1, -0x1

    :cond_5
    :goto_1
    return p1
.end method

.method public fixScrollGap(Lorg/telegram/ui/Components/RecyclerListView;IIZZ)I
    .locals 4

    .line 271
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    .line 272
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    goto :goto_0

    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4e

    goto :goto_0

    :cond_1
    const/16 v1, 0x48

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 273
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p3

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 275
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p3

    mul-int v3, p2, v1

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    const/16 p2, 0x2c

    if-eqz p5, :cond_2

    .line 277
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr v2, p2

    goto :goto_1

    .line 279
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v2, p2

    :goto_1
    if-eqz p4, :cond_3

    add-int/2addr v0, v1

    .line 284
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-le v0, p2, :cond_4

    .line 285
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p3, v0

    return p3

    .line 287
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    if-ge v2, p2, :cond_5

    .line 288
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v2

    add-int/2addr p3, p1

    :cond_5
    return p3
.end method

.method public getArchiveHintCellPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->archiveHintCell:Lorg/telegram/ui/Cells/ArchiveHintCell;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ArchiveHintCell;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChatlistUpdate()Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;
    .locals 3

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    if-eqz v0, :cond_0

    .line 1032
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 1033
    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->chatlistUpdates:Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCount()I
    .locals 1

    .line 1248
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getDialogsCount()I
    .locals 1

    .line 247
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    return v0
.end method

.method public getDialogsListIsFrozen()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return v0
.end method

.method public getDialogsType()I
    .locals 1

    .line 243
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_1

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    .line 412
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->contact:Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_2

    .line 413
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->contact:Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    .line 414
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    if-eqz v1, :cond_3

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->access$000(Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isDataSetChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 562
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveDialogs(Lorg/telegram/ui/Components/RecyclerListView;II)V
    .locals 10

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1049
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p2

    .line 1050
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p3

    .line 1051
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1052
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1053
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v5, 0x8

    const/4 v6, 0x7

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 1061
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 1062
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    goto :goto_2

    .line 1054
    :cond_1
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    aget-object v3, v3, v5

    .line 1055
    iget-object v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v5

    .line 1056
    iget-object v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v6

    .line 1057
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1058
    iget-object v1, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1064
    :goto_2
    invoke-static {v0, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 p2, 0x0

    .line 1065
    invoke-virtual {p0, p1, v4, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Lorg/telegram/ui/Components/RecyclerListView;ZF)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 545
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    .line 546
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 1069
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_14

    const/4 v8, 0x4

    if-eq v3, v8, :cond_13

    const/4 v9, 0x5

    const/4 v10, 0x7

    if-eq v3, v9, :cond_f

    const/4 v9, 0x6

    if-eq v3, v9, :cond_e

    const/16 v9, 0xc

    const/16 v11, 0xb

    if-eq v3, v10, :cond_9

    if-eq v3, v11, :cond_7

    if-eq v3, v9, :cond_3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_d

    .line 1008
    :pswitch_0
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsHintCell;

    .line 1009
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    .line 1010
    iget-object v4, v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->chatlistUpdates:Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    if-eqz v4, :cond_2c

    .line 1011
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "FolderUpdatesTitle"

    .line 1014
    invoke-static {v9, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    .line 1013
    invoke-static {v8, v9, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "FolderUpdatesSubtitle"

    .line 1019
    invoke-static {v8, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Cells/DialogsHintCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 924
    :pswitch_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_d

    .line 1003
    :pswitch_2
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    .line 1004
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_d

    .line 956
    :pswitch_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    const/high16 v5, 0x41600000    # 14.0f

    .line 957
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    .line 958
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    .line 959
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 960
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    iget v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;->headerType:I

    if-eqz v5, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v4, :cond_0

    goto/16 :goto_d

    .line 968
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v5, "FilterGroups"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 965
    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->MyGroups:I

    const-string v5, "MyGroups"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 962
    :cond_2
    sget v4, Lorg/telegram/messenger/R$string;->MyChannels:I

    const-string v5, "MyChannels"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 987
    :cond_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 988
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 989
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v4, :cond_5

    .line 990
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-eqz v4, :cond_4

    .line 991
    sget v4, Lorg/telegram/messenger/R$string;->CreateChannelForThis:I

    const-string v5, "CreateChannelForThis"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_channel_create:I

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 993
    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForThis:I

    const-string v5, "CreateGroupForThis"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 996
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForImport:I

    const-string v5, "CreateGroupForImport"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v8, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 998
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->setIsInDialogs()V

    const/16 v4, 0x4b

    .line 999
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    goto/16 :goto_d

    .line 974
    :cond_7
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 975
    sget v4, Lorg/telegram/messenger/R$string;->TapOnThePencil:I

    const-string v6, "TapOnThePencil"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 977
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 978
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 980
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 981
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 982
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 983
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_d

    .line 939
    :cond_9
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 940
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v4, v11, :cond_c

    if-eq v4, v9, :cond_c

    const/16 v5, 0xd

    if-ne v4, v5, :cond_a

    goto :goto_2

    .line 951
    :cond_a
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_b

    sget v4, Lorg/telegram/messenger/R$string;->ConnectingYourContacts:I

    goto :goto_1

    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->YourContacts:I

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_c
    :goto_2
    if-nez v2, :cond_d

    .line 946
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeader:I

    const-string v5, "ImportHeader"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 948
    :cond_d
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeaderContacts:I

    const-string v5, "ImportHeaderContacts"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 933
    :cond_e
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .line 934
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 935
    invoke-virtual {v3, v4, v5, v5, v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    .line 899
    :cond_f
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    .line 900
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 901
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    invoke-virtual {v3, v5, v8}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setType(IZ)V

    .line 902
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v5, v10, :cond_2c

    const/16 v8, 0x8

    if-eq v5, v8, :cond_2c

    if-nez v5, :cond_2c

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isHiddenChats()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 903
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationEndListener(Ljava/lang/Runnable;)V

    .line 904
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationUpdateListener(Landroidx/core/util/Consumer;)V

    .line 905
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v5

    if-nez v5, :cond_10

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v5, :cond_10

    .line 906
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    .line 907
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    .line 909
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v5, :cond_11

    if-nez v4, :cond_11

    .line 910
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 911
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_d

    .line 913
    :cond_11
    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_12

    .line 914
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_2c

    .line 915
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_d

    .line 917
    :cond_12
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    if-nez v4, :cond_2c

    .line 918
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanExpandAnimation()V

    goto/16 :goto_d

    .line 928
    :cond_13
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    .line 929
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setRecentMeUrl(Lorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    goto/16 :goto_d

    .line 799
    :cond_14
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    add-int/lit8 v8, v2, 0x1

    .line 800
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 801
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v9, v4, :cond_1c

    const/16 v4, 0xf

    if-eq v9, v4, :cond_1c

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    sget v9, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v4, v9, :cond_15

    goto/16 :goto_7

    .line 870
    :cond_15
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 871
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setCompactMode(Z)V

    if-eqz v8, :cond_16

    move v5, v7

    goto :goto_3

    :cond_16
    move v5, v6

    .line 872
    :goto_3
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 873
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_17

    if-eqz v8, :cond_17

    iget-boolean v5, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-nez v5, :cond_17

    move v5, v7

    goto :goto_4

    :cond_17
    move v5, v6

    :goto_4
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    .line 874
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v5, :cond_19

    .line 875
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 876
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-wide v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_18

    move v5, v7

    goto :goto_5

    :cond_18
    move v5, v6

    :goto_5
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 879
    :cond_19
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 881
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v8, 0x191

    if-ne v5, v8, :cond_1a

    .line 882
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->loadedBookmarkMessages:Ljava/util/HashMap;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 883
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialogsType(I)V

    .line 884
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v4

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto :goto_6

    .line 886
    :cond_1a
    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;II)V

    .line 887
    :goto_6
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->checkHeight()V

    .line 888
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    if-eq v5, v6, :cond_1b

    .line 889
    iput-boolean v6, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    .line 890
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 892
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v4, :cond_2c

    const/16 v5, 0xa

    if-ge v2, v5, :cond_2c

    .line 893
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->add(J)V

    goto/16 :goto_d

    .line 802
    :cond_1c
    :goto_7
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 803
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v16

    const/4 v14, 0x0

    .line 811
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1d

    .line 812
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_1e

    .line 813
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v10, :cond_1e

    .line 814
    iget v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    if-eqz v10, :cond_1e

    move-object v9, v10

    goto :goto_8

    :cond_1d
    move-object v9, v5

    :cond_1e
    :goto_8
    const-string v10, ""

    if-eqz v9, :cond_26

    .line 823
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 825
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    sget v10, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v3, v10, :cond_1f

    .line 826
    sget v3, Lorg/telegram/messenger/R$string;->cloud_album:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_9
    move-object v13, v3

    move-object v12, v5

    move-object v10, v9

    goto/16 :goto_b

    .line 828
    :cond_1f
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_22

    .line 829
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_20

    const-string v10, "Subscribers"

    .line 830
    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 832
    :cond_20
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 833
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v10, "ChannelPrivate"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 835
    :cond_21
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v10, "ChannelPublic"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 839
    :cond_22
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_23

    const-string v10, "Members"

    .line 840
    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 842
    :cond_23
    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_24

    .line 843
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v10, "MegaLocation"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 844
    :cond_24
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 845
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v10, "MegaPrivate"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 847
    :cond_25
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v10, "MegaPublic"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 853
    :cond_26
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 856
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 857
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 858
    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_27

    .line 859
    sget v9, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v10, "Bot"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 861
    :cond_27
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    :goto_a
    move-object v10, v3

    move-object v12, v5

    move-object v13, v9

    goto :goto_b

    :cond_28
    move-object v12, v5

    move-object v13, v10

    move-object v10, v3

    goto :goto_b

    :cond_29
    move-object v12, v5

    move-object v13, v10

    move-object v10, v12

    :goto_b
    if-eqz v8, :cond_2a

    move v3, v7

    goto :goto_c

    :cond_2a
    move v3, v6

    .line 866
    :goto_c
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v9, v4

    .line 867
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 868
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v8

    cmp-long v5, v16, v8

    if-nez v5, :cond_2b

    move v6, v7

    :cond_2b
    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    .line 1025
    :cond_2c
    :goto_d
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    add-int/2addr v3, v7

    if-lt v2, v3, :cond_2d

    .line 1026
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    return-void
.end method

.method public onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    return-void
.end method

.method public onCreateGroupForThisClick()V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    const/4 p1, 0x5

    const/16 v0, 0xf

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 743
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 744
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v0, :cond_6

    .line 745
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 739
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/DialogsHintCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/DialogsHintCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 647
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$3;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 590
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 662
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v2, 0x20

    .line 663
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 665
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_6

    .line 684
    :pswitch_5
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 732
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 733
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 734
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 735
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 680
    :pswitch_6
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 676
    :pswitch_7
    new-instance v0, Lorg/telegram/ui/Cells/ArchiveHintCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ArchiveHintCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->archiveHintCell:Lorg/telegram/ui/Cells/ArchiveHintCell;

    goto/16 :goto_6

    .line 668
    :pswitch_8
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 669
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 670
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 671
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 672
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 658
    :pswitch_9
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xc

    .line 659
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6

    .line 655
    :pswitch_a
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4, v3, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_6

    .line 644
    :pswitch_b
    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 641
    :pswitch_c
    new-instance v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/DialogMeUrlCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 628
    :pswitch_d
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$2;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 634
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 635
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 636
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 607
    :pswitch_e
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 608
    sget v3, Lorg/telegram/messenger/R$string;->RecentlyViewed:I

    const-string v4, "RecentlyViewed"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 610
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 611
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "fonts/rmedium.ttf"

    .line 612
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 613
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    sget v2, Lorg/telegram/messenger/R$string;->RecentlyViewedHide:I

    const-string v4, "RecentlyViewedHide"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 616
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    or-int/lit8 v7, v4, 0x30

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0x11

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 594
    :pswitch_f
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 595
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v3, 0x12

    const/16 v4, 0xd

    if-ne p2, v4, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x7

    .line 597
    :goto_2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    if-ne v5, v3, :cond_3

    .line 599
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    :cond_3
    if-ne p2, v4, :cond_7

    .line 602
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/16 v3, 0x40

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_6

    .line 574
    :pswitch_10
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    if-eq v2, v0, :cond_5

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    sget v3, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v2, v3, :cond_4

    goto :goto_3

    .line 578
    :cond_4
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 579
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    .line 580
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    .line 581
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    .line 582
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setIsTransitionSupport(Z)V

    goto :goto_4

    .line 576
    :cond_5
    :goto_3
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 585
    :goto_4
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v0, :cond_6

    .line 586
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    :goto_5
    move-object v0, v2

    .line 749
    :cond_7
    :goto_6
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-ne p2, p1, :cond_8

    move p1, v1

    goto :goto_7

    :cond_8
    const/4 p1, -0x2

    :goto_7
    invoke-direct {v2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onReorderStateChanged(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 552
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 553
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 554
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->onReorderStateChanged(ZZ)V

    .line 555
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex(Z)Z

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resume()V

    :cond_0
    return-void
.end method

.method public setArchivedPullDrawable(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V
    .locals 3

    .line 1114
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v0, 0x0

    move v1, v0

    .line 1115
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1116
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1120
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1121
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_2

    .line 1122
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1125
    :goto_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1126
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_4

    .line 1127
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1130
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1131
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_6

    .line 1132
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v1, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setDialogsListFrozen(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    .line 238
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 239
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFolderId(I)V
    .locals 0

    .line 94
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    return-void
.end method

.method public setForceShowEmptyCell(Z)V
    .locals 0

    .line 1252
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    return-void
.end method

.method public setForceUpdatingContacts(Z)V
    .locals 0

    .line 1039
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    return-void
.end method

.method public setInitialDialogsType(I)V
    .locals 0

    .line 98
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    return-void
.end method

.method public setIsTransitionSupport()V
    .locals 1

    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    return-void
.end method

.method public setRecyclerListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    return-void
.end method

.method public setWalletBotHidden(Z)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isWalletBotHidden:Z

    if-eq v0, p1, :cond_0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isWalletBotHidden:Z

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public sortOnlineContacts(Z)V
    .locals 4

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    .line 426
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 427
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 469
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHasHints()V
    .locals 1

    .line 489
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    return-void
.end method

.method public updateList(Lorg/telegram/ui/Components/RecyclerListView;ZF)V
    .locals 9

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 495
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    if-eqz p1, :cond_5

    .line 497
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v4

    .line 502
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 503
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 504
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eq v6, v4, :cond_0

    if-eqz v7, :cond_0

    .line 505
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 508
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    move v2, v1

    move v5, v6

    move-object v1, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_5

    .line 512
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p3

    if-eqz p2, :cond_4

    if-nez v5, :cond_4

    .line 513
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    add-float/2addr p1, p3

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz p2, :cond_2

    const/16 p2, 0x30

    goto :goto_1

    :cond_2
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p2, :cond_3

    const/16 p2, 0x4e

    goto :goto_1

    :cond_3
    const/16 p2, 0x48

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move p3, v2

    :goto_2
    float-to-int p1, p3

    .line 517
    invoke-virtual {v0, v5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 520
    :cond_5
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 540
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
