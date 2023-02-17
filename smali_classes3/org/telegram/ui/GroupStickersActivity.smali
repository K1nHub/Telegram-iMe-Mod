.class public Lorg/telegram/ui/GroupStickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupStickersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupStickersActivity$ListAdapter;,
        Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;
    }
.end annotation


# instance fields
.field private chatId:J

.field private emptyFrameView:Landroid/widget/FrameLayout;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private headerRow:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoRow:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private removeStickerSet:Z

.field private rowCount:I

.field private searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searching:Z

.field private selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private selectedStickerSetIndex:I

.field private stickersEndRow:I

.field private stickersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$Ms90icUGEvkNRQil_oQJVMueRpI(Lorg/telegram/ui/GroupStickersActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGallJITZL7GYuIG6P0t50wFuG4(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;->lambda$saveStickerSet$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mVPhzV9vkjp9aaldwl-Qh0BNVYQ(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->lambda$saveStickerSet$1(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    .line 91
    iput-wide p1, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupStickersActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->infoRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->headerRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/GroupStickersActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 4

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$2200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le p2, v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$2300(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$2200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$2200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$2200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2, v2}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    :cond_2
    :goto_0
    return-void

    .line 210
    :cond_3
    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    if-lt p2, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    if-ge p2, v0, :cond_4

    .line 211
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 212
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$saveStickerSet$1(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_0

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 371
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->putGroupStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 373
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v1, :cond_1

    .line 376
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_1

    .line 378
    :cond_1
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 380
    :goto_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 381
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_2

    .line 384
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v4, "ErrorOccurred"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$saveStickerSet$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 365
    new-instance p1, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStickerSetClicked(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 230
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 231
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 234
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez p3, :cond_1

    move-object v7, p2

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    .line 235
    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->isChecked()Z

    move-result p1

    .line 236
    new-instance p3, Lorg/telegram/ui/GroupStickersActivity$4;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity$4;-><init>(Lorg/telegram/ui/GroupStickersActivity;ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/StickersAlert;->setCustomButtonDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;)V

    .line 318
    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    return-void
.end method

.method private saveStickerSet()V
    .locals 6

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;-><init>()V

    .line 356
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 357
    iget-boolean v1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    if-eqz v1, :cond_2

    .line 358
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_0

    .line 360
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_hide_stickers_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 362
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 363
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 365
    :goto_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    .line 421
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    iget v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->headerRow:I

    .line 424
    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    .line 425
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    .line 426
    iget v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 428
    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->headerRow:I

    .line 429
    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    .line 430
    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    .line 432
    :goto_0
    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->infoRow:I

    .line 433
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private updateSelectedStickerSetIndex()V
    .locals 7

    .line 392
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, -0x1

    .line 393
    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    .line 397
    iget-boolean v2, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    :cond_0
    move-wide v5, v3

    goto :goto_0

    .line 399
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_0

    .line 401
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_0

    .line 402
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_4

    .line 408
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 410
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_3

    .line 411
    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->GroupStickers:I

    const-string v3, "GroupStickers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupStickersActivity$1;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 132
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 133
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupStickersActivity$2;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    .line 164
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    .line 166
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 167
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "windowBackgroundGray"

    .line 168
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 170
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 171
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 172
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 173
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 174
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 175
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 176
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 178
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    const-string v3, "windowBackgroundWhite"

    .line 179
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 181
    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v3, 0x13

    .line 182
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    .line 185
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v2, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v2, p1, v3, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 188
    invoke-static {v2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupStickersActivity$3;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 323
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 324
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 325
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows()V

    goto :goto_0

    .line 327
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_2

    .line 328
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 329
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    .line 330
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_1

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_1

    .line 331
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 333
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 334
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows()V

    goto :goto_0

    .line 336
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_3

    .line 337
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 338
    iget-object p3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p3, :cond_3

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_3

    .line 339
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 717
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/StickerSetCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteGrayText4"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteLinkText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    const-string v4, "valueTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const-string v21, "windowBackgroundWhiteValueText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v7, v6, v11

    const/16 v26, 0x0

    const-string v29, "windowBackgroundGrayShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v6, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText2"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v4, v3, v11

    const-string v4, "optionsButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "stickers_menuSelector"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "stickers_menu"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 96
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 97
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 98
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 99
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 100
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 107
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 108
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 109
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 110
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->saveStickerSet()V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1

    .line 345
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_0

    .line 347
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_0
    return-void
.end method
