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

.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 182
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    const/16 v0, 0xa

    .line 292
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->stableIdPointer:I

    .line 293
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsStableIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v0, -0x1

    .line 796
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 183
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 185
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 186
    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    .line 187
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 188
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    .line 189
    iput-object p6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    .line 190
    iput p7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    if-nez p4, :cond_1

    .line 193
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-direct {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    .line 195
    :cond_1
    iput-object p8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/DialogsActivity;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

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

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Ljava/lang/Float;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 1

    .line 639
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 641
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "installReferer"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$sortOnlineContacts$0(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 443
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 444
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 448
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 450
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 451
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 455
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 457
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 458
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

    .line 1428
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateHasHints()V

    .line 1431
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 1432
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/4 v4, 0x0

    .line 1437
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    const/4 v5, 0x5

    if-nez v3, :cond_3

    .line 1438
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1440
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1443
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1441
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v3

    invoke-direct {v2, v0, v5, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    .line 1447
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-nez v3, :cond_9

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v3, :cond_9

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v3, :cond_9

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-nez v3, :cond_9

    .line 1448
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllFoldersDialogsCount()I

    move-result v3

    const/4 v8, 0x0

    if-gt v3, v6, :cond_8

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    if-eqz v3, :cond_8

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1449
    new-instance v3, Ljava/util/ArrayList;

    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1450
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v9, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 1451
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v11, v4

    :goto_2
    if-ge v11, v3, :cond_6

    .line 1452
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v14, v12, v9

    if-eqz v14, :cond_4

    .line 1453
    iget-object v14, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v14, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1454
    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_5
    add-int/2addr v11, v7

    goto :goto_2

    .line 1459
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1460
    iput-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_3

    .line 1462
    :cond_7
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortOnlineContacts(Z)V

    goto :goto_3

    .line 1465
    :cond_8
    iput-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1469
    :cond_9
    :goto_3
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    .line 1470
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x7

    if-eq v3, v10, :cond_a

    if-ne v3, v9, :cond_c

    .line 1471
    :cond_a
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    if-ne v3, v8, :cond_b

    move v3, v7

    goto :goto_4

    :cond_b
    move v3, v4

    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v11

    invoke-virtual {v1, v3, v11}, Lorg/telegram/messenger/MessagesController;->getSelectedDialogFilter(ZZ)[Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v3

    iget v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sub-int/2addr v11, v10

    aget-object v3, v3, v11

    if-eqz v3, :cond_c

    .line 1472
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1473
    iget v11, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v11, v4}, Lorg/telegram/messenger/MessagesController;->checkChatlistFolderUpdate(IZ)V

    .line 1474
    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChatlistFolderUpdates(I)Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1475
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_c

    .line 1476
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    .line 1477
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_d

    .line 1483
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v12, 0xf

    invoke-direct {v11, v0, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_d
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v12, 0x2

    if-nez v3, :cond_27

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    if-eqz v3, :cond_e

    goto/16 :goto_12

    .line 1499
    :cond_e
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/16 v13, 0xd

    const/16 v14, 0xb

    const/16 v11, 0x10

    if-nez v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v3, :cond_10

    .line 1500
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1501
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_f

    .line 1502
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1504
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v15

    invoke-direct {v8, v0, v5, v15}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1509
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v3, v10, :cond_15

    if-eq v3, v9, :cond_15

    .line 1510
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v3, :cond_12

    .line 1511
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1512
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_11

    .line 1513
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1515
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v13

    invoke-direct {v8, v0, v5, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    move v3, v4

    .line 1520
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_13

    .line 1521
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v13, v0, v4, v15}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1523
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move v3, v4

    .line 1526
    :goto_9
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_14

    .line 1527
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v15, 0x6

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v13, v0, v15, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$TL_contact;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    goto :goto_9

    .line 1529
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto/16 :goto_d

    .line 1531
    :cond_15
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v3, :cond_17

    .line 1532
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1533
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v13, v0, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v4

    :goto_a
    if-ge v5, v3, :cond_16

    .line 1535
    iget-object v13, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v11, 0x4

    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-direct {v15, v0, v11, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    const/16 v11, 0x10

    goto :goto_a

    .line 1537
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1538
    :cond_17
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v3, v14, :cond_19

    if-ne v3, v13, :cond_18

    goto :goto_b

    :cond_18
    const/16 v5, 0xc

    if-ne v3, v5, :cond_1a

    .line 1542
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1539
    :cond_19
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v6, 0xc

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_c
    move v3, v4

    .line 1545
    :goto_d
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-nez v6, :cond_1b

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeChat;

    if-eqz v5, :cond_1c

    :cond_1b
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-lez v5, :cond_1c

    .line 1546
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v8, 0xc

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-nez v3, :cond_24

    move v3, v4

    .line 1550
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1e

    .line 1551
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v5, v12, :cond_1d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v5, :cond_1d

    .line 1552
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/16 v11, 0xe

    invoke-direct {v6, v0, v11, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1554
    :cond_1d
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v6, v0, v4, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1557
    :cond_1e
    iget-boolean v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    if-nez v2, :cond_20

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v2, v10, :cond_20

    if-eq v2, v9, :cond_20

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v2

    if-nez v2, :cond_20

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sget v3, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_DRAFTS:I

    if-eq v2, v3, :cond_20

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-eq v2, v12, :cond_20

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1558
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v2, :cond_1f

    .line 1559
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v5, 0xa

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1562
    :cond_20
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v2, :cond_22

    .line 1563
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1564
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v2, :cond_21

    .line 1565
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v5, 0x10

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1567
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    const/4 v6, 0x5

    invoke-direct {v3, v0, v6, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1570
    :cond_22
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v3, :cond_23

    const/16 v3, 0xa

    if-le v2, v3, :cond_23

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v2, :cond_23

    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1571
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v5, 0xa

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_24
    :goto_10
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->hiddenUndoChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1578
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_26

    .line 1579
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    .line 1580
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v3, :cond_25

    iget-object v2, v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v2, :cond_25

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isHiddenByUndo(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1581
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_25
    add-int/2addr v4, v7

    goto :goto_11

    :cond_26
    return-void

    :cond_27
    :goto_12
    move v1, v4

    .line 1487
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 1488
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v12, :cond_28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v3, :cond_28

    .line 1489
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/16 v7, 0xe

    invoke-direct {v5, v0, v7, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    const/16 v7, 0xe

    .line 1491
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v5, v0, v4, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1494
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public canClickButtonInside()Z
    .locals 1

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public dialogsEmptyType()I
    .locals 3

    .line 800
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
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

    .line 803
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sget v1, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_DRAFTS:I

    if-ne v0, v1, :cond_2

    .line 804
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->DRAFTS:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    .line 806
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 807
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->HIDDEN_CHATS:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_3
    const/4 v1, 0x7

    if-eq v0, v1, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    if-nez v0, :cond_4

    .line 810
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 816
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 818
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v0, :cond_5

    .line 819
    sget-object v0, Lcom/iMe/ui/dialogs/EmptyCellType;->ARCHIVE:Lcom/iMe/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_5
    return v2

    .line 824
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 811
    :cond_8
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    const/4 v0, 0x3

    return v0
.end method

.method public didDatabaseCleared()V
    .locals 1

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clear()V

    :cond_0
    return-void
.end method

.method public findDialogPosition(J)I
    .locals 3

    const/4 v0, 0x0

    .line 254
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 255
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

    .line 211
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 214
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v0, :cond_1

    .line 215
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 217
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 p1, p1, -0x2

    :cond_4
    :goto_1
    return p1
.end method

.method public fixScrollGap(Lorg/telegram/ui/Components/RecyclerListView;IIZZZZ)I
    .locals 2

    .line 263
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    .line 264
    sget-boolean p7, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz p7, :cond_0

    const/16 p7, 0x30

    goto :goto_0

    :cond_0
    sget-boolean p7, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p7, :cond_1

    const/16 p7, 0x4e

    goto :goto_0

    :cond_1
    const/16 p7, 0x48

    :goto_0
    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p7

    .line 265
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 267
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p3

    mul-int v1, p2, p7

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    if-eqz p5, :cond_2

    const/16 p2, 0x51

    .line 270
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    goto :goto_1

    :cond_2
    if-eqz p6, :cond_3

    const/16 p2, 0x2c

    .line 272
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    add-int/2addr v0, p7

    .line 282
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-le v0, p1, :cond_5

    add-int/2addr p3, p1

    sub-int/2addr p3, v0

    :cond_5
    return p3
.end method

.method public getArchiveHintCellPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 499
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

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    if-eqz v0, :cond_0

    .line 1062
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 1063
    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->chatlistUpdates:Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCount()I
    .locals 1

    .line 1312
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getDialogsCount()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    return v0
.end method

.method public getDialogsListIsFrozen()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return v0
.end method

.method public getDialogsType()I
    .locals 1

    .line 235
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_1

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    .line 426
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->contact:Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_2

    .line 427
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

    .line 428
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    if-eqz v1, :cond_3

    .line 429
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

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getItemHeight(I)I
    .locals 2

    .line 1589
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4e

    goto :goto_0

    :cond_1
    const/16 v0, 0x48

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1590
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v1, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v1, :cond_4

    .line 1591
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-boolean p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->isForumCell:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    if-nez p1, :cond_3

    .line 1592
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x56

    goto :goto_1

    :cond_2
    const/16 p1, 0x5b

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 244
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

    .line 1074
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

    .line 583
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

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveDialogs(Lorg/telegram/ui/Components/RecyclerListView;II)V
    .locals 10

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1079
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p2

    .line 1080
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p3

    .line 1081
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1082
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1083
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v5, 0x8

    const/4 v6, 0x7

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 1091
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 1092
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    goto :goto_3

    .line 1084
    :cond_1
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->getSelectedDialogFilter(ZZ)[Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v6, v5, :cond_3

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    aget-object v3, v3, v8

    .line 1085
    iget-object v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v5

    .line 1086
    iget-object v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v6

    .line 1087
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1088
    iget-object v1, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1094
    :goto_3
    invoke-static {v0, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 p2, 0x0

    .line 1095
    invoke-virtual {p0, p1, v4, p2, v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Lorg/telegram/ui/Components/RecyclerListView;ZFZ)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 566
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    .line 567
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 1100
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method protected onArchiveSettingsClick()V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_16

    const/4 v8, 0x4

    if-eq v3, v8, :cond_15

    const/4 v9, 0x5

    const/4 v10, 0x7

    if-eq v3, v9, :cond_11

    const/4 v9, 0x6

    if-eq v3, v9, :cond_10

    const/16 v9, 0xc

    const/16 v11, 0xb

    if-eq v3, v10, :cond_b

    if-eq v3, v11, :cond_8

    if-eq v3, v9, :cond_3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_d

    .line 1038
    :pswitch_0
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsHintCell;

    .line 1039
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    .line 1040
    iget-object v4, v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->chatlistUpdates:Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    if-eqz v4, :cond_2e

    .line 1041
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "FolderUpdatesTitle"

    .line 1044
    invoke-static {v9, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    .line 1043
    invoke-static {v8, v9, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "FolderUpdatesSubtitle"

    .line 1049
    invoke-static {v8, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1042
    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Cells/DialogsHintCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 951
    :pswitch_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_d

    .line 1033
    :pswitch_2
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    .line 1034
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_d

    .line 983
    :pswitch_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    const/high16 v5, 0x41600000    # 14.0f

    .line 984
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    .line 985
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    .line 986
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 987
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    iget v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;->headerType:I

    if-eqz v5, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v4, :cond_0

    goto/16 :goto_d

    .line 995
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v5, "FilterGroups"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 992
    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->MyGroups:I

    const-string v5, "MyGroups"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 989
    :cond_2
    sget v4, Lorg/telegram/messenger/R$string;->MyChannels:I

    const-string v5, "MyChannels"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1014
    :cond_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCell;

    if-nez v4, :cond_4

    return-void

    .line 1017
    :cond_4
    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 1018
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1019
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v4, :cond_6

    .line 1020
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-eqz v4, :cond_5

    .line 1021
    sget v4, Lorg/telegram/messenger/R$string;->CreateChannelForThis:I

    const-string v5, "CreateChannelForThis"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_channel_create:I

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1023
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForThis:I

    const-string v5, "CreateGroupForThis"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1026
    :cond_6
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForImport:I

    const-string v5, "CreateGroupForImport"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v8, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1028
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->setIsInDialogs()V

    const/16 v4, 0x4b

    .line 1029
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    goto/16 :goto_d

    .line 1001
    :cond_8
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1002
    sget v4, Lorg/telegram/messenger/R$string;->TapOnThePencil:I

    const-string v6, "TapOnThePencil"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_9

    .line 1004
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1005
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1007
    :cond_9
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 1008
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1009
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_a

    iget-boolean v4, v4, Lorg/telegram/ui/DialogsActivity;->storiesEnabled:Z

    if-eqz v4, :cond_a

    move-object v4, v5

    goto :goto_1

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1010
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_d

    .line 966
    :cond_b
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 967
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v4, v11, :cond_e

    if-eq v4, v9, :cond_e

    const/16 v5, 0xd

    if-ne v4, v5, :cond_c

    goto :goto_3

    .line 978
    :cond_c
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_d

    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_d

    sget v4, Lorg/telegram/messenger/R$string;->ConnectingYourContacts:I

    goto :goto_2

    :cond_d
    sget v4, Lorg/telegram/messenger/R$string;->YourContacts:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_e
    :goto_3
    if-nez v2, :cond_f

    .line 973
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeader:I

    const-string v5, "ImportHeader"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 975
    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeaderContacts:I

    const-string v5, "ImportHeaderContacts"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 960
    :cond_10
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .line 961
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 962
    invoke-virtual {v3, v4, v5, v5, v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    .line 926
    :cond_11
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    .line 927
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 928
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    invoke-virtual {v3, v5, v8}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setType(IZ)V

    .line 929
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v5, v10, :cond_2e

    const/16 v8, 0x8

    if-eq v5, v8, :cond_2e

    if-nez v5, :cond_2e

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isArchive()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isHiddenChats()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 930
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationEndListener(Ljava/lang/Runnable;)V

    .line 931
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationUpdateListener(Landroidx/core/util/Consumer;)V

    .line 932
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v5

    if-nez v5, :cond_12

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v5, :cond_12

    .line 933
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    .line 934
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    .line 936
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v5, :cond_13

    if-nez v4, :cond_13

    .line 937
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 938
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_d

    .line 940
    :cond_13
    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_14

    .line 941
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_2e

    .line 942
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_d

    .line 944
    :cond_14
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    if-nez v4, :cond_2e

    .line 945
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanExpandAnimation()V

    goto/16 :goto_d

    .line 955
    :cond_15
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    .line 956
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setRecentMeUrl(Lorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    goto/16 :goto_d

    .line 832
    :cond_16
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    add-int/lit8 v8, v2, 0x1

    .line 833
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 834
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v9, v4, :cond_1e

    const/16 v4, 0xf

    if-eq v9, v4, :cond_1e

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_7

    .line 903
    :cond_17
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 904
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setCompactMode(Z)V

    if-eqz v8, :cond_18

    move v5, v7

    goto :goto_4

    :cond_18
    move v5, v6

    .line 905
    :goto_4
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 906
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_19

    if-eqz v8, :cond_19

    iget-boolean v5, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-nez v5, :cond_19

    move v5, v7

    goto :goto_5

    :cond_19
    move v5, v6

    :goto_5
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    .line 907
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v5, :cond_1b

    .line 908
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 909
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-wide v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_1a

    move v5, v7

    goto :goto_6

    :cond_1a
    move v5, v6

    :goto_6
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 912
    :cond_1b
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 913
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1c

    move v6, v7

    :cond_1c
    invoke-virtual {v4, v3, v5, v8, v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;IIZ)V

    .line 914
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->checkHeight()V

    .line 915
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    if-eq v5, v6, :cond_1d

    .line 916
    iput-boolean v6, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    .line 917
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 919
    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v4, :cond_2e

    const/16 v5, 0xa

    if-ge v2, v5, :cond_2e

    .line 920
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->add(J)V

    goto/16 :goto_d

    .line 835
    :cond_1e
    :goto_7
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 836
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v16

    const/4 v14, 0x0

    .line 844
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1f

    .line 845
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 846
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v10, :cond_20

    .line 847
    iget v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    if-eqz v10, :cond_20

    move-object v9, v10

    goto :goto_8

    :cond_1f
    move-object v9, v5

    :cond_20
    :goto_8
    const-string v10, ""

    if-eqz v9, :cond_28

    .line 856
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 858
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 859
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

    .line 861
    :cond_21
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_24

    .line 862
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_22

    const-string v10, "Subscribers"

    .line 863
    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 865
    :cond_22
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 866
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v10, "ChannelPrivate"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 868
    :cond_23
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v10, "ChannelPublic"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 872
    :cond_24
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_25

    const-string v10, "Members"

    .line 873
    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 875
    :cond_25
    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_26

    .line 876
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v10, "MegaLocation"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 877
    :cond_26
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 878
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v10, "MegaPrivate"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 880
    :cond_27
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v10, "MegaPublic"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 886
    :cond_28
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 889
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 890
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_2a

    .line 891
    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_29

    .line 892
    sget v9, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v10, "Bot"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 894
    :cond_29
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    :goto_a
    move-object v10, v3

    move-object v12, v5

    move-object v13, v9

    goto :goto_b

    :cond_2a
    move-object v12, v5

    move-object v13, v10

    move-object v10, v3

    goto :goto_b

    :cond_2b
    move-object v12, v5

    move-object v13, v10

    move-object v10, v12

    :goto_b
    if-eqz v8, :cond_2c

    move v3, v7

    goto :goto_c

    :cond_2c
    move v3, v6

    .line 899
    :goto_c
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v9, v4

    .line 900
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 901
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

    if-nez v5, :cond_2d

    move v6, v7

    :cond_2d
    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    .line 1055
    :cond_2e
    :goto_d
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    add-int/2addr v3, v7

    if-lt v2, v3, :cond_2f

    .line 1056
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2f
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
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x5

    const/16 v3, 0xf

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    .line 777
    :pswitch_0
    new-instance v5, Lorg/telegram/ui/Cells/TextCell;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 778
    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v6, v3, :cond_6

    .line 779
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 697
    :pswitch_1
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 698
    new-instance v5, Lorg/telegram/ui/Components/ArchiveHelp;

    iget-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/ArchiveHelp;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/16 v14, 0x11

    const/4 v15, 0x0

    const/16 v16, -0x28

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 700
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 698
    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 767
    :pswitch_2
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$5;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 764
    :pswitch_3
    new-instance v3, Lorg/telegram/ui/Cells/DialogsHintCell;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Cells/DialogsHintCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 668
    :pswitch_4
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$3;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 611
    :pswitch_5
    new-instance v3, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 683
    :pswitch_6
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v5, 0x20

    .line 684
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 686
    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_6

    .line 709
    :pswitch_7
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$4;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 757
    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 758
    new-instance v7, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v7, v8, v6}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 759
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 760
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 705
    :pswitch_8
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 689
    :pswitch_9
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 690
    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 691
    new-instance v7, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v7, v8, v6}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 693
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 679
    :pswitch_a
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xc

    .line 680
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v6, v6, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6

    .line 676
    :pswitch_b
    new-instance v3, Lorg/telegram/ui/Cells/UserCell;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v6, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_6

    .line 665
    :pswitch_c
    new-instance v3, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 662
    :pswitch_d
    new-instance v3, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Cells/DialogMeUrlCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 649
    :pswitch_e
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$2;

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 655
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 656
    new-instance v5, Landroid/view/View;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 657
    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 628
    :pswitch_f
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 629
    sget v6, Lorg/telegram/messenger/R$string;->RecentlyViewed:I

    const-string v7, "RecentlyViewed"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 631
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 632
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "fonts/rmedium.ttf"

    .line 633
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 634
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    sget v5, Lorg/telegram/messenger/R$string;->RecentlyViewedHide:I

    const-string v7, "RecentlyViewedHide"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 637
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    or-int/lit8 v10, v7, 0x30

    const/16 v11, 0x11

    const/16 v12, 0xf

    const/16 v13, 0x11

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 615
    :pswitch_10
    new-instance v3, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 616
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v6, 0x12

    const/16 v7, 0xd

    if-ne v1, v7, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    const/4 v8, 0x7

    .line 618
    :goto_2
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    if-ne v8, v6, :cond_3

    .line 620
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    :cond_3
    if-ne v1, v7, :cond_7

    .line 623
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    const/16 v6, 0x40

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_6

    .line 595
    :pswitch_11
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    if-eq v5, v3, :cond_5

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    .line 596
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 599
    :cond_4
    new-instance v5, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 600
    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    .line 601
    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    .line 602
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    .line 603
    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setIsTransitionSupport(Z)V

    goto :goto_4

    .line 597
    :cond_5
    :goto_3
    new-instance v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 606
    :goto_4
    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v6, v3, :cond_6

    .line 607
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    :goto_5
    move-object v3, v5

    .line 784
    :cond_7
    :goto_6
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eq v1, v2, :cond_9

    const/16 v2, 0x13

    if-ne v1, v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v1, -0x2

    goto :goto_8

    :cond_9
    :goto_7
    move v1, v4

    :goto_8
    invoke-direct {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onReorderStateChanged(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 573
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 574
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 575
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->onReorderStateChanged(ZZ)V

    .line 576
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex(Z)Z

    .line 577
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

.method public openHiddenStories()V
    .locals 13

    .line 1157
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1161
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PeerStories;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1162
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1164
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PeerStories;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    if-eqz v1, :cond_2

    .line 1165
    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v6

    if-eqz v6, :cond_3

    .line 1166
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1170
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public openStory(Lorg/telegram/ui/Cells/DialogCell;Ljava/lang/Runnable;)V
    .locals 3

    .line 1142
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    .line 1143
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady(Ljava/lang/Runnable;)V

    .line 1145
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resume()V

    :cond_0
    return-void
.end method

.method public setArchivedPullDrawable(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V
    .locals 3

    .line 1178
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v0, 0x0

    move v1, v0

    .line 1179
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1180
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_0

    .line 1181
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1184
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1185
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_2

    .line 1186
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1189
    :goto_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1190
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_4

    .line 1191
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1194
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1195
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_6

    .line 1196
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

    .line 491
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 0

    .line 230
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFolderId(I)V
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    return-void
.end method

.method public setForceShowEmptyCell(Z)V
    .locals 0

    .line 1316
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    return-void
.end method

.method public setForceUpdatingContacts(Z)V
    .locals 0

    .line 1069
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    return-void
.end method

.method public setInitialDialogsType(I)V
    .locals 0

    .line 105
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    return-void
.end method

.method public setIsTransitionSupport()V
    .locals 1

    const/4 v0, 0x1

    .line 1174
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 0

    .line 203
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    return-void
.end method

.method public setRecyclerListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    return-void
.end method

.method public sortOnlineContacts(Z)V
    .locals 4

    .line 435
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

    .line 438
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    .line 440
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 441
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 442
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 486
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHasHints()V
    .locals 1

    .line 503
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

.method public updateList(Lorg/telegram/ui/Components/RecyclerListView;ZFZ)V
    .locals 9

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 509
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    if-eqz p1, :cond_4

    .line 511
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 512
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v4

    .line 516
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 517
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 518
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eq v6, v4, :cond_0

    if-eqz v7, :cond_0

    .line 519
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 522
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    move v2, v1

    move v5, v6

    move-object v1, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    .line 526
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    move p3, v3

    .line 532
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p4

    const/4 v4, 0x1

    if-eq p4, v4, :cond_4

    if-eqz p2, :cond_3

    if-nez v5, :cond_3

    .line 533
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    move v2, p3

    move v5, v4

    :cond_3
    float-to-int p1, v2

    .line 537
    invoke-virtual {v0, v5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 541
    :cond_4
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 561
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
