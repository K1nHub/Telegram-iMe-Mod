.class Lorg/telegram/ui/PremiumPreviewFragment$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PremiumPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/PremiumPreviewFragment$1;)V
    .locals 0

    .line 1137
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->paddingRow:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 1307
    :cond_0
    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->featuresStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->featuresEndRow:I

    if-ge p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1309
    :cond_1
    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->sectionRow:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1311
    :cond_2
    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->helpUsRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x4

    return p1

    .line 1313
    :cond_3
    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->statusRow:I

    if-eq p1, v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->privacyRow:I

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 1315
    :cond_4
    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->lastPaddingRow:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    return v2

    :cond_6
    :goto_0
    const/4 p1, 0x5

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1323
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1214
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v3, Lorg/telegram/ui/PremiumPreviewFragment;->featuresStartRow:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v2, v4, :cond_5

    iget v7, v3, Lorg/telegram/ui/PremiumPreviewFragment;->featuresEndRow:I

    if-ge v2, v7, :cond_5

    .line 1216
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->featuresEndRow:I

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    .line 1218
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PremiumFeatureCell;->setCheckBoxVisible(Z)V

    .line 1219
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1220
    iget-object v2, v1, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1221
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/PremiumFeatureCell;->setChecked(ZZ)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 1223
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/PremiumFeatureCell;->setChecked(ZZ)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 1225
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/PremiumFeatureCell;->setChecked(ZZ)V

    goto :goto_1

    :cond_3
    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 1227
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/PremiumFeatureCell;->setChecked(ZZ)V

    .line 1230
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_8

    .line 1232
    :cond_5
    iget v4, v3, Lorg/telegram/ui/PremiumPreviewFragment;->statusRow:I

    if-eq v2, v4, :cond_6

    iget v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->privacyRow:I

    if-ne v2, v3, :cond_18

    .line 1233
    :cond_6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1235
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v3, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1236
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1237
    new-instance v7, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v7, v4, v3, v6, v6}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1238
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1239
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1241
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v3, Lorg/telegram/ui/PremiumPreviewFragment;->statusRow:I

    if-ne v2, v4, :cond_18

    .line 1242
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v2

    if-nez v2, :cond_7

    return-void

    .line 1247
    :cond_7
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->status_text:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1248
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->status_entities:Ljava/util/ArrayList;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->status_text:Ljava/lang/String;

    invoke-static {v4, v7, v3}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 1250
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v7, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-virtual {v3, v6, v4, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v13, v4

    move v14, v6

    :goto_2
    if-ge v14, v13, :cond_17

    aget-object v7, v4, v14

    .line 1251
    invoke-virtual {v7}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v15

    .line 1253
    iget-object v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz v7, :cond_8

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->status_text:Ljava/lang/String;

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v9

    invoke-static {v8, v9, v7}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    .line 1254
    :goto_3
    iget-object v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;

    const/16 v12, 0x21

    if-eqz v9, :cond_9

    .line 1255
    new-instance v8, Lorg/telegram/ui/Components/URLSpanBotCommand;

    invoke-direct {v8, v7, v6, v15}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v8, v7, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    move v6, v12

    goto/16 :goto_6

    .line 1256
    :cond_9
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityHashtag;

    if-nez v9, :cond_15

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;

    if-nez v9, :cond_15

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCashtag;

    if-eqz v9, :cond_a

    goto/16 :goto_5

    .line 1258
    :cond_a
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v9, :cond_b

    .line 1259
    new-instance v8, Lorg/telegram/ui/Components/URLSpanReplacement;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mailto:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v15}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v8, v7, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 1260
    :cond_b
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v9, :cond_d

    .line 1261
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "://"

    .line 1262
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1263
    new-instance v8, Lorg/telegram/ui/Components/URLSpanBrowser;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v15}, Lorg/telegram/ui/Components/URLSpanBrowser;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v8, v7, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 1265
    :cond_c
    new-instance v8, Lorg/telegram/ui/Components/URLSpanBrowser;

    invoke-direct {v8, v7, v15}, Lorg/telegram/ui/Components/URLSpanBrowser;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v8, v7, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 1267
    :cond_d
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBankCard;

    if-eqz v9, :cond_e

    .line 1268
    new-instance v8, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "card:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v15}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v8, v7, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 1269
    :cond_e
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPhone;

    if-eqz v9, :cond_10

    .line 1270
    invoke-static {v7}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "+"

    .line 1271
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1274
    :cond_f
    new-instance v7, Lorg/telegram/ui/Components/URLSpanBrowser;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v15}, Lorg/telegram/ui/Components/URLSpanBrowser;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v7, v8, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 1275
    :cond_10
    instance-of v7, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v7, :cond_11

    .line 1276
    new-instance v7, Lorg/telegram/ui/Components/URLSpanReplacement;

    iget-object v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-direct {v7, v8, v15}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 1277
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/URLSpanReplacement;->setNavigateToPremiumBot(Z)V

    .line 1278
    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v7, v8, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 1279
    :cond_11
    instance-of v7, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    const-string v9, ""

    if-eqz v7, :cond_12

    .line 1280
    new-instance v7, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v15}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v7, v8, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 1281
    :cond_12
    instance-of v7, v8, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v7, :cond_13

    .line 1282
    new-instance v7, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v15}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v7, v8, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 1283
    :cond_13
    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_14

    .line 1284
    new-instance v11, Lorg/telegram/ui/Components/URLSpanMono;

    iget v9, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v10, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    const/16 v16, 0x0

    move-object v7, v11

    move-object v8, v3

    move-object v5, v11

    move/from16 v11, v16

    move v6, v12

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/URLSpanMono;-><init>(Ljava/lang/CharSequence;IIBLorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v5, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_14
    move v6, v12

    .line 1287
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v5, v15}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v5, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v5, 0x1

    goto :goto_7

    :cond_15
    :goto_5
    move v6, v12

    .line 1257
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-direct {v5, v7, v15}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v5, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_16

    .line 1289
    iget v5, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_16

    .line 1290
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v5, v15}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget v7, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iget v8, v15, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    invoke-virtual {v3, v5, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1293
    :cond_17
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 1150
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 1154
    new-instance p2, Lorg/telegram/ui/PremiumPreviewFragment$Adapter$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment$Adapter$1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$Adapter;Landroid/content/Context;)V

    goto :goto_0

    .line 1204
    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1205
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1175
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1201
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/Premium/AboutPremiumView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Premium/AboutPremiumView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1192
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0xc

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {p2, p1, v1, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    .line 1193
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {p1, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1194
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1195
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1196
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1197
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1178
    :cond_4
    new-instance p2, Lorg/telegram/ui/PremiumPreviewFragment$Adapter$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment$Adapter$2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$Adapter;Landroid/content/Context;)V

    .line 1208
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
