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

    .line 280
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    .line 281
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 271
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 276
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 285
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 287
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x12

    .line 288
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    or-int/lit8 v7, v4, 0x30

    const/16 v4, 0xe

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/16 v8, 0xe

    :goto_1
    const/4 v9, 0x6

    if-eqz v1, :cond_2

    const/16 v10, 0xe

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    const/16 v5, 0x24

    const/16 v6, 0x24

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, "dialogTextBlack"

    .line 292
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x5

    goto :goto_3

    :cond_3
    const/4 p2, 0x3

    :goto_3
    or-int/lit8 p2, p2, 0x30

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, -0x1

    const/16 v5, 0x14

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x3

    :goto_4
    or-int/lit8 v6, v2, 0x30

    const/16 v0, 0x1c

    const/16 v1, 0x41

    if-eqz p2, :cond_5

    const/16 v7, 0x1c

    goto :goto_5

    :cond_5
    const/16 v7, 0x41

    :goto_5
    const/16 v8, 0xe

    if-eqz p2, :cond_6

    const/16 v9, 0x41

    goto :goto_6

    :cond_6
    const/16 v9, 0x1c

    :goto_6
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 259
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public getPlaceholderAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 327
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

    .line 400
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->drawPlaceholder:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 403
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

    .line 404
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 408
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderNum:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x3c

    const/16 v4, 0x41

    if-nez v0, :cond_1

    .line 409
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v4, 0x30

    .line 410
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_0

    .line 412
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 413
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 415
    :goto_0
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int v0, v5, v4

    .line 418
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

    .line 419
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

    .line 421
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderNum:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x77

    .line 422
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 423
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1

    :cond_3
    const/16 v0, 0x83

    .line 425
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v3, 0x50

    .line 426
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 428
    :goto_1
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    .line 429
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int v0, v4, v3

    .line 431
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

    .line 432
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

    .line 434
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->needDivider:Z

    if-eqz v0, :cond_8

    .line 435
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x40

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v1, v0

    move v4, v1

    :goto_2
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

    .line 332
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

.method public setData(Lorg/telegram/tgnet/TLRPC$User;IZ)V
    .locals 2

    .line 300
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 301
    iput-boolean p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->needDivider:Z

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->drawPlaceholder:Z

    .line 303
    iput p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderNum:I

    if-nez p1, :cond_1

    .line 305
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->update(I)V

    .line 310
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 311
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->animators:Ljava/util/ArrayList;

    sget-object p2, Lorg/telegram/ui/Components/PollVotesAlert;->USER_CELL_PROPERTY:Landroid/util/Property;

    new-array p3, v0, [F

    fill-array-data p3, :array_2

    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->drawPlaceholder:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 315
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    :cond_3
    :goto_2
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

    .line 321
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->placeholderAlpha:F

    .line 322
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public update(I)V
    .locals 11

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_9

    .line 344
    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v4, p1

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 345
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v6, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    .line 349
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_6

    .line 351
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_5

    .line 352
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 354
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastStatus:I

    if-eq v6, v7, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_8

    .line 358
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    .line 360
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v5, v4

    :goto_3
    if-nez v5, :cond_9

    return-void

    .line 371
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_a

    .line 373
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastStatus:I

    goto :goto_4

    .line 375
    :cond_a
    iput v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastStatus:I

    :goto_4
    if-eqz p1, :cond_c

    if-nez v1, :cond_b

    .line 379
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    goto :goto_5

    :cond_c
    const-string p1, ""

    .line 381
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    .line 383
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 385
    iput-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_d

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_6

    .line 389
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    return-void
.end method
