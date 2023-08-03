.class Lorg/telegram/ui/Components/ChatActivityEnterView$39;
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
.method public static synthetic $r8$lambda$1EklcYjW348_4PNGv9IOzy7TkPI(Lorg/telegram/ui/Components/ChatActivityEnterView$39;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->lambda$afterTextChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$1aFJCbi71XozOYEieYr-6NCwU-0(Lorg/telegram/ui/Components/ChatActivityEnterView$39;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->lambda$afterTextChanged$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 4823
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 4965
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    .line 4966
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 4967
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 4968
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4969
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    int-to-float v1, v1

    const v3, 0x3f147ae1    # 0.58f

    const v4, 0x3ed70a3d    # 0.42f

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

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

    .line 4971
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4972
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$afterTextChanged$1()V
    .locals 1

    .line 4985
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 4901
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->ignorePrevTextChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 4904
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->prevText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4905
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->ignorePrevTextChange:Z

    .line 4906
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->prevText:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4907
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->prevText:Ljava/lang/CharSequence;

    .line 4908
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->ignorePrevTextChange:Z

    return-void

    .line 4911
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 4912
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->nextChangeIsSend:Z

    if-eqz v0, :cond_2

    .line 4913
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 4914
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->nextChangeIsSend:Z

    .line 4916
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->processChange:Z

    if-eqz v0, :cond_4

    .line 4917
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v3, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    move v4, v3

    .line 4918
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 4919
    aget-object v5, v0, v4

    invoke-interface {p1, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4921
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {p1, v0, v4, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    .line 4922
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->processChange:Z

    .line 4927
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12802(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 4929
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const-wide/16 v4, 0x64

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v8

    sub-int/2addr p1, v8

    const/16 v8, 0x64

    if-gt p1, v8, :cond_9

    const/16 v8, -0x270f

    if-ge p1, v8, :cond_5

    move p1, v8

    .line 4933
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 4934
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

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

    .line 4935
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_7

    .line 4936
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4937
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setAlpha(F)V

    .line 4938
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleX(F)V

    .line 4939
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleY(F)V

    .line 4941
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4942
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

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

    .line 4945
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    move p1, v3

    goto :goto_3

    .line 4947
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_2

    .line 4949
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 4950
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/NumberTextView;

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

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$39$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$39$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$39;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_a
    :goto_2
    move p1, v2

    .line 4958
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    if-eq v1, p1, :cond_f

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4959
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    .line 4960
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 4961
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4963
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

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

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13402(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 4964
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$39$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$39$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$39;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4975
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 4977
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-eqz p1, :cond_10

    .line 4978
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->dismiss()V

    .line 4980
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 4982
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    if-le p1, v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    if-ge p1, v0, :cond_12

    .line 4983
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13702(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 4984
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->heightShouldBeChanged:Z

    if-eqz p1, :cond_11

    .line 4985
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$39$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$39$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$39;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 4987
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 4989
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateCombineMessages()V

    :cond_12
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 4833
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->ignorePrevTextChange:Z

    if-eqz p2, :cond_0

    return-void

    .line 4836
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4837
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->prevText:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .line 4843
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->ignorePrevTextChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 4849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4850
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "selected_page"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 4852
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getCurrentPage()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4854
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-nez p3, :cond_4

    .line 4858
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eqz p3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v0, :cond_6

    .line 4859
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12200(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    .line 4861
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    if-eq v0, v3, :cond_b

    .line 4862
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    if-lt v4, v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-eq v0, v3, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->heightShouldBeChanged:Z

    .line 4863
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_a

    .line 4864
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onLineCountChanged(II)V

    .line 4866
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    goto :goto_6

    .line 4868
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->heightShouldBeChanged:Z

    .line 4871
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-ne v0, v2, :cond_c

    return-void

    .line 4874
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_d

    if-le p4, p3, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p2, p4

    if-ne v0, p2, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_d

    .line 4875
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->nextChangeIsSend:Z

    .line 4877
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 4878
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 4879
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 4880
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_12

    .line 4881
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_12

    add-int/lit8 v0, p4, 0x1

    if-gt p3, v0, :cond_e

    sub-int v4, p4, p3

    if-gt v4, v3, :cond_e

    .line 4882
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4883
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 4885
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v4

    if-gt p3, v0, :cond_10

    sub-int v0, p4, p3

    if-le v0, v3, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    invoke-interface {v4, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    .line 4888
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    if-eq p1, v3, :cond_13

    sub-int/2addr p4, p3

    if-le p4, v2, :cond_13

    .line 4889
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->processChange:Z

    .line 4891
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12700(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x1388

    sub-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 4892
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12702(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 4893
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 4894
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$39;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needSendTyping()V

    :cond_14
    return-void
.end method
