.class public final Lcom/fxn/BubbleTabBar;
.super Landroid/widget/LinearLayout;
.source "BubbleTabBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubbleTabBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleTabBar.kt\ncom/fxn/BubbleTabBar\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n179#2,2:234\n179#2,2:236\n254#3,2:238\n1855#4,2:240\n*S KotlinDebug\n*F\n+ 1 BubbleTabBar.kt\ncom/fxn/BubbleTabBar\n*L\n48#1:234,2\n57#1:236,2\n61#1:238,2\n188#1:240,2\n*E\n"
.end annotation


# instance fields
.field private badgeVisibleValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private custom_fontParam:I

.field private disabled_icon_colorParam:I

.field private horizontal_paddingParam:F

.field private icon_paddingParam:F

.field private icon_sizeParam:F

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fxn/parser/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private menuResource:I

.field private oldBubble:Lcom/fxn/Bubble;

.field private onBubbleClickListener:Lcom/fxn/OnBubbleClickListener;

.field private tabContainerBackground:I

.field private title_sizeParam:F

.field private vertical_paddingParam:F


# direct methods
.method public static synthetic $r8$lambda$WWN8MRXyZElxR19crdAQfkIuCjo(Lcom/fxn/BubbleTabBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/fxn/BubbleTabBar;->configureMenu$lambda$6$lambda$5$lambda$4(Lcom/fxn/BubbleTabBar;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/fxn/BubbleTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/fxn/BubbleTabBar;->menuItems:Ljava/util/List;

    const p3, -0x777778

    .line 28
    iput p3, p0, Lcom/fxn/BubbleTabBar;->disabled_icon_colorParam:I

    .line 35
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/fxn/BubbleTabBar;->badgeVisibleValues:Ljava/util/HashMap;

    .line 36
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    .line 40
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p3, 0x11

    .line 41
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/fxn/BubbleTabBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/fxn/BubbleTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final configureMenu(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fxn/parser/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fxn/parser/MenuItem;

    .line 189
    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget v1, p0, Lcom/fxn/BubbleTabBar;->tabContainerBackground:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setTabBackground(I)V

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getIconColor()I

    .line 196
    :goto_1
    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->badgeVisibleValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const-string v2, "badgeVisibleValues[id] ?: false"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setBadgeVisible(Z)V

    .line 197
    iget v1, p0, Lcom/fxn/BubbleTabBar;->horizontal_paddingParam:F

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setHorizontal_padding(F)V

    .line 198
    iget v1, p0, Lcom/fxn/BubbleTabBar;->vertical_paddingParam:F

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setVertical_padding(F)V

    .line 199
    iget v1, p0, Lcom/fxn/BubbleTabBar;->icon_sizeParam:F

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setIcon_size(F)V

    .line 200
    iget v1, p0, Lcom/fxn/BubbleTabBar;->icon_paddingParam:F

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setIcon_padding(F)V

    .line 201
    iget v1, p0, Lcom/fxn/BubbleTabBar;->custom_fontParam:I

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setCustom_font(I)V

    .line 202
    iget v1, p0, Lcom/fxn/BubbleTabBar;->disabled_icon_colorParam:I

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setDisabled_icon_color(I)V

    .line 203
    iget v1, p0, Lcom/fxn/BubbleTabBar;->title_sizeParam:F

    invoke-virtual {v0, v1}, Lcom/fxn/parser/MenuItem;->setTitle_size(F)V

    .line 205
    new-instance v1, Lcom/fxn/Bubble;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/fxn/Bubble;-><init>(Landroid/content/Context;Lcom/fxn/parser/MenuItem;)V

    .line 206
    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 207
    invoke-virtual {v1, v0}, Lcom/fxn/Bubble;->setSelected(Z)V

    .line 208
    iput-object v1, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    .line 210
    :cond_2
    new-instance v0, Lcom/fxn/BubbleTabBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/fxn/BubbleTabBar$$ExternalSyntheticLambda0;-><init>(Lcom/fxn/BubbleTabBar;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 190
    :cond_3
    new-instance p1, Ljava/lang/ExceptionInInitializerError;

    const-string v0, "Id is not added in menu item"

    invoke-direct {p1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private static final configureMenu$lambda$6$lambda$5$lambda$4(Lcom/fxn/BubbleTabBar;Landroid/view/View;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->onBubbleClickListener:Lcom/fxn/OnBubbleClickListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-ne v4, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->onBubbleClickListener:Lcom/fxn/OnBubbleClickListener;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/fxn/OnBubbleClickListener;->onBubbleClick(I)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    const-string v4, "null cannot be cast to non-null type com.fxn.Bubble"

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 218
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/fxn/Bubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fxn/Bubble;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/fxn/Bubble;->setSelected(Z)V

    .line 221
    :cond_2
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/fxn/Bubble;

    iput-object p1, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    :cond_3
    return-void
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v1, "context.theme.obtainStyl\u2026eable.BubbleTabBar, 0, 0)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :try_start_0
    sget v1, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_menuResource:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 140
    iput v1, p0, Lcom/fxn/BubbleTabBar;->menuResource:I

    .line 143
    sget v1, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_disabled_icon_color:I

    const v2, -0x777778

    .line 142
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fxn/BubbleTabBar;->disabled_icon_colorParam:I

    .line 147
    sget v1, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_custom_font:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 146
    iput v0, p0, Lcom/fxn/BubbleTabBar;->custom_fontParam:I

    .line 150
    sget v0, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_icon_padding:I

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fxn/bubbletabbar/R$dimen;->bubble_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 149
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fxn/BubbleTabBar;->icon_paddingParam:F

    .line 154
    sget v0, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_horizontal_padding:I

    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fxn/bubbletabbar/R$dimen;->bubble_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 153
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fxn/BubbleTabBar;->horizontal_paddingParam:F

    .line 158
    sget v0, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_vertical_padding:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fxn/bubbletabbar/R$dimen;->bubble_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 157
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fxn/BubbleTabBar;->vertical_paddingParam:F

    .line 162
    sget v0, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_icon_size:I

    .line 163
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fxn/bubbletabbar/R$dimen;->bubble_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 161
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fxn/BubbleTabBar;->icon_sizeParam:F

    .line 166
    sget v0, Lcom/fxn/bubbletabbar/R$styleable;->BubbleTabBar_bubbletab_title_size:I

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 165
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fxn/BubbleTabBar;->title_sizeParam:F

    .line 169
    iget-object v0, p0, Lcom/fxn/BubbleTabBar;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/fxn/BubbleTabBar;->menuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/fxn/BubbleTabBar;->configureMenu(Ljava/util/List;)V

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lcom/fxn/BubbleTabBar;->menuResource:I

    if-ltz v0, :cond_1

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/fxn/BubbleTabBar;->setMenuResource(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private final reDraw(Landroid/content/Context;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/fxn/BubbleTabBar;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/fxn/BubbleTabBar;->menuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/fxn/BubbleTabBar;->configureMenu(Ljava/util/List;)V

    goto :goto_0

    .line 128
    :cond_0
    iget v0, p0, Lcom/fxn/BubbleTabBar;->menuResource:I

    if-ltz v0, :cond_1

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/fxn/BubbleTabBar;->setMenuResource(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setMenuResource(Landroid/content/Context;I)V
    .locals 1

    .line 182
    new-instance v0, Lcom/fxn/parser/MenuParser;

    invoke-direct {v0, p1}, Lcom/fxn/parser/MenuParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/fxn/parser/MenuParser;->parse(I)Ljava/util/List;

    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Lcom/fxn/BubbleTabBar;->configureMenu(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final addBubbleListener(Lcom/fxn/OnBubbleClickListener;)V
    .locals 1

    const-string v0, "onBubbleClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/fxn/BubbleTabBar;->onBubbleClickListener:Lcom/fxn/OnBubbleClickListener;

    return-void
.end method

.method public final setDisableIconColor(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput p2, p0, Lcom/fxn/BubbleTabBar;->disabled_icon_colorParam:I

    .line 108
    invoke-direct {p0, p1}, Lcom/fxn/BubbleTabBar;->reDraw(Landroid/content/Context;)V

    return-void
.end method

.method public final setMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fxn/parser/MenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/fxn/BubbleTabBar;->menuItems:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fxn/BubbleTabBar;->reDraw(Landroid/content/Context;)V

    return-void
.end method

.method public final setSelectedById(IZ)V
    .locals 4

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fxn/Bubble;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 93
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fxn/Bubble;->setSelected(Z)V

    .line 94
    iget-object v1, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Lcom/fxn/Bubble;->setSelected(Z)V

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v0, v2}, Lcom/fxn/Bubble;->setSelected(Z)V

    .line 98
    :goto_1
    iput-object v0, p0, Lcom/fxn/BubbleTabBar;->oldBubble:Lcom/fxn/Bubble;

    if-eqz p2, :cond_4

    .line 100
    iget-object p2, p0, Lcom/fxn/BubbleTabBar;->onBubbleClickListener:Lcom/fxn/OnBubbleClickListener;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/fxn/OnBubbleClickListener;->onBubbleClick(I)Z

    .line 103
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setTabContainerBackground(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput p2, p0, Lcom/fxn/BubbleTabBar;->tabContainerBackground:I

    .line 113
    invoke-direct {p0, p1}, Lcom/fxn/BubbleTabBar;->reDraw(Landroid/content/Context;)V

    return-void
.end method
