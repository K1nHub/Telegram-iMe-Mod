.class Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FiltersListBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FiltersListBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FiltersListBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 384
    iput-object p2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2800(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2900(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 430
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 432
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 434
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 436
    iget v0, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 437
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    goto :goto_0

    .line 438
    :cond_0
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1

    .line 439
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_markunread:I

    goto :goto_0

    .line 440
    :cond_1
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    if-ne v1, v2, :cond_2

    .line 441
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    goto :goto_0

    .line 442
    :cond_2
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    if-ne v1, v2, :cond_3

    .line 443
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    goto :goto_0

    .line 444
    :cond_3
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    if-ne v1, v2, :cond_4

    .line 445
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    goto :goto_0

    .line 446
    :cond_4
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    if-ne v0, v1, :cond_5

    .line 447
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_bots:I

    goto :goto_0

    .line 449
    :cond_5
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_folders:I

    .line 451
    :goto_0
    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 453
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 454
    iget-object p2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 457
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 458
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 459
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 460
    sget p2, Lorg/telegram/messenger/R$string;->CreateNewFilter:I

    const-string v0, "CreateNewFilter"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 422
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 423
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
