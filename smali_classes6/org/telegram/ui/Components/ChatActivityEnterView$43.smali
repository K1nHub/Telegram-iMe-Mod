.class Lorg/telegram/ui/Components/ChatActivityEnterView$43;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createMessageEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field heightShouldBeChanged:Z

.field private ignorePrevTextChange:Z

.field private nextChangeIsSend:Z

.field private prevText:Ljava/lang/CharSequence;

.field private processChange:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$GZ2I9zE8T7hb1epG8t4hy9vSnuQ(Lorg/telegram/ui/Components/ChatActivityEnterView$43;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->lambda$afterTextChanged$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g79vMh_hLgdEl4L0oGa8x0YOQ88(Lorg/telegram/ui/Components/ChatActivityEnterView$43;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->lambda$afterTextChanged$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 5431
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 5583
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    .line 5584
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 5585
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 5586
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5587
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    int-to-float v1, v1

    const v3, 0x3f147ae1    # 0.58f

    const v4, 0x3ed70a3d    # 0.42f

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5589
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5590
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$afterTextChanged$1()V
    .locals 1

    .line 5603
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 5519
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->ignorePrevTextChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 5522
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->prevText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 5523
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->ignorePrevTextChange:Z

    .line 5524
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->prevText:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5525
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->prevText:Ljava/lang/CharSequence;

    .line 5526
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->ignorePrevTextChange:Z

    return-void

    .line 5529
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 5530
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->nextChangeIsSend:Z

    if-eqz v0, :cond_2

    .line 5531
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13700(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 5532
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->nextChangeIsSend:Z

    .line 5534
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->processChange:Z

    if-eqz v0, :cond_4

    .line 5535
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v3, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    move v4, v3

    .line 5536
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 5537
    aget-object v5, v0, v4

    invoke-interface {p1, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5539
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, v0, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    .line 5540
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->processChange:Z

    .line 5545
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 5547
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15000(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const-wide/16 v4, 0x64

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15000(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v8

    sub-int/2addr p1, v8

    const/16 v8, 0x64

    if-gt p1, v8, :cond_9

    const/16 v8, -0x270f

    if-ge p1, v8, :cond_5

    move p1, v8

    .line 5551
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 5552
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    move v9, v2

    goto :goto_1

    :cond_6
    move v9, v3

    :goto_1
    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 5553
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_7

    .line 5554
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5555
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setAlpha(F)V

    .line 5556
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleX(F)V

    .line 5557
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleY(F)V

    .line 5559
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5560
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

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

    if-gez p1, :cond_8

    .line 5563
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    move p1, v3

    goto :goto_3

    .line 5565
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_2

    .line 5567
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 5568
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

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

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$43$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$43$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$43;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_a
    :goto_2
    move p1, v2

    .line 5576
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    if-eq v1, p1, :cond_f

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 5577
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    .line 5578
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5579
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5581
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-boolean v1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    if-eqz v1, :cond_d

    move v4, v6

    goto :goto_4

    :cond_d
    move v4, v7

    :goto_4
    aput v4, v0, v3

    if-eqz v1, :cond_e

    move v6, v7

    :cond_e
    aput v6, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15502(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 5582
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$43$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$43$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$43;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5593
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 5595
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-eqz p1, :cond_10

    .line 5596
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->dismiss()V

    .line 5598
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 5600
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    if-le p1, v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    if-ge p1, v0, :cond_12

    .line 5601
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 5602
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->heightShouldBeChanged:Z

    if-eqz p1, :cond_11

    .line 5603
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$43$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$43$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$43;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 5605
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 5607
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateCombineMessages()V

    :cond_12
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 5441
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->ignorePrevTextChange:Z

    if-eqz p2, :cond_0

    return-void

    .line 5444
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5445
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->prevText:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 5451
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->ignorePrevTextChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 5456
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5457
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 5458
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->bottomPanelTranslationYChanged(F)V

    .line 5459
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p4, :cond_2

    .line 5461
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5462
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14000(Lorg/telegram/ui/Components/ChatActivityEnterView;IIZ)V

    .line 5467
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v3

    if-nez v3, :cond_3

    .line 5468
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "selected_page"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 5470
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getCurrentPage()I

    move-result v3

    :goto_0
    if-eqz v3, :cond_5

    .line 5472
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v0

    :goto_2
    if-nez p3, :cond_6

    .line 5476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-eqz p3, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    if-eqz v3, :cond_8

    .line 5477
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14300(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    .line 5479
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    if-eq v3, v4, :cond_d

    .line 5480
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v0

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v5

    if-lt v5, v4, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    move v4, v0

    :goto_4
    if-eq v3, v4, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v0

    :goto_5
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->heightShouldBeChanged:Z

    .line 5481
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_c

    .line 5482
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLineCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onLineCountChanged(II)V

    .line 5484
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    goto :goto_6

    .line 5486
    :cond_d
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->heightShouldBeChanged:Z

    .line 5489
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-ne v3, v2, :cond_e

    return-void

    .line 5492
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-nez v3, :cond_f

    if-le p4, p3, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr p2, p4

    if-ne v3, p2, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v3, 0xa

    if-ne p2, v3, :cond_f

    .line 5493
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->nextChangeIsSend:Z

    .line 5495
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 5496
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 5497
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5498
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 5499
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_14

    add-int/lit8 v3, p4, 0x1

    if-gt p3, v3, :cond_10

    sub-int v4, p4, p3

    if-gt v4, v1, :cond_10

    .line 5500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5501
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 5503
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v4

    if-gt p3, v3, :cond_13

    sub-int v3, p4, p3

    if-le v3, v1, :cond_12

    goto :goto_7

    :cond_12
    move v3, v0

    goto :goto_8

    :cond_13
    :goto_7
    move v3, v2

    :goto_8
    invoke-interface {v4, p1, v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;ZZ)V

    .line 5506
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    if-eq p1, v1, :cond_15

    sub-int/2addr p4, p3

    if-le p4, v2, :cond_15

    .line 5507
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->processChange:Z

    .line 5509
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14800(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x1388

    sub-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 5510
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14802(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 5511
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 5512
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needSendTyping()V

    :cond_16
    return-void
.end method
