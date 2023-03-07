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

.field private dialogsType:I

.field private folderId:I

.field private forceShowEmptyCell:Z

.field private forceUpdatingContacts:Z

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

    .line 156
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 681
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 157
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 159
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 160
    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    .line 161
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 162
    :goto_0
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    .line 163
    iput-object p6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    .line 164
    iput p7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    .line 166
    sget p5, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-eq p3, p5, :cond_1

    if-ne p4, p2, :cond_1

    .line 168
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p3

    const-string p5, "archivehint"

    .line 169
    invoke-interface {p3, p5, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    .line 170
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p5, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    if-nez p4, :cond_2

    .line 173
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-direct {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    .line 175
    :cond_2
    iput-object p8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 2

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Ljava/lang/Float;)V
    .locals 1

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 1

    .line 545
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 546
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 547
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "installReferer"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 548
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$sortOnlineContacts$0(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 349
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 350
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 354
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 356
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 357
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 361
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 363
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 364
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

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

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateHasHints()V

    .line 1236
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 1237
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 1238
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/4 v3, 0x0

    .line 1239
    iput-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1241
    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-nez v4, :cond_5

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v4, :cond_5

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v4, :cond_5

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-nez v4, :cond_5

    .line 1242
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllFoldersDialogsCount()I

    move-result v4

    const/4 v7, 0x0

    if-gt v4, v5, :cond_4

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    if-eqz v4, :cond_4

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v8

    invoke-virtual {v4, v8}, Lorg/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1243
    new-instance v4, Ljava/util/ArrayList;

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1244
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v8, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 1245
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_2

    .line 1246
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v13, v11, v8

    if-eqz v13, :cond_0

    .line 1247
    iget-object v13, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1248
    :cond_0
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/2addr v10, v6

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1254
    iput-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_1

    .line 1256
    :cond_3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortOnlineContacts(Z)V

    goto :goto_1

    .line 1259
    :cond_4
    iput-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1263
    :cond_5
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v1, :cond_6

    .line 1264
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v7, 0xf

    invoke-direct {v4, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_6
    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/16 v4, 0xe

    const/4 v7, 0x2

    if-nez v1, :cond_1d

    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    if-eqz v1, :cond_7

    goto/16 :goto_f

    .line 1279
    :cond_7
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/16 v8, 0xd

    const/16 v9, 0xb

    const/16 v10, 0xc

    const/16 v13, 0x8

    const/4 v14, 0x7

    if-nez v1, :cond_9

    iget-boolean v15, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v15, :cond_9

    .line 1280
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1281
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-nez v11, :cond_8

    const/4 v11, 0x5

    goto :goto_2

    :cond_8
    const/16 v11, 0x10

    :goto_2
    invoke-direct {v15, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v11, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v11, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v11, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1285
    :cond_9
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v11, :cond_e

    if-nez v1, :cond_b

    .line 1287
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1288
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-nez v11, :cond_a

    const/4 v11, 0x5

    goto :goto_3

    :cond_a
    const/16 v11, 0x10

    :goto_3
    invoke-direct {v8, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 1292
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_c

    .line 1293
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v11, v0, v3, v15}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1295
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1297
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_d

    .line 1298
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v15, 0x6

    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v11, v0, v15, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$TL_contact;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1300
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 1303
    :cond_e
    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v1, :cond_10

    .line 1304
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1305
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v11, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v1, :cond_f

    .line 1307
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v15, 0x4

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-direct {v12, v0, v15, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/16 v5, 0xa

    goto :goto_7

    .line 1309
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/4 v8, 0x3

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1310
    :cond_10
    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    if-eqz v1, :cond_11

    .line 1311
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v8, 0x9

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1313
    :cond_11
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v1, v9, :cond_13

    if-ne v1, v8, :cond_12

    goto :goto_8

    :cond_12
    if-ne v1, v10, :cond_14

    .line 1317
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1314
    :cond_13
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_9
    const/4 v1, 0x0

    .line 1320
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-nez v8, :cond_15

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeChat;

    if-eqz v5, :cond_16

    :cond_15
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-lez v5, :cond_16

    .line 1321
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-nez v1, :cond_18

    const/4 v1, 0x0

    .line 1325
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_18

    .line 1326
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v5, v7, :cond_17

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v5, :cond_17

    .line 1327
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v8, v0, v4, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1329
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v8, v0, v3, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1334
    :cond_18
    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    if-nez v1, :cond_19

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v1, v14, :cond_19

    if-eq v1, v13, :cond_19

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->isManagementDialogsType(I)Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sget v2, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-eq v1, v2, :cond_19

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1335
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1336
    :cond_19
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v1, :cond_1b

    .line 1337
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1338
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-nez v3, :cond_1a

    const/4 v11, 0x5

    goto :goto_d

    :cond_1a
    const/16 v11, 0x10

    :goto_d
    invoke-direct {v2, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1340
    :cond_1b
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v2, :cond_1c

    const/16 v2, 0xa

    if-le v1, v2, :cond_1c

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1341
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v2, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_1d
    :goto_f
    const/4 v1, 0x0

    .line 1269
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1f

    .line 1270
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v5, v7, :cond_1e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v5, :cond_1e

    .line 1271
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v6, v0, v4, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1273
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v6, v0, v3, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    return-void
.end method


# virtual methods
.method public canClickButtonInside()Z
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public dialogsEmptyType()I
    .locals 6

    .line 685
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 686
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sget v4, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    .line 687
    sget-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->ARCHIVE_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    :goto_1
    invoke-virtual {v0}, Lcom/smedialink/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_2
    const/16 v4, 0x191

    const/4 v5, 0x3

    if-ne v3, v4, :cond_4

    .line 690
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->isManagementBookmarksLoading:Z

    if-eqz v0, :cond_3

    return v5

    .line 693
    :cond_3
    sget-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->BOOKMARKS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/smedialink/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_4
    const/16 v4, 0x192

    if-ne v3, v4, :cond_5

    .line 696
    sget-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->DRAFTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/smedialink/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_5
    const/4 v4, 0x2

    if-eqz v0, :cond_7

    if-nez v3, :cond_6

    .line 700
    sget-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->ARCHIVE:Lcom/smedialink/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, Lcom/smedialink/ui/dialogs/EmptyCellType;->id()I

    move-result v0

    return v0

    :cond_6
    return v4

    :cond_7
    const/4 v0, 0x7

    if-eq v3, v0, :cond_a

    const/16 v0, 0x8

    if-eq v3, v0, :cond_a

    .line 705
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/ForkTopicsController;->getInstance(I)Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 712
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    .line 706
    :cond_a
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v4

    :cond_b
    return v5
.end method

.method public didDatabaseCleared()V
    .locals 1

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clear()V

    :cond_0
    return-void
.end method

.method public findDialogPosition(J)I
    .locals 4

    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
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

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

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

    .line 191
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 194
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 196
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    :goto_1
    return p1
.end method

.method public fixScrollGap(Lorg/telegram/ui/Components/RecyclerListView;IIZZ)I
    .locals 4

    .line 238
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    .line 239
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

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p3

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 242
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p3

    mul-int v3, p2, v1

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    const/16 p2, 0x2c

    if-eqz p5, :cond_2

    .line 244
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr v2, p2

    goto :goto_1

    .line 246
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v2, p2

    :goto_1
    if-eqz p4, :cond_3

    add-int/2addr v0, v1

    .line 251
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-le v0, p2, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p3, v0

    return p3

    .line 254
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    if-ge v2, p2, :cond_5

    .line 255
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v2

    add-int/2addr p3, p1

    :cond_5
    return p3
.end method

.method public getArchiveHintCellPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 405
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

.method public getCurrentCount()I
    .locals 1

    .line 1154
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getDialogsCount()I
    .locals 1

    .line 219
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    return v0
.end method

.method public getDialogsListIsFrozen()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return v0
.end method

.method public getDialogsType()I
    .locals 1

    .line 215
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_1

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    .line 332
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->contact:Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_2

    .line 333
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

    .line 334
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    if-eqz v1, :cond_3

    .line 335
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

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 940
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

    .line 489
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

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 945
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p2

    .line 946
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p3

    .line 947
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 948
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 949
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v5, 0x8

    const/4 v6, 0x7

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 967
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 968
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    goto :goto_5

    .line 953
    :cond_1
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 954
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->selectedForwardDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v7, 0xc9

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    aget-object v3, v3, v6

    goto :goto_4

    .line 955
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 956
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->selectedArchiveDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v7, 0x12d

    if-ne v5, v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    aget-object v3, v3, v6

    goto :goto_4

    .line 958
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v7, v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    aget-object v3, v3, v6

    .line 961
    :goto_4
    iget-object v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v5

    .line 962
    iget-object v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v6

    .line 963
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 964
    iget-object v1, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 970
    :goto_5
    invoke-static {v0, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 p2, 0x0

    .line 971
    invoke-virtual {p0, p1, v4, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Lorg/telegram/ui/Components/RecyclerListView;ZF)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 469
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    .line 470
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 975
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 718
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

    .line 845
    :pswitch_0
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_d

    .line 924
    :pswitch_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    .line 925
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_d

    .line 877
    :pswitch_2
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    const/high16 v5, 0x41600000    # 14.0f

    .line 878
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    const-string v5, "windowBackgroundWhiteGrayText"

    .line 879
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    const-string v5, "graySection"

    .line 880
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 881
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    iget v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;->headerType:I

    if-eqz v5, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v4, :cond_0

    goto/16 :goto_d

    .line 889
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v5, "FilterGroups"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 886
    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->MyGroups:I

    const-string v5, "MyGroups"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 883
    :cond_2
    sget v4, Lorg/telegram/messenger/R$string;->MyChannels:I

    const-string v5, "MyChannels"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 908
    :cond_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    const-string v4, "windowBackgroundWhiteBlueText4"

    .line 909
    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v4, :cond_5

    .line 911
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-eqz v4, :cond_4

    .line 912
    sget v4, Lorg/telegram/messenger/R$string;->CreateChannelForThis:I

    const-string v5, "CreateChannelForThis"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_channel_create:I

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 914
    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForThis:I

    const-string v5, "CreateGroupForThis"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 917
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForImport:I

    const-string v5, "CreateGroupForImport"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v8, :cond_6

    const/4 v6, 0x1

    :cond_6
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 919
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->setIsInDialogs()V

    const/16 v4, 0x4b

    .line 920
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    goto/16 :goto_d

    .line 895
    :cond_7
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 896
    sget v4, Lorg/telegram/messenger/R$string;->TapOnThePencil:I

    const-string v6, "TapOnThePencil"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 898
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 899
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const-string v9, "windowBackgroundWhiteGrayText4"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 901
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 902
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 903
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 904
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_d

    .line 860
    :cond_9
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 861
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v4, v11, :cond_c

    if-eq v4, v9, :cond_c

    const/16 v5, 0xd

    if-ne v4, v5, :cond_a

    goto :goto_2

    .line 872
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

    .line 867
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeader:I

    const-string v5, "ImportHeader"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 869
    :cond_d
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeaderContacts:I

    const-string v5, "ImportHeaderContacts"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 854
    :cond_e
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .line 855
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 856
    invoke-virtual {v3, v4, v5, v5, v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    .line 820
    :cond_f
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    .line 821
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 822
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setType(I)V

    .line 823
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v5, v10, :cond_2c

    const/16 v8, 0x8

    if-eq v5, v8, :cond_2c

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v5

    if-nez v5, :cond_2c

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 824
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationEndListener(Ljava/lang/Runnable;)V

    .line 825
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationUpdateListener(Landroidx/core/util/Consumer;)V

    .line 826
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v5

    if-nez v5, :cond_10

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v5, :cond_10

    .line 827
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    .line 828
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    .line 830
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v5, :cond_11

    if-nez v4, :cond_11

    .line 831
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 832
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_d

    .line 834
    :cond_11
    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_12

    .line 835
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_2c

    .line 836
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_d

    .line 838
    :cond_12
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    if-nez v4, :cond_2c

    .line 839
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanExpandAnimation()V

    goto/16 :goto_d

    .line 849
    :cond_13
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    .line 850
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setRecentMeUrl(Lorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    goto/16 :goto_d

    .line 720
    :cond_14
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    add-int/lit8 v8, v2, 0x1

    .line 721
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 722
    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v9, v4, :cond_1c

    const/16 v4, 0xf

    if-eq v9, v4, :cond_1c

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    sget v9, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v4, v9, :cond_15

    goto/16 :goto_7

    .line 791
    :cond_15
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 792
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setCompactMode(Z)V

    if-eqz v8, :cond_16

    const/4 v5, 0x1

    goto :goto_3

    :cond_16
    const/4 v5, 0x0

    .line 793
    :goto_3
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 794
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_17

    if-eqz v8, :cond_17

    iget-boolean v5, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-nez v5, :cond_17

    const/4 v5, 0x1

    goto :goto_4

    :cond_17
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    .line 795
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v5, :cond_19

    .line 796
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 797
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-wide v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_18

    const/4 v5, 0x1

    goto :goto_5

    :cond_18
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 800
    :cond_19
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 802
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v8, 0x191

    if-ne v5, v8, :cond_1a

    .line 803
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

    .line 804
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialogsType(I)V

    .line 805
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v4

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto :goto_6

    .line 807
    :cond_1a
    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;II)V

    .line 808
    :goto_6
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->checkHeight()V

    .line 809
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    if-eq v5, v6, :cond_1b

    .line 810
    iput-boolean v6, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    .line 811
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 813
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v4, :cond_2c

    const/16 v5, 0xa

    if-ge v2, v5, :cond_2c

    .line 814
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->add(J)V

    goto/16 :goto_d

    .line 723
    :cond_1c
    :goto_7
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 724
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v16

    const/4 v14, 0x0

    .line 732
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1d

    .line 733
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

    .line 734
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v10, :cond_1e

    .line 735
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

    .line 744
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 746
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    sget v10, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v3, v10, :cond_1f

    .line 747
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

    .line 749
    :cond_1f
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_22

    .line 750
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_20

    const-string v10, "Subscribers"

    .line 751
    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 753
    :cond_20
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 754
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v10, "ChannelPrivate"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 756
    :cond_21
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v10, "ChannelPublic"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 760
    :cond_22
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_23

    const-string v10, "Members"

    .line 761
    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 763
    :cond_23
    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_24

    .line 764
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v10, "MegaLocation"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 765
    :cond_24
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 766
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v10, "MegaPrivate"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 768
    :cond_25
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v10, "MegaPublic"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 774
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

    .line 777
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 778
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 779
    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_27

    .line 780
    sget v9, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v10, "Bot"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 782
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

    const/4 v3, 0x1

    goto :goto_c

    :cond_2a
    const/4 v3, 0x0

    .line 787
    :goto_c
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v9, v4

    .line 788
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 789
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

    const/4 v6, 0x1

    :cond_2b
    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    .line 929
    :cond_2c
    :goto_d
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    add-int/2addr v3, v7

    if-lt v2, v3, :cond_2d

    .line 930
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2d
    return-void

    :pswitch_data_0
    .packed-switch 0xe
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
    .locals 13

    const-string p1, "windowBackgroundWhite"

    const/4 v0, 0x5

    const/16 v1, 0xf

    const-string v2, "windowBackgroundGrayShadow"

    const-string v3, "windowBackgroundGray"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    .line 667
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 668
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v1, :cond_6

    .line 669
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 574
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$3;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 517
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 589
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "key_graySectionText"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    const/16 v1, 0x20

    .line 590
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 592
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_6

    .line 611
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$4;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 659
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v1, v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 660
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v6, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 661
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 662
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 607
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 603
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/ArchiveHintCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/ArchiveHintCell;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->archiveHintCell:Lorg/telegram/ui/Cells/ArchiveHintCell;

    goto/16 :goto_6

    .line 595
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v1, v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 597
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v6, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 598
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 599
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 585
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xc

    .line 586
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v6, v6, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6

    .line 582
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-direct {p1, v1, v2, v6, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_6

    .line 571
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 568
    :pswitch_b
    new-instance p1, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/DialogMeUrlCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 555
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 561
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 562
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 563
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v3, v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 534
    :pswitch_d
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 535
    sget v1, Lorg/telegram/messenger/R$string;->RecentlyViewed:I

    const-string v2, "RecentlyViewed"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 537
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 538
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "fonts/rmedium.ttf"

    .line 539
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v2, "windowBackgroundWhiteBlueHeader"

    .line 540
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    sget v2, Lorg/telegram/messenger/R$string;->RecentlyViewedHide:I

    const-string v3, "RecentlyViewedHide"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 543
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    :goto_1
    or-int/lit8 v7, v3, 0x30

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0x11

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 521
    :pswitch_e
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v1, 0x12

    const/16 v2, 0xd

    if-ne p2, v2, :cond_2

    const/16 v3, 0x12

    goto :goto_2

    :cond_2
    const/4 v3, 0x7

    .line 524
    :goto_2
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    if-ne v3, v1, :cond_3

    .line 526
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    :cond_3
    if-ne p2, v2, :cond_7

    .line 529
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_6

    .line 501
    :pswitch_f
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    if-eq v2, v1, :cond_5

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    sget v3, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v2, v3, :cond_4

    goto :goto_3

    .line 505
    :cond_4
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 506
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    .line 507
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    .line 508
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    .line 509
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setIsTransitionSupport(Z)V

    goto :goto_4

    .line 503
    :cond_5
    :goto_3
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 512
    :goto_4
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v1, :cond_6

    .line 513
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    :goto_5
    move-object p1, v2

    .line 673
    :cond_7
    :goto_6
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-ne p2, v0, :cond_8

    const/4 p2, -0x1

    goto :goto_7

    :cond_8
    const/4 p2, -0x2

    :goto_7
    invoke-direct {v1, v4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_4
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onReorderStateChanged(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 476
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    .line 478
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->onReorderStateChanged(ZZ)V

    .line 479
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    .line 482
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex(Z)Z

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resume()V

    :cond_0
    return-void
.end method

.method public setArchivedPullDrawable(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V
    .locals 3

    .line 1020
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1021
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1022
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_0

    .line 1023
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1026
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1027
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_2

    .line 1028
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1031
    :goto_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1032
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_4

    .line 1033
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1036
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1037
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_6

    .line 1038
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

    .line 397
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 2

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->showArchiveHint:Z

    .line 210
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFolderId(I)V
    .locals 0

    .line 90
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    return-void
.end method

.method public setForceShowEmptyCell(Z)V
    .locals 0

    .line 1158
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    return-void
.end method

.method public setForceUpdatingContacts(Z)V
    .locals 0

    .line 935
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    return-void
.end method

.method public setInitialDialogsType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->initialDialogsType:I

    return-void
.end method

.method public setIsTransitionSupport()V
    .locals 1

    const/4 v0, 0x1

    .line 1016
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 0

    .line 183
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    return-void
.end method

.method public setRecyclerListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    return-void
.end method

.method public sortOnlineContacts(Z)V
    .locals 5

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    .line 346
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 347
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 389
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHasHints()V
    .locals 1

    .line 409
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

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 415
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    if-eqz p1, :cond_5

    .line 417
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 418
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 422
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 423
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 424
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eq v6, v4, :cond_0

    if-eqz v7, :cond_0

    .line 425
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 428
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

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p3

    if-eqz p2, :cond_4

    if-nez v5, :cond_4

    .line 433
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

    .line 437
    invoke-virtual {v0, v5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 443
    :cond_5
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 463
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
