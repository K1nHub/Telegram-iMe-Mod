.class public Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;
.super Landroid/widget/LinearLayout;
.source "PaintTextOptionsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;,
        Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;,
        Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;
    }
.end annotation


# static fields
.field private static final ALIGN_PAIRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alignView:Lorg/telegram/ui/Components/RLottieImageView;

.field private colorClickableView:Landroid/view/View;

.field private currentAlign:I

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

.field private emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

.field private outlineType:I

.field private outlineView:Landroid/widget/ImageView;

.field private plusView:Landroid/widget/ImageView;

.field private typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;


# direct methods
.method public static synthetic $r8$lambda$BLXfZeMzi0f8tKlnUFfA0gfDJPU(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GxzH2ekGy_4kypNZbY_wyztXUmA(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_jgC1rS2BXLzYOh0D2fcxSiTic(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dl0sNnsLi1Y2nPUwI18o2fm-QJg(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufyB9f1BeIrYWukbG5PjaT6ZAIY(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->lambda$setTypeface$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yWcf_1JJEHc_JMEtYMu9MYMAevc(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    .line 38
    new-instance v7, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;-><init>(IIIILorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$1;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0x14

    const/16 v12, 0x28

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;-><init>(IIIILorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$1;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;-><init>(IIIILorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$1;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    const/4 v5, 0x2

    const/16 v6, 0x3c

    const/16 v7, 0x28

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;-><init>(IIIILorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$1;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x28

    const/16 v7, 0x14

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;-><init>(IIIILorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$1;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    const/4 v5, 0x1

    const/16 v7, 0x3c

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;-><init>(IIIILorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$1;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->ALIGN_PAIRS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->currentAlign:I

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 64
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 67
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->colorClickableView:Landroid/view/View;

    .line 68
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->colorClickableView:Landroid/view/View;

    const/16 v2, 0x18

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 72
    sget v2, Lorg/telegram/messenger/R$raw;->photo_text_allign:I

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 73
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    const/16 v3, 0x14

    .line 75
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 76
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineView:Landroid/widget/ImageView;

    .line 83
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_text_outlined:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineView:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineView:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineView:Landroid/widget/ImageView;

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    const/16 v8, 0x10

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    .line 89
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v1, Landroid/widget/Space;

    invoke-direct {v1, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    .line 99
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;->setCurrent(Z)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;->onColorPickerSelected()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 78
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->currentAlign:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;->onTextOutlineSelected(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;->onNewTextSelected()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;->onTypefaceButtonClicked()V

    return-void
.end method

.method private synthetic lambda$setTypeface$5(Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public animatePlusToIcon(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 122
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->plusView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public getColorClickableView()Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->colorClickableView:Landroid/view/View;

    return-object v0
.end method

.method public getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    return-object v0
.end method

.method public getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    return-object v0
.end method

.method public getTypefaceCellBounds(Landroid/graphics/RectF;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAlignment(I)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    return-void
.end method

.method public setAlignment(IZ)V
    .locals 6

    .line 191
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->currentAlign:I

    .line 192
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->currentAlign:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    .line 196
    sget-object v2, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->ALIGN_PAIRS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    .line 197
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    .line 198
    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->currentAlign:I

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$100(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v1, v3

    .line 203
    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$200(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 204
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$200(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    if-eqz p2, :cond_2

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;->onTextAlignmentSelected(I)V

    :cond_2
    return-void

    .line 212
    :cond_3
    sget-object v2, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->ALIGN_PAIRS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    .line 213
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;

    .line 214
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$300(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v4

    if-ne v0, v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->currentAlign:I

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$100(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v5

    if-ne v4, v5, :cond_4

    move-object v1, v3

    .line 219
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->alignView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    .line 220
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$400(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 221
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;->access$200(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$AlignFramePair;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 222
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    if-eqz p2, :cond_6

    .line 225
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;->onTextAlignmentSelected(I)V

    :cond_6
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->delegate:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;

    return-void
.end method

.method public setOutlineType(I)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    return-void
.end method

.method public setOutlineType(IZ)V
    .locals 1

    .line 136
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 139
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 145
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_text_outlined:I

    goto :goto_0

    .line 151
    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_text_framed:I

    goto :goto_0

    .line 148
    :cond_2
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_text_regular:I

    :goto_0
    if-eqz p2, :cond_3

    .line 155
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineView:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 157
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->outlineView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->BUILT_IN_FONTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 166
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;->bind(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    return-void

    .line 171
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->fetched(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 174
    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 175
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->typefaceCell:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;->bind(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_5
    return-void
.end method

.method public setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V
    .locals 0

    return-void
.end method
