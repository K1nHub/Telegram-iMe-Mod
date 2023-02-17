.class public final Lorg/fork/ui/view/MovingCheckCell;
.super Landroid/widget/FrameLayout;
.source "MovingCheckCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/MovingCheckCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovingCheckCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovingCheckCell.kt\norg/fork/ui/view/MovingCheckCell\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,237:1\n1849#2,2:238\n252#3:240\n*S KotlinDebug\n*F\n+ 1 MovingCheckCell.kt\norg/fork/ui/view/MovingCheckCell\n*L\n131#1:238,2\n146#1:240\n*E\n"
.end annotation


# instance fields
.field private final checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private final iconView:Landroidx/appcompat/widget/AppCompatImageView;

.field private final moveIconView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private final secondTitleView:Landroid/widget/TextView;

.field private final subtitleView:Landroid/widget/TextView;

.field private final titleContainer:Landroid/widget/LinearLayout;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/view/MovingCheckCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/view/MovingCheckCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initIconView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initMoveIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->moveIconView:Landroid/widget/ImageView;

    .line 37
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initTitleContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/fork/ui/view/MovingCheckCell;->titleContainer:Landroid/widget/LinearLayout;

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initTitleView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lorg/fork/ui/view/MovingCheckCell;->titleView:Landroid/widget/TextView;

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initSecondTitleView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lorg/fork/ui/view/MovingCheckCell;->secondTitleView:Landroid/widget/TextView;

    .line 40
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initSubtitleView()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lorg/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v5

    iput-object v5, p0, Lorg/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v6, 0x30

    const/16 v7, 0x30

    const v8, 0x800013

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 45
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, -0x2

    const/4 v8, -0x2

    const v9, 0x800013

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 51
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x2

    const/4 v0, -0x1

    .line 58
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 59
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x1

    const v8, 0x800033

    const/16 v9, 0x3c

    const/16 v11, 0x3c

    .line 65
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x2

    const/4 v7, -0x2

    const v8, 0x800053

    const/16 v12, 0xa

    .line 71
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x12

    const/16 v7, 0x12

    const v8, 0x800015

    const/16 v9, 0x15

    const/16 v11, 0x15

    const/4 v12, 0x0

    .line 77
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private final initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 3

    .line 211
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private final initIconView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 176
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initMoveIconView()Landroid/widget/ImageView;
    .locals 4

    .line 166
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 168
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 171
    sget v1, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initSecondTitleView()Landroid/widget/TextView;
    .locals 3

    .line 191
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x800013

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string/jumbo v2, "windowBackgroundWhiteGrayText2"

    .line 196
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method

.method private final initSubtitleView()Landroid/widget/TextView;
    .locals 3

    .line 201
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x800003

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 205
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string/jumbo v2, "windowBackgroundWhiteGrayText2"

    .line 206
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method

.method private final initTitleContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 174
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initTitleView()Landroid/widget/TextView;
    .locals 3

    .line 181
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x800013

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    .line 186
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method

.method private final setFullHeightTitleView(Z)V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->titleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    .line 215
    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0xa

    .line 216
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    :goto_1
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 217
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic setIcon$default(Lorg/fork/ui/view/MovingCheckCell;ILjava/lang/String;Landroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 119
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/fork/ui/view/MovingCheckCell;->setIcon(ILjava/lang/String;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private final updateLeftMargins()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 131
    iget-object v1, p0, Lorg/fork/ui/view/MovingCheckCell;->titleContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x6c

    .line 133
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 134
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getIconView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lorg/fork/ui/view/MovingCheckCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v0, v1

    const/16 v0, 0x3c

    .line 156
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    .line 155
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 146
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x40

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    .line 146
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/fork/ui/view/MovingCheckCell;->needDivider:Z

    add-int/2addr v0, v1

    .line 145
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 143
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method public final setIcon(ILjava/lang/String;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 122
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p2, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 126
    :goto_0
    iget-object p2, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 127
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->updateLeftMargins()V

    return-void
.end method

.method public final setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 113
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 114
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    invoke-direct {p0}, Lorg/fork/ui/view/MovingCheckCell;->updateLeftMargins()V

    return-void
.end method

.method public final setSecondText(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->secondTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextAndCheck(Ljava/lang/String;ZZ)V
    .locals 2

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 90
    invoke-direct {p0, p1}, Lorg/fork/ui/view/MovingCheckCell;->setFullHeightTitleView(Z)V

    .line 91
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 93
    iput-boolean p3, p0, Lorg/fork/ui/view/MovingCheckCell;->needDivider:Z

    xor-int/2addr p1, p3

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public final setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lorg/fork/ui/view/MovingCheckCell;->setFullHeightTitleView(Z)V

    .line 100
    iget-object v0, p0, Lorg/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p2, p0, Lorg/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 102
    iget-object p2, p0, Lorg/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 103
    iput-boolean p4, p0, Lorg/fork/ui/view/MovingCheckCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method
