.class public final Lcom/iMe/fork/ui/view/MovingCheckCell;
.super Landroid/widget/FrameLayout;
.source "MovingCheckCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/MovingCheckCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovingCheckCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovingCheckCell.kt\ncom/iMe/fork/ui/view/MovingCheckCell\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,238:1\n1855#2,2:239\n260#3:241\n*S KotlinDebug\n*F\n+ 1 MovingCheckCell.kt\ncom/iMe/fork/ui/view/MovingCheckCell\n*L\n132#1:239,2\n147#1:241\n*E\n"
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

    new-instance v0, Lcom/iMe/fork/ui/view/MovingCheckCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/MovingCheckCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initIconView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initMoveIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->moveIconView:Landroid/widget/ImageView;

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initTitleContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->titleContainer:Landroid/widget/LinearLayout;

    .line 39
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initTitleView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->titleView:Landroid/widget/TextView;

    .line 40
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initSecondTitleView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->secondTitleView:Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initSubtitleView()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v5

    iput-object v5, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v6, 0x30

    const/16 v7, 0x30

    const v8, 0x800013

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 46
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, -0x2

    const/4 v8, -0x2

    const v9, 0x800013

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 52
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x2

    const/4 v0, -0x1

    .line 59
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 60
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x1

    const v8, 0x800033

    const/16 v9, 0x3c

    const/16 v11, 0x3c

    .line 66
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x2

    const/4 v7, -0x2

    const v8, 0x800053

    const/16 v12, 0xa

    .line 72
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x12

    const/16 v7, 0x12

    const v8, 0x800015

    const/16 v9, 0x15

    const/16 v11, 0x15

    const/4 v12, 0x0

    .line 78
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private final initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 3

    .line 212
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private final initIconView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 177
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initMoveIconView()Landroid/widget/ImageView;
    .locals 4

    .line 167
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 169
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 172
    sget v1, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initSecondTitleView()Landroid/widget/TextView;
    .locals 3

    .line 192
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x800013

    .line 195
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method

.method private final initSubtitleView()Landroid/widget/TextView;
    .locals 3

    .line 202
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x800003

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 206
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 207
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method

.method private final initTitleContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 175
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initTitleView()Landroid/widget/TextView;
    .locals 3

    .line 182
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x800013

    .line 185
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method

.method private final setFullHeightTitleView(Z)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->titleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    .line 216
    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0xa

    .line 217
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    :goto_1
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic setIcon$default(Lcom/iMe/fork/ui/view/MovingCheckCell;IILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setIcon(IILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private final updateLeftMargins()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->titleContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x6c

    .line 134
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getIconView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v0, v1

    const/16 v0, 0x3c

    .line 157
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    .line 156
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 145
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    .line 260
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

    .line 147
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->needDivider:Z

    add-int/2addr v0, v1

    .line 146
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method public final setIcon(IILandroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 123
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-direct {v1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 127
    :goto_0
    iget-object p2, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 128
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->updateLeftMargins()V

    return-void
.end method

.method public final setImage(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 115
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->updateLeftMargins()V

    return-void
.end method

.method public final setSecondText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->secondTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextAndCheck(Ljava/lang/String;ZZ)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 91
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setFullHeightTitleView(Z)V

    .line 92
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 94
    iput-boolean p3, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->needDivider:Z

    xor-int/2addr p1, p3

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public final setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setFullHeightTitleView(Z)V

    .line 101
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->subtitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 104
    iput-boolean p4, p0, Lcom/iMe/fork/ui/view/MovingCheckCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method
