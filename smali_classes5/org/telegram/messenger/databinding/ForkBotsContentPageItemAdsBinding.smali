.class public final Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;
.super Ljava/lang/Object;
.source "ForkBotsContentPageItemAdsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adsPhrase:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->adsPhrase:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;
    .locals 2

    .line 58
    sget v0, Lorg/telegram/messenger/R$id;->ads_phrase:I

    .line 59
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;
    .locals 2

    .line 45
    sget v0, Lorg/telegram/messenger/R$layout;->fork_bots_content_page_item_ads:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
