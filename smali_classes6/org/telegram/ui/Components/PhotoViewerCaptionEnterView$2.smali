.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field heightShouldBeChanged:Z

.field processChange:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field final synthetic val$parent:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

.field final synthetic val$photoViewer:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$8_v-Ttj1fO_VGdHMHnwYAlCMyy8(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->lambda$afterTextChanged$1(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kpzvncy5_cmP5zKv9lNHlpeDwJY(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->lambda$afterTextChanged$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$photoViewer:Lorg/telegram/ui/PhotoViewer;

    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$parent:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->processChange:Z

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1102(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;F)F

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I

    move-result p1

    .line 359
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)F

    move-result v2

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v2, v3

    const v3, 0x3f147ae1    # 0.58f

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$afterTextChanged$1(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer;->showCaptionLimitBulletin(Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget v0, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-gt v0, v4, :cond_0

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$702(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$702(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$500(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->processChange:Z

    if-eqz v0, :cond_2

    .line 311
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v3, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    move v4, v3

    .line 312
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 313
    aget-object v5, v0, v4

    invoke-interface {p1, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 315
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {p1, v0, v4, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 316
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->processChange:Z

    .line 321
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$802(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget p1, p1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p1

    const-wide/16 v4, 0x64

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget p1, p1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p1

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I

    move-result v8

    sub-int/2addr p1, v8

    const/16 v8, 0x64

    if-gt p1, v8, :cond_7

    const/16 v8, -0x270f

    if-ge p1, v8, :cond_3

    move p1, v8

    .line 327
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 328
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_5

    .line 329
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setAlpha(F)V

    .line 331
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleX(F)V

    .line 332
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleY(F)V

    .line 334
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-gez p1, :cond_6

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    const v0, -0x138889

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    move p1, v3

    goto :goto_4

    .line 340
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_3

    .line 343
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_3
    move p1, v2

    .line 350
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabled:Z

    if-eq v1, p1, :cond_b

    .line 351
    iput-boolean p1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabled:Z

    .line 352
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 355
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-boolean v1, p1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabled:Z

    if-eqz v1, :cond_9

    move v4, v6

    goto :goto_5

    :cond_9
    move v4, v7

    :goto_5
    aput v4, v0, v3

    if-eqz v1, :cond_a

    move v6, v7

    :cond_a
    aput v6, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1002(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 356
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$1000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 366
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getParentAlert()Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getParentAlert()Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget p1, p1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget p1, p1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget v0, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    if-le p1, v0, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget v0, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    if-ge p1, v0, :cond_d

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getParentAlert()Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    iput-boolean v2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 368
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->heightShouldBeChanged:Z

    if-eqz p1, :cond_c

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$parent:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 371
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->val$parent:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showCaptionLimitBulletin(Landroid/widget/FrameLayout;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 278
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_4

    .line 279
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getLineCount()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I

    move-result v3

    if-lt v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq p2, v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->heightShouldBeChanged:Z

    .line 280
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    if-lez p2, :cond_3

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getLineCount()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;II)V

    .line 283
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I

    goto :goto_2

    .line 285
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->heightShouldBeChanged:Z

    .line 288
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$500(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 292
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 293
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_6
    sub-int/2addr p4, p3

    if-le p4, v2, :cond_7

    .line 296
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->processChange:Z

    :cond_7
    return-void
.end method
