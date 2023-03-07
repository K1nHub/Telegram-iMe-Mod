.class public Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DoubledLimitsBottomSheet.java"


# instance fields
.field containerView:Landroid/view/ViewGroup;

.field drawHeader:Z

.field gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field headerRow:I

.field lastViewRow:I

.field final limits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;",
            ">;"
        }
    .end annotation
.end field

.field limitsStartRow:I

.field rowCount:I

.field private totalGradientHeight:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 24

    move-object/from16 v0, p0

    .line 264
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    move/from16 v2, p2

    .line 265
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->drawHeader:Z

    .line 266
    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const-string v3, "premiumGradient1"

    const-string v4, "premiumGradient2"

    const-string v5, "premiumGradient3"

    const-string v6, "premiumGradient4"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v3, 0x0

    .line 267
    iput v3, v2, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    .line 268
    iput v3, v2, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    .line 269
    iput v3, v2, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 270
    iput v3, v2, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    .line 272
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 273
    new-instance v9, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v3, Lorg/telegram/messenger/R$string;->GroupsAndChannelsLimitTitle:I

    const-string v4, "GroupsAndChannelsLimitTitle"

    .line 274
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v3, Lorg/telegram/messenger/R$string;->GroupsAndChannelsLimitSubtitle:I

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v5, v11

    const-string v6, "GroupsAndChannelsLimitSubtitle"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->channelsLimitDefault:I

    iget v7, v2, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 273
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->PinChatsLimitTitle:I

    const-string v5, "PinChatsLimitTitle"

    .line 279
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->PinChatsLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "PinChatsLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    const/16 v17, 0x0

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 278
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->PublicLinksLimitTitle:I

    const-string v5, "PublicLinksLimitTitle"

    .line 284
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->PublicLinksLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "PublicLinksLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->publicLinksLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 283
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->SavedGifsLimitTitle:I

    const-string v5, "SavedGifsLimitTitle"

    .line 289
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->SavedGifsLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    .line 290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "SavedGifsLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 288
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->FavoriteStickersLimitTitle:I

    const-string v5, "FavoriteStickersLimitTitle"

    .line 294
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->FavoriteStickersLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    .line 295
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "FavoriteStickersLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->BioLimitTitle:I

    const-string v5, "BioLimitTitle"

    .line 299
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->BioLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    .line 300
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "BioLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->aboutLengthLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->aboutLengthLimitPremium:I

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 298
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->CaptionsLimitTitle:I

    const-string v5, "CaptionsLimitTitle"

    .line 304
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->CaptionsLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    .line 305
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "CaptionsLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 303
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->FoldersLimitTitle:I

    const-string v5, "FoldersLimitTitle"

    .line 309
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->FoldersLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    .line 310
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "FoldersLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 308
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->ChatPerFolderLimitTitle:I

    const-string v5, "ChatPerFolderLimitTitle"

    .line 314
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->ChatPerFolderLimitSubtitle:I

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    .line 315
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "ChatPerFolderLimitSubtitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v2

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 313
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v3, Lorg/telegram/messenger/R$string;->ConnectedAccountsLimitTitle:I

    const-string v4, "ConnectedAccountsLimitTitle"

    .line 319
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v3, Lorg/telegram/messenger/R$string;->ConnectedAccountsLimitSubtitle:I

    new-array v4, v10, [Ljava/lang/Object;

    const/4 v5, 0x4

    .line 320
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v5, "ConnectedAccountsLimitSubtitle"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x4

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    .line 318
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iput v11, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    add-int/2addr v10, v11

    .line 325
    iput v10, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    iput v11, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->headerRow:I

    .line 326
    iput v10, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartRow:I

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v10, v1

    iput v10, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 399
    iget v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 404
    iget v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->headerRow:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 406
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->lastViewRow:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public measureGradient(Landroid/content/Context;II)V
    .locals 4

    .line 414
    new-instance v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 415
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 416
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->setData(Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 417
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 418
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    iput v1, v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->yOffset:I

    .line 419
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->totalGradientHeight:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 389
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartRow:I

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->setData(Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;)V

    .line 392
    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartRow:I

    sub-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    iget p2, p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->yOffset:I

    iput p2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientYOffset:I

    .line 393
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget p2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->totalGradientHeight:I

    iput p2, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientTotalHeight:I

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    .line 339
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 344
    new-instance p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;-><init>(Landroid/content/Context;)V

    .line 345
    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setParentViewForGradien(Landroid/view/ViewGroup;)V

    .line 346
    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setStaticGradinet(Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V

    goto/16 :goto_0

    .line 380
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 350
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->drawHeader:Z

    if-eqz p2, :cond_2

    .line 351
    new-instance p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;Landroid/content/Context;)V

    .line 357
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 358
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->other_2x_large:I

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->createGradientDrawable(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0x28

    const/16 v7, 0x1c

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 362
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    sget p1, Lorg/telegram/messenger/R$string;->DoubledLimits:I

    const-string v5, "DoubledLimits"

    invoke-static {v5, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 366
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 367
    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 368
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 369
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 370
    invoke-static {v2, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    invoke-static {v2, v2, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 376
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    const/16 v0, 0x40

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    .line 383
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
