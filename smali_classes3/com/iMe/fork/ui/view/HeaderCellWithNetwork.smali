.class public final Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;
.super Landroid/widget/FrameLayout;
.source "HeaderCellWithNetwork.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderCellWithNetwork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderCellWithNetwork.kt\ncom/iMe/fork/ui/view/HeaderCellWithNetwork\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,61:1\n359#2:62\n359#2:63\n*S KotlinDebug\n*F\n+ 1 HeaderCellWithNetwork.kt\ncom/iMe/fork/ui/view/HeaderCellWithNetwork\n*L\n29#1:62\n33#1:63\n*E\n"
.end annotation


# instance fields
.field private final headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private final networkTypeView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/HeaderCell;)V
    .locals 10

    const-string v0, "headerCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 22
    new-instance v0, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork$networkTypeView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork$networkTypeView$2;-><init>(Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->networkTypeView$delegate:Lkotlin/Lazy;

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    .line 28
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v5, v2, 0x50

    const/4 v2, 0x0

    const-string v3, "headerCell.textView"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    int-to-float v1, v1

    .line 29
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    const/4 v7, 0x0

    .line 32
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v8, v4

    goto :goto_4

    .line 33
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_5
    if-eqz v2, :cond_6

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_6
    int-to-float p1, v4

    .line 33
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result p1

    move v8, p1

    :goto_4
    const/4 v9, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    .line 26
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initNetworkView(Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;)Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->initNetworkView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p0

    return-object p0
.end method

.method private final initNetworkView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 7

    .line 55
    new-instance v6, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-static {v6, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public final getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    return-object v0
.end method

.method public final getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->networkTypeView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/NetworkTypeView;

    return-object v0
.end method

.method public final setNetworkViewTopMargin(I)V
    .locals 7

    .line 48
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins$default(Landroid/view/View;IIIIILjava/lang/Object;)V

    return-void
.end method

.method public final setupColors()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 42
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
