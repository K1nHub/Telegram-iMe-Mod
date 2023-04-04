.class Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersGridAdapter"
.end annotation


# instance fields
.field private cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cacheParents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private packStartPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private positionToRow:Landroid/util/SparseIntArray;

.field private rowStartPack:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private totalItems:I


# direct methods
.method public static synthetic $r8$lambda$IVXUulgU1wljxZuVSFvPkdBN1Kk(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->lambda$onCreateViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6dDRZPT8hRRKx538X5xLeDMQGQ(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->lambda$onCreateViewHolder$4(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDZi0vIGPivE_Qr9rhhnvvjApYE(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->lambda$onCreateViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cwAQAgeq_fht9PpMnH-4HMzwjTU(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Lorg/telegram/ui/Cells/StickerSetNameCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/StickerSetNameCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoQaMeP8PxL-4g8qQl-JH4Gti1g(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->lambda$onCreateViewHolder$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 7335
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 7328
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    .line 7329
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    .line 7330
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    .line 7331
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    .line 7332
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    .line 7336
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I
    .locals 0

    .line 7324
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I
    .locals 0

    .line 7324
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 7324
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7471
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->clearRecentStickers()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/StickerSetNameCell;Landroid/view/View;)V
    .locals 2

    .line 7448
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 7451
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7453
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$18800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 7454
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$19000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7455
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7456
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickersGroupClick(J)V

    goto/16 :goto_1

    .line 7459
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "group_hide_stickers_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7460
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$11400(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 7461
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7462
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 7466
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 7467
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$18600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p2

    if-ne p1, p2, :cond_4

    .line 7468
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->ClearRecentStickersAlertTitle:I

    .line 7469
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ClearRecentStickersAlertMessage:I

    .line 7470
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    .line 7471
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 7472
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 7473
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 7474
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 7475
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const-string p2, "dialogTextRed"

    .line 7477
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Landroid/view/View;)V
    .locals 2

    .line 7487
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7488
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickersGroupClick(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3(Landroid/view/View;)V
    .locals 4

    .line 7500
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    .line 7501
    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object p1

    .line 7502
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7503
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const-string p1, "featured_hidden"

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7504
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7505
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyItemRangeRemoved(II)V

    .line 7507
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->access$11400(Lorg/telegram/ui/Components/EmojiView;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Landroid/view/View;I)V
    .locals 0

    .line 7520
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmojiView;->access$19400(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method private updateItems()V
    .locals 17

    move-object/from16 v0, p0

    .line 7618
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 7620
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    :cond_0
    const/16 v2, 0x48

    .line 7623
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    .line 7624
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$10400(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 7625
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7626
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7627
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 7628
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 7629
    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    .line 7630
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$11200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, -0x5

    move v5, v1

    move v4, v3

    .line 7632
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_11

    if-ne v4, v3, :cond_2

    .line 7638
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_8

    .line 7642
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    const-string v8, "search"

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_2
    const/4 v6, -0x4

    if-ne v4, v6, :cond_3

    .line 7646
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v6, v6, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    .line 7647
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v7, v7, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 7648
    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v6

    .line 7649
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$18100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    const-wide/16 v8, 0x0

    const-string v10, "featured_hidden"

    invoke-interface {v7, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v6, v7, v9

    if-eqz v6, :cond_10

    .line 7650
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    const-string v8, "trend1"

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7651
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    const-string v8, "trend2"

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_8

    :cond_3
    const/4 v6, -0x3

    const-string v7, "recent"

    const/4 v8, -0x1

    const-string v9, "fav"

    const/4 v10, -0x2

    const/4 v11, 0x0

    if-ne v4, v6, :cond_4

    .line 7656
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$18700(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v6

    .line 7657
    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v9

    goto :goto_1

    :cond_4
    if-ne v4, v10, :cond_5

    .line 7659
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$18600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v6

    .line 7660
    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v7

    goto :goto_1

    :cond_5
    if-ne v4, v8, :cond_6

    goto/16 :goto_8

    .line 7667
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 7668
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 7669
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    iget v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object v11, v6

    move-object v6, v12

    move-object/from16 v12, v16

    .line 7671
    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v13}, Lorg/telegram/ui/Components/EmojiView;->access$19300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v13

    if-ne v4, v13, :cond_7

    .line 7672
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/EmojiView;->access$18802(Lorg/telegram/ui/Components/EmojiView;I)I

    .line 7673
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 7674
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7675
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 7676
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7677
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 7678
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-virtual {v5, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7679
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    const-string v8, "group"

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v5, v7

    goto/16 :goto_8

    .line 7683
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_8

    .line 7686
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    if-eqz v11, :cond_9

    .line 7688
    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v15, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-virtual {v14, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 7690
    :cond_9
    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v15, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-virtual {v14, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7692
    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v15, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    invoke-virtual {v14, v15, v5}, Landroid/util/SparseIntArray;->put(II)V

    move v14, v1

    .line 7693
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_b

    add-int/lit8 v15, v14, 0x1

    .line 7694
    iget v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/2addr v1, v15

    .line 7695
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v11, :cond_a

    .line 7697
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 7699
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7701
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/2addr v3, v15

    add-int/lit8 v10, v5, 0x1

    iget v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    div-int/2addr v14, v8

    add-int/2addr v10, v14

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    move v14, v15

    const/4 v1, 0x0

    const/4 v3, -0x5

    const/4 v8, -0x1

    const/4 v10, -0x2

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_5
    add-int/lit8 v3, v13, 0x1

    if-ge v1, v3, :cond_f

    if-eqz v11, :cond_c

    .line 7705
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v6, v5, v1

    invoke-virtual {v3, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, -0x1

    :goto_6
    const/4 v8, -0x2

    goto :goto_7

    :cond_c
    const/4 v6, -0x1

    if-ne v4, v6, :cond_d

    .line 7708
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v8, v5, v1

    const-string v10, "premium"

    invoke-virtual {v3, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_d
    const/4 v8, -0x2

    if-ne v4, v8, :cond_e

    .line 7710
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v10, v5, v1

    invoke-virtual {v3, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 7712
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v10, v5, v1

    invoke-virtual {v3, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7716
    :cond_f
    iget v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    mul-int/2addr v13, v6

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v1, v13

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/2addr v5, v3

    :cond_10
    :goto_8
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x5

    goto/16 :goto_0

    :cond_11
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 7346
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 7364
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 7368
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7370
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 7372
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "trend1"

    .line 7373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x5

    return p1

    :cond_2
    const-string v0, "trend2"

    .line 7375
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    return p1

    :cond_3
    const/4 p1, 0x3

    return p1

    :cond_4
    const/4 p1, 0x2

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public getPositionForPack(Ljava/lang/Object;)I
    .locals 1

    .line 7354
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 7358
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getTabForPosition(I)I
    .locals 3

    .line 7387
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "search"

    .line 7388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "trend1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "trend2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 7398
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    move p1, v1

    .line 7402
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    if-nez v0, :cond_3

    .line 7403
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    .line 7405
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_2
    const/16 v2, 0x48

    .line 7407
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    .line 7409
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 7411
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$11200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$11100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 7413
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 7414
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "premium"

    .line 7415
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7416
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    return p1

    :cond_5
    const-string v0, "recent"

    .line 7417
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7418
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    return p1

    .line 7420
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    return p1

    .line 7423
    :cond_7
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 7424
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$11200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 7425
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$11100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 7389
    :cond_8
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    if-ltz p1, :cond_9

    .line 7390
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    return p1

    .line 7392
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    if-ltz p1, :cond_a

    .line 7393
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 7341
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lorg/telegram/ui/Components/RecyclerListView;

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 7729
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->updateItems()V

    .line 7730
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 0

    .line 7723
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->updateItems()V

    .line 7724
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 7532
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 7610
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 7611
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MediaDataController;->loadFeaturedPremium:Z

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->FeaturedStickersPremium:I

    const-string v0, "FeaturedStickersPremium"

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    const-string v0, "FeaturedStickers"

    :goto_0
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_close:I

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrCloseTrendingStickers:I

    const-string v2, "AccDescrCloseTrendingStickers"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 7605
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;

    .line 7606
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->setIsLast(Z)V

    goto/16 :goto_4

    .line 7577
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 7578
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$18800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 7580
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$18900(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$19000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    if-nez p2, :cond_5

    move p2, v1

    goto :goto_1

    .line 7583
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$19000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_close:I

    .line 7585
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 7586
    :cond_7
    sget v0, Lorg/telegram/messenger/R$string;->CurrentGroupStickers:I

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v2, "Group Stickers"

    :goto_2
    aput-object v2, v3, v1

    const-string v1, "CurrentGroupStickers"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_4

    .line 7588
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 7589
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_a

    .line 7590
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 7591
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_17

    .line 7592
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_4

    .line 7594
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$18600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    if-ne p2, v0, :cond_b

    .line 7595
    sget p2, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v0, "RecentStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_close:I

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentStickersAlertTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 7596
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$18700(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    if-ne p2, v0, :cond_c

    .line 7597
    sget p2, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v0, "FavoriteStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_4

    .line 7598
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    if-ne p2, v0, :cond_17

    .line 7599
    sget p2, Lorg/telegram/messenger/R$string;->PremiumStickers:I

    const-string v0, "PremiumStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_4

    .line 7541
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    .line 7542
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    const/16 v1, 0x52

    if-ne p2, v0, :cond_15

    .line 7543
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    sub-int/2addr p2, v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, v4, :cond_e

    .line 7545
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_4

    .line 7548
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 7549
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_f

    .line 7550
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_3

    .line 7551
    :cond_f
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v0, "recent"

    .line 7552
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 7553
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$18600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3

    .line 7555
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$18700(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_11
    :goto_3
    if-nez v2, :cond_12

    .line 7561
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_4

    .line 7563
    :cond_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    const/16 p2, 0x8

    .line 7564
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_4

    .line 7566
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-lez p2, :cond_14

    move v3, p2

    .line 7567
    :cond_14
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_4

    .line 7572
    :cond_15
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_4

    .line 7534
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 7535
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 7536
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;Z)V

    .line 7537
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$18600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setRecent(Z)V

    :cond_17
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 7512
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$TrendingListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->access$18502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    move-result-object v0

    invoke-direct {p2, v1, v2, v0}, Lorg/telegram/ui/Components/EmojiView$TrendingListView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7513
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7519
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 7523
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v1, 0x34

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7498
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7499
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 7494
    :pswitch_2
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7495
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7485
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;-><init>(Landroid/content/Context;)V

    .line 7486
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7491
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7445
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7447
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Lorg/telegram/ui/Cells/StickerSetNameCell;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 7442
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 7435
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$1;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/content/Context;Z)V

    .line 7527
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
