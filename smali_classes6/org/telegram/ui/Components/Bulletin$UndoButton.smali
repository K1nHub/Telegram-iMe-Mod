.class public final Lorg/telegram/ui/Components/Bulletin$UndoButton;
.super Lorg/telegram/ui/Components/Bulletin$Button;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UndoButton"
.end annotation


# instance fields
.field private bulletin:Lorg/telegram/ui/Components/Bulletin;

.field private delayedAction:Ljava/lang/Runnable;

.field private isUndone:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private undoAction:Ljava/lang/Runnable;

.field private undoTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ZcC07tOvziCU898jeBvFoVD_7Dk(Lorg/telegram/ui/Components/Bulletin$UndoButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mOvONA5_k6P0V3v3uh3ZA3e1lr0(Lorg/telegram/ui/Components/Bulletin$UndoButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1503
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 1507
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Button;-><init>(Landroid/content/Context;)V

    .line 1508
    iput-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1510
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->getThemedColor(I)I

    move-result p3

    const/16 v0, 0x10

    const/high16 v1, 0x19000000

    const v2, 0xffffff

    const/high16 v3, 0x41400000    # 12.0f

    if-eqz p2, :cond_0

    .line 1513
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    .line 1514
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Bulletin$UndoButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$UndoButton;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    and-int p2, p3, v2

    or-int/2addr p2, v1

    const/4 v1, 0x7

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1516
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1517
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1518
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1519
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->Undo:I

    const-string p3, "Undo"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1521
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, v3, p2, v3, p2}, Lorg/telegram/ui/Components/ViewHelper;->setPaddingRelative(Landroid/view/View;FFFF)V

    .line 1522
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1524
    :cond_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1525
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UndoButton$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Bulletin$UndoButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Bulletin$UndoButton;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1526
    sget p2, Lorg/telegram/messenger/R$drawable;->chats_undo:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1527
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    and-int p2, p3, v2

    or-int/2addr p2, v1

    .line 1528
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 1529
    invoke-static {p1, p2, v3, p2, v3}, Lorg/telegram/ui/Components/ViewHelper;->setPaddingRelative(Landroid/view/View;FFFF)V

    const/high16 p2, 0x42600000    # 56.0f

    const/high16 p3, 0x42400000    # 48.0f

    .line 1530
    invoke-static {p2, p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1514
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undo()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 1525
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undo()V

    return-void
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 1576
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 1578
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public onAttach(Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 1553
    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public onDetach(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 1

    const/4 p1, 0x0

    .line 1558
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 1559
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->delayedAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->isUndone:Z

    if-nez v0, :cond_0

    .line 1560
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;
    .locals 0

    .line 1570
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->delayedAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;
    .locals 1

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;
    .locals 0

    .line 1565
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public undo()V
    .locals 1

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1543
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->isUndone:Z

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1545
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1547
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_1
    return-void
.end method
