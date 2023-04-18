.class public Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;
.super Landroid/widget/LinearLayout;
.source "MessageStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MessageStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverviewCell"
.end annotation


# instance fields
.field cell:[Landroid/view/View;

.field primary:[Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/MessageStatisticActivity;

.field title:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MessageStatisticActivity;Landroid/content/Context;)V
    .locals 8

    .line 842
    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    .line 843
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/widget/TextView;

    .line 838
    iput-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/widget/TextView;

    .line 839
    iput-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/view/View;

    .line 840
    iput-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->cell:[Landroid/view/View;

    const/4 v0, 0x1

    .line 844
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 845
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 846
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 847
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    const/4 v2, -0x2

    const/4 v3, -0x1

    if-ge v4, p1, :cond_0

    .line 850
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 851
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->cell:[Landroid/view/View;

    aput-object v5, v6, v4

    .line 852
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 854
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v4

    .line 855
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v4

    .line 857
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v6, v6, v4

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 858
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v6, v6, v4

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v6, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 859
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v6, v6, v4

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v6, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 861
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 862
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 863
    invoke-static {v3, v2, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 865
    :cond_0
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;)V
    .locals 0

    .line 836
    invoke-direct {p0}, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method private updateColors()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 894
    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "windowBackgroundWhiteGrayText2"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setData()V
    .locals 6

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$800(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    sget v2, Lorg/telegram/messenger/R$string;->StatisticViews:I

    const-string v3, "StatisticViews"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$2000(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->cell:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v4, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v4}, Lorg/telegram/ui/MessageStatisticActivity;->access$2000(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v4

    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/messenger/R$string;->PublicShares:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "PublicShares"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->cell:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 880
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$800(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v3}, Lorg/telegram/ui/MessageStatisticActivity;->access$2000(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x2

    if-lez v0, :cond_1

    .line 882
    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->cell:[Landroid/view/View;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget v2, Lorg/telegram/messenger/R$string;->PrivateShares:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "PrivateShares"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 886
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->cell:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method
