.class public Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;
.super Landroid/widget/LinearLayout;
.source "BotCommandsMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BotCommandsMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotCommandView"
.end annotation


# instance fields
.field command:Landroid/widget/TextView;

.field commandStr:Ljava/lang/String;

.field description:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 464
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 466
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 468
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 469
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->command:Landroid/widget/TextView;

    const/high16 p1, 0x41600000    # 14.0f

    .line 477
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 478
    iget-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->command:Landroid/widget/TextView;

    const-string/jumbo v0, "windowBackgroundWhiteGrayText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->command:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->command:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v0, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->commandStr:Ljava/lang/String;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x24

    .line 485
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
