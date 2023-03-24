.class public Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlertLocationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapOverlayView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

.field private views:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/IMapsProvider$IMarker;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4v_TTCsNCwM74r4WrWqQ_DqSIWU(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->lambda$addInfoView$0(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeu6555XageWSgeTqzTITv15l48(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->lambda$addInfoView$1(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/Context;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 222
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->views:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$addInfoView$0(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;ZILjava/lang/String;)V
    .locals 7

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I

    move-result v3

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$addInfoView$1(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;Landroid/view/View;)V
    .locals 7

    .line 249
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, p2

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    .line 250
    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {v5, p2, p2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object v4, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    :goto_1
    return-void
.end method


# virtual methods
.method public addInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 226
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    .line 227
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    move-result-object v3

    if-ne v3, v2, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)V

    .line 231
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 232
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->removeInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    .line 233
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$202(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMarker;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 235
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$002(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    .line 236
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$202(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMarker;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 240
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x72

    const/4 v7, -0x2

    .line 241
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$302(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 244
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->venue_tooltip:I

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 245
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const-string v10, "dialogBackground"

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v6

    const/16 v8, 0x47

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 248
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x1

    .line 262
    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 263
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 264
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 265
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 266
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const-string v9, "windowBackgroundWhiteBlackText"

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "fonts/rmedium.ttf"

    .line 267
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    move v7, v10

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v7

    const/4 v11, -0x2

    const/4 v12, -0x2

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_3

    move v13, v9

    goto :goto_1

    :cond_3
    move v13, v10

    :goto_1
    or-int/lit8 v13, v13, 0x30

    const/16 v14, 0x12

    const/16 v15, 0xa

    const/16 v16, 0x12

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 272
    invoke-virtual {v7, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 274
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 275
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 276
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const-string v11, "windowBackgroundWhiteGrayText3"

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_2

    :cond_4
    move v8, v10

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 278
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v11, -0x2

    const/4 v12, -0x2

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    or-int/lit8 v13, v9, 0x30

    const/16 v14, 0x12

    const/16 v15, 0x20

    const/16 v16, 0x12

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v8, v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget v6, Lorg/telegram/messenger/R$string;->TapToSendLocation:I

    const-string v8, "TapToSendLocation"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x24

    .line 284
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->num:I

    invoke-static {v8}, Lorg/telegram/ui/Cells/LocationCell;->getColorForIndex(I)I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x24

    const/16 v9, 0x24

    const/16 v10, 0x51

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    .line 285
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, v3}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://ss3.4sqi.net/img/categories_v2/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_64.png"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v4, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x11

    const/16 v3, 0x1e

    .line 289
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 291
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 292
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0x168

    .line 325
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 328
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->views:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMap;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v1

    const/16 v3, 0x12c

    invoke-interface {v2, v1, v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public updatePositions()V
    .locals 6

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getProjection()Lorg/telegram/messenger/IMapsProvider$IProjection;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->views:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 348
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 349
    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$IProjection;->toScreenLocation(Lorg/telegram/messenger/IMapsProvider$LatLng;)Landroid/graphics/Point;

    move-result-object v3

    .line 350
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 351
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x16

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
