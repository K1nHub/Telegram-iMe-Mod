.class Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;
.super Landroid/widget/LinearLayout;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyStubView"
.end annotation


# instance fields
.field final emptyImageView:Landroid/widget/ImageView;

.field final emptyTextView:Landroid/widget/TextView;

.field ignoreRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 5886
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5887
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    .line 5888
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    .line 5890
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 5891
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, -0x2

    .line 5893
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "windowBackgroundWhiteGrayText2"

    .line 5895
    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5896
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p2, 0x41880000    # 17.0f

    .line 5897
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x28

    .line 5898
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5899
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 5904
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5905
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    .line 5906
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->ignoreRequestLayout:Z

    .line 5907
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/16 v5, 0x28

    if-eqz v2, :cond_0

    .line 5908
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5913
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 5911
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5916
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->ignoreRequestLayout:Z

    .line 5917
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5922
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->ignoreRequestLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 5925
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
