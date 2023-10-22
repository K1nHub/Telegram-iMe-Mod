.class public final Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;
.super Ljava/lang/Object;
.source "ForkFullscreenContentAlertBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAction:Lcom/iMe/ui/custom/ActionButton;

.field public final imageAlertResult:Lorg/telegram/ui/Components/RLottieImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/ActionButton;Lorg/telegram/ui/Components/RLottieImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 45
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->imageAlertResult:Lorg/telegram/ui/Components/RLottieImageView;

    .line 47
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;
    .locals 9

    .line 78
    sget v0, Lorg/telegram/messenger/R$id;->button_action:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/ActionButton;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Lorg/telegram/messenger/R$id;->image_alert_result:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v5, :cond_0

    .line 90
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 92
    sget v0, Lorg/telegram/messenger/R$id;->text_alert_description:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 98
    sget v0, Lorg/telegram/messenger/R$id;->text_alert_title:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 104
    new-instance p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;-><init>(Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/ActionButton;Lorg/telegram/ui/Components/RLottieImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;
    .locals 2

    .line 65
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fullscreen_content_alert:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
