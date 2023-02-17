.class public Lorg/telegram/ui/ArchivedStickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private archiveInfoRow:I

.field private currentType:I

.field private doOnTransitionEnd:Ljava/lang/Runnable;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private endReached:Z

.field private firstLoaded:Z

.field private final installingStickerSets:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private isInTransition:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingStickers:Z

.field private rowCount:I

.field private sets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEndRow:I

.field private stickersLoadingRow:I

.field private stickersShadowRow:I

.field private stickersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$7_tmSh0rVy87prAxo933iY-bTVE(Lorg/telegram/ui/ArchivedStickersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArchivedStickersActivity;->lambda$getStickers$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0A8Q3emi651dadRxMV2MnSPNVM(Lorg/telegram/ui/ArchivedStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArchivedStickersActivity;->lambda$getStickers$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwSLjMDvIZvHBebktW27eBH2O0U(Lorg/telegram/ui/ArchivedStickersActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArchivedStickersActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpR5ui1DAvfS9cBW0B3WFvIi82k(Lorg/telegram/ui/ArchivedStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArchivedStickersActivity;->lambda$processResponse$3(Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 43
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->installingStickerSets:Landroidx/collection/LongSparseArray;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    .line 70
    iput p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ArchivedStickersActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ArchivedStickersActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->archiveInfoRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->getStickers()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->installingStickerSets:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method private getStickers()V
    .locals 5

    .line 197
    iget-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    .line 201
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->firstLoaded:Z

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 204
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 207
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;-><init>()V

    .line 208
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_0
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->offset_id:J

    const/16 v2, 0xf

    .line 209
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    .line 210
    iget v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 211
    :goto_2
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->emojis:Z

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 8

    .line 135
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 138
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 139
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 140
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 143
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    .line 145
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 146
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    .line 147
    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/ArchivedStickersActivity$2;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->setInstallDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;)V

    .line 158
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private synthetic lambda$getStickers$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-nez p1, :cond_0

    .line 214
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ArchivedStickersActivity;->processResponse(Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getStickers$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 212
    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processResponse$3(Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArchivedStickersActivity;->processResponse(Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V

    return-void
.end method

.method private processResponse(Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V
    .locals 3

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->isInTransition:Z

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    .line 224
    iput-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    .line 225
    iput-boolean v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->firstLoaded:Z

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 229
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 234
    :cond_2
    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;)V

    iput-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->doOnTransitionEnd:Ljava/lang/Runnable;

    :cond_3
    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 176
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->archiveInfoRow:I

    .line 177
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    .line 178
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    .line 179
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    .line 180
    iget-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 181
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    .line 182
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 184
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    .line 185
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    goto :goto_1

    .line 188
    :cond_2
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->archiveInfoRow:I

    .line 189
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    .line 190
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    .line 191
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    .line 192
    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    :goto_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 94
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ArchivedStickers:I

    const-string v3, "ArchivedStickers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ArchivedMasks:I

    const-string v3, "ArchivedMasks"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ArchivedStickersActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArchivedStickersActivity$1;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 108
    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    .line 110
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 111
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "windowBackgroundGray"

    .line 112
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 114
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 115
    iget v3, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    if-nez v3, :cond_1

    .line 116
    sget v3, Lorg/telegram/messenger/R$string;->ArchivedStickersEmpty:I

    const-string v4, "ArchivedStickersEmpty"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->ArchivedMasksEmpty:I

    const-string v4, "ArchivedMasksEmpty"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 120
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_2

    .line 124
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 127
    :goto_2
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 128
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 129
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 130
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lorg/telegram/ui/ArchivedStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArchivedStickersActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArchivedStickersActivity$3;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 263
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needAddArchivedStickers:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    .line 264
    new-instance p1, Ljava/util/ArrayList;

    aget-object p2, p3, v1

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_2

    .line 266
    iget-object p3, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 268
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 273
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 274
    iget-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 275
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V

    .line 276
    iget-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz p2, :cond_6

    .line 277
    iget p3, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_4

    .line 280
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    if-ne p1, p2, :cond_6

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_6

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_6

    .line 283
    iget-object p3, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 284
    instance-of v2, p3, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    if-eqz v2, :cond_5

    .line 285
    check-cast p3, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    .line 286
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 288
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    iget-object v4, p0, Lorg/telegram/ui/ArchivedStickersActivity;->installingStickerSets:Landroidx/collection/LongSparseArray;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 291
    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setDrawProgress(ZZ)V

    .line 293
    :cond_4
    invoke-virtual {p3, v3, v0, v1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setChecked(ZZZ)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
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

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
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

    .line 399
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v3, v6, v12

    const-class v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v3, v6, v11

    const/4 v9, 0x0

    const-string v10, "windowBackgroundGrayShadow"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v6, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v20, "actionBarDefaultIcon"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v10, "actionBarDefaultTitle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v20, "actionBarDefaultSelector"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v10, "listSelectorSDK21"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v12

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    const-string v20, "divider"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "emptyListPlaceholder"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v20, "progressCircle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v4, v12

    const-string v5, "progressBar"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v28, 0x0

    const-string v29, "progressCircle"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v4, v3, v12

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v6, v5, v12

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText2"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v12

    const/16 v17, 0x0

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v29, "windowBackgroundWhiteGrayText4"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v4, v3, v12

    const-string v4, "deleteButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-string v21, "featuredStickers_removeButtonText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v24, v5, v6

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string v30, "featuredStickers_removeButtonText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v4, v3, v12

    const-string v4, "addButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_buttonText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "featuredStickers_addButton"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v5

    new-array v3, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_addButtonPressed"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 75
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->getStickers()V

    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V

    .line 78
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needAddArchivedStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 79
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 85
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 86
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needAddArchivedStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 87
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 254
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->isInTransition:Z

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->doOnTransitionEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->doOnTransitionEnd:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->isInTransition:Z

    return-void
.end method
