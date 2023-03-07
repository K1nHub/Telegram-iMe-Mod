.class public final Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;
.super Landroid/widget/LinearLayout;
.source "SenderSelectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SenderSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SenderView"
.end annotation


# instance fields
.field public final avatar:Lorg/telegram/ui/Components/SimpleAvatarView;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 497
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 498
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 500
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v0, 0xe

    .line 502
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 503
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 505
    new-instance v0, Lorg/telegram/ui/Components/SimpleAvatarView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SimpleAvatarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;->avatar:Lorg/telegram/ui/Components/SimpleAvatarView;

    const/16 v1, 0x28

    .line 506
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 509
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 510
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;->title:Landroid/widget/TextView;

    const-string v3, "actionBarDefaultSubmenuItem"

    .line 513
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 514
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 515
    invoke-virtual {v2, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 516
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 517
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;->subtitle:Landroid/widget/TextView;

    .line 520
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x66

    invoke-static {p1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 521
    invoke-virtual {v2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 522
    invoke-virtual {v2, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 523
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 524
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 525
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
