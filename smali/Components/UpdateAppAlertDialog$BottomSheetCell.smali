.class public LComponents/UpdateAppAlertDialog$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LComponents/UpdateAppAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomSheetCell"
.end annotation


# instance fields
.field private background:Landroid/view/View;

.field private hasBackground:Z

.field private textView:[Landroid/widget/TextView;

.field final synthetic this$0:LComponents/UpdateAppAlertDialog;


# direct methods
.method public constructor <init>(LComponents/UpdateAppAlertDialog;Landroid/content/Context;Z)V
    .locals 11

    .line 111
    iput-object p1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->this$0:LComponents/UpdateAppAlertDialog;

    .line 112
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    xor-int/lit8 v0, p3, 0x1

    .line 114
    iput-boolean v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->hasBackground:Z

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->background:Landroid/view/View;

    .line 118
    iget-boolean v1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->hasBackground:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 119
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v4, v3, [F

    const/high16 v5, 0x40800000    # 4.0f

    aput v5, v4, v2

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_0
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->background:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    if-eqz p3, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    const/16 p3, 0x10

    move v8, p3

    :goto_0
    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move p3, v2

    :goto_1
    if-ge p3, p1, :cond_5

    .line 124
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p3

    .line 125
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 126
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 127
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    iget-boolean v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->hasBackground:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 134
    :cond_2
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :goto_2
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    iget-boolean v4, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->hasBackground:Z

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    const/16 v4, 0xd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_3
    invoke-virtual {v0, v2, v2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    const/4 v4, -0x2

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne p3, v3, :cond_4

    .line 140
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method static synthetic access$100(LComponents/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;
    .locals 0

    .line 105
    iget-object p0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(LComponents/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;
    .locals 0

    .line 105
    iget-object p0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->background:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 147
    iget-boolean p2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->hasBackground:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x50

    goto :goto_0

    :cond_0
    const/16 p2, 0x32

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 152
    iget-object p2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :cond_0
    iget-object p2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->this$0:LComponents/UpdateAppAlertDialog;

    invoke-static {p1, v1}, LComponents/UpdateAppAlertDialog;->access$002(LComponents/UpdateAppAlertDialog;Z)Z

    .line 156
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xb4

    .line 157
    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 158
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/animation/Animator;

    .line 159
    iget-object v2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    .line 160
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v6, v5, v0

    const/16 v7, 0xa

    .line 161
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v5, v1

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object v2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    .line 162
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p2, v4

    const/4 v2, 0x3

    iget-object v3, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    .line 163
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v4, v0

    aput v6, v4, v1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v2

    .line 159
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 165
    new-instance p2, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;

    invoke-direct {p2, p0}, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;-><init>(LComponents/UpdateAppAlertDialog$BottomSheetCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
