.class public Lorg/telegram/ui/Components/PollVotesAlert$UserCell;
.super Landroid/widget/FrameLayout;
.source "PollVotesAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PollVotesAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserCell"
.end annotation


# instance fields
.field private animators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private drawPlaceholder:Z

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private needDivider:Z

.field private placeholderAlpha:F

.field private placeholderNum:I

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 12

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    .line 284
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 274
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 279
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    const/4 p1, 0x0

    .line 286
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 288
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 290
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x12

    .line 291
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    or-int/lit8 v7, v4, 0x30

    const/16 v4, 0xe

    if-eqz v1, :cond_1

    move v8, p1

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    const/4 v9, 0x6

    if-eqz v1, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, p1

    :goto_2
    const/4 v11, 0x0

    const/16 v5, 0x24

    const/16 v6, 0x24

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 295
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_3

    :cond_3
    move p2, v3

    :goto_3
    or-int/lit8 p2, p2, 0x30

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, -0x1

    const/16 v5, 0x14

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    or-int/lit8 v6, v2, 0x30

    const/16 v0, 0x1c

    const/16 v1, 0x41

    if-eqz p2, :cond_5

    move v7, v0

    goto :goto_5

    :cond_5
    move v7, v1

    :goto_5
    const/16 v8, 0xe

    if-eqz p2, :cond_6

    move v9, v1

    goto :goto_6

    :cond_6
    move v9, v0

    :goto_6
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 261
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 261
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public getPlaceholderAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 340
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 426
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->drawPlaceholder:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 429
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v0, v0

    int-to-float v3, v2

    .line 430
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 434
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderNum:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x3c

    const/16 v4, 0x41

    if-nez v0, :cond_1

    .line 435
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v4, 0x30

    .line 436
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 439
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 441
    :goto_0
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    .line 442
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int v0, v5, v4

    .line 444
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;

    move-result-object v5

    int-to-float v6, v0

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v2, v8

    int-to-float v8, v8

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v5, v6, v8, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 447
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderNum:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x77

    .line 448
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 449
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1

    :cond_3
    const/16 v0, 0x83

    .line 451
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v3, 0x50

    .line 452
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 454
    :goto_1
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    .line 455
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int v0, v4, v3

    .line 457
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;

    move-result-object v4

    int-to-float v5, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v5, v6, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 460
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->needDivider:Z

    if-eqz v0, :cond_8

    .line 461
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x40

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v1, v0

    :goto_2
    move v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 345
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;IZ)V
    .locals 2

    .line 303
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 305
    iput-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    .line 306
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 307
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 308
    iput-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 310
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 311
    iput-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 314
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->needDivider:Z

    const/4 p3, 0x0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, p3

    .line 315
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->drawPlaceholder:Z

    .line 316
    iput p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderNum:I

    if-nez p1, :cond_3

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->update(I)V

    .line 323
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 324
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    sget-object p2, Lorg/telegram/ui/Components/PollVotesAlert;->USER_CELL_PROPERTY:Landroid/util/Property;

    new-array p3, v0, [F

    fill-array-data p3, :array_2

    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 327
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->drawPlaceholder:Z

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 328
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    :cond_5
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setPlaceholderAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 334
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    .line 335
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public update(I)V
    .locals 10

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 353
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_b

    .line 359
    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v4, p1

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 360
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-nez v4, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v6, :cond_5

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    .line 364
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_7

    .line 366
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_6

    .line 367
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_6
    move v6, v3

    .line 369
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastStatus:I

    if-eq v6, v7, :cond_7

    move v4, v5

    :cond_7
    if-nez v4, :cond_a

    .line 373
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_a

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_a

    if-eqz v0, :cond_8

    .line 375
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 376
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_9

    .line 377
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 379
    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    move v5, v4

    :goto_4
    if-nez v5, :cond_b

    return-void

    .line 388
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_d

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p1, :cond_c

    .line 391
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastStatus:I

    goto :goto_5

    .line 393
    :cond_c
    iput v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastStatus:I

    goto :goto_5

    .line 395
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_e

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 400
    :cond_e
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_10

    if-nez v1, :cond_f

    .line 401
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    iput-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    goto :goto_6

    .line 402
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_11

    .line 403
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    goto :goto_6

    :cond_11
    const-string p1, ""

    .line 405
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    .line 407
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 409
    iput-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_12

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_7

    .line 412
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_13

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_7

    .line 415
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    return-void
.end method
