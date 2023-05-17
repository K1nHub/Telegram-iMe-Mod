.class public Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;
.super Lorg/telegram/ui/Cells/HeaderCell;
.source "PeopleNearbyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeopleNearbyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderCellProgress"
.end annotation


# instance fields
.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 850
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 852
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 854
    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 p1, 0xe

    .line 855
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 856
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setStrokeWidth(F)V

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 859
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v5, v2, 0x30

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    const/4 v7, 0x3

    if-eqz v1, :cond_2

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    const/4 v9, 0x0

    const/16 v3, 0x32

    const/16 v4, 0x28

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 845
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method
