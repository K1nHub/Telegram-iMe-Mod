.class final Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;
.super Landroid/widget/FrameLayout;
.source "SelectIconBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconView"
.end annotation


# instance fields
.field private final checkBox$delegate:Lkotlin/Lazy;

.field private final circleView$delegate:Lkotlin/Lazy;

.field private final imageView$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView$circleView$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView$circleView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->circleView$delegate:Lkotlin/Lazy;

    .line 147
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView$imageView$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView$imageView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->imageView$delegate:Lkotlin/Lazy;

    .line 148
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView$checkBox$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView$checkBox$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->checkBox$delegate:Lkotlin/Lazy;

    .line 151
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->getCircleView()Landroid/view/View;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x11

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getType()Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getType()Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result p1

    const/16 v1, 0x11

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    const/16 p2, 0x12

    const/16 v0, 0x55

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initCheckBox(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;)Lorg/telegram/ui/Components/CheckBox2;
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->initCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCircleView(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;)Landroid/view/View;
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->initCircleView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initImageView(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;)Landroid/widget/ImageView;
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->initImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->checkBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method private final getCircleView()Landroid/view/View;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->circleView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final initCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 4

    .line 186
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    .line 187
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    return-object v0
.end method

.method private final initCircleView()Landroid/view/View;
    .locals 2

    .line 179
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initImageView()Landroid/widget/ImageView;
    .locals 4

    .line 181
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 182
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setIcon(IZ)V
    .locals 4

    .line 159
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->getCircleView()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 160
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 161
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method
