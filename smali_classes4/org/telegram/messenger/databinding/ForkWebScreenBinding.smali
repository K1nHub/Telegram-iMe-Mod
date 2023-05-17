.class public final Lorg/telegram/messenger/databinding/ForkWebScreenBinding;
.super Ljava/lang/Object;
.source "ForkWebScreenBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbar:Lorg/telegram/messenger/databinding/ForkToolbarBinding;

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Lorg/telegram/messenger/databinding/ForkToolbarBinding;Landroid/webkit/WebView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 36
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->toolbar:Lorg/telegram/messenger/databinding/ForkToolbarBinding;

    .line 37
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkWebScreenBinding;
    .locals 4

    .line 67
    sget v0, Lorg/telegram/messenger/R$id;->progress_bar:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 73
    sget v0, Lorg/telegram/messenger/R$id;->toolbar:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    invoke-static {v2}, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkToolbarBinding;

    move-result-object v0

    .line 80
    sget v2, Lorg/telegram/messenger/R$id;->web_view:I

    .line 81
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v2, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v2, p0, v1, v0, v3}, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Lorg/telegram/messenger/databinding/ForkToolbarBinding;Landroid/webkit/WebView;)V

    return-object v2

    :cond_0
    move v0, v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkWebScreenBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkWebScreenBinding;
    .locals 2

    .line 54
    sget v0, Lorg/telegram/messenger/R$layout;->fork_web_screen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
