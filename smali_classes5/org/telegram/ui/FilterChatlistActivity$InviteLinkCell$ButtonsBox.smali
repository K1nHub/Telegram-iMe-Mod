.class Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;
.super Landroid/widget/FrameLayout;
.source "FilterChatlistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonsBox"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private t:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/content/Context;)V
    .locals 0

    .line 901
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 896
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 897
    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->radii:[F

    .line 898
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 902
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 903
    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->paint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setRadii(FF)V
    .locals 2

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->radii:[F

    const/4 v1, 0x7

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x5

    .line 914
    aput p2, v0, p1

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 919
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 921
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 923
    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 924
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->t:F

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v3, 0x8

    .line 925
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->t:F

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v4, v7}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->setRadii(FF)V

    .line 926
    iget-object v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->radii:[F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 927
    iget-object v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 929
    iget-object v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 930
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->t:F

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 931
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->t:F

    invoke-static {v5, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->setRadii(FF)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setT(F)V
    .locals 0

    .line 908
    iput p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->t:F

    .line 909
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
