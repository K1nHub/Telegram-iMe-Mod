.class public Lorg/telegram/ui/Cells/ArchiveHintCell;
.super Landroid/widget/FrameLayout;
.source "ArchiveHintCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;
    }
.end annotation


# instance fields
.field private bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lorg/telegram/ui/Cells/ArchiveHintCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/ArchiveHintCell$1;-><init>(Lorg/telegram/ui/Cells/ArchiveHintCell;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 43
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;-><init>(Lorg/telegram/ui/Cells/ArchiveHintCell;Lorg/telegram/ui/Cells/ArchiveHintCell$1;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lorg/telegram/ui/Cells/ArchiveHintCell$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ArchiveHintCell$2;-><init>(Lorg/telegram/ui/Cells/ArchiveHintCell;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 65
    new-instance v0, Lorg/telegram/ui/Components/BottomPagesView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Components/BottomPagesView;-><init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    .line 66
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BottomPagesView;->setColor(II)V

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    const/16 v0, 0x21

    const/4 v1, 0x5

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x13

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ArchiveHintCell;)Lorg/telegram/ui/Components/BottomPagesView;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    return-object p0
.end method


# virtual methods
.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintCell;->bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0xcc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
