.class final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field private albumsStartRow:I

.field private final cloudAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private cloudRow:I

.field private final context:Landroid/content/Context;

.field private newAlbumRow:I

.field private rowCount:I

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->context:Landroid/content/Context;

    .line 224
    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getCurrentAccount$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->cloudAlbums:Ljava/util/ArrayList;

    .line 232
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->updateRows()V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 313
    iput v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->cloudRow:I

    .line 314
    iput v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->albumsStartRow:I

    .line 315
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->cloudAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->rowCount:I

    add-int/lit8 v0, v1, 0x1

    .line 317
    iput v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->rowCount:I

    iput v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->newAlbumRow:I

    return-void
.end method


# virtual methods
.method public final getAlbumId(I)J
    .locals 2

    .line 238
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->newAlbumRow:I

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 239
    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->cloudRow:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getCurrentAccount$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->cloudAlbums:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->albumsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :goto_0
    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 246
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->newAlbumRow:I

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BOTTOM_SHEET_CELL:I

    goto :goto_0

    .line 247
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->PROFILE_SEARCH_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->newAlbumRow:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 271
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "null cannot be cast to non-null type org.telegram.ui.ActionBar.BottomSheet.BottomSheetCell"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 272
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 273
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-static {p2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 274
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->context:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 276
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 277
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 278
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 276
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 280
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 281
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 282
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 280
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 285
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 286
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 288
    sget p2, Lorg/telegram/messenger/R$string;->cloud_albums_bottom_sheet_create_new_album:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0xb

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_3

    .line 293
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type org.telegram.ui.Cells.ProfileSearchCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    .line 295
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    if-eq p2, v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 296
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->getAlbumId(I)J

    move-result-wide v3

    .line 298
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getCurrentAccount$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_1

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getCurrentAccount$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 302
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->cloudRow:I

    if-ne p2, v0, :cond_4

    move v8, p1

    goto :goto_2

    :cond_4
    move v8, v1

    .line 297
    :goto_2
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BOTTOM_SHEET_CELL:I

    if-ne p2, p1, :cond_0

    .line 255
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 264
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 266
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
