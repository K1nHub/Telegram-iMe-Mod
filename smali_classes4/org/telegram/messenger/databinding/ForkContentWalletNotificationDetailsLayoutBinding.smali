.class public final Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;
.super Ljava/lang/Object;
.source "ForkContentWalletNotificationDetailsLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final linearRoot:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textCategory:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textDate:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textMessage:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/DividerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->linearRoot:Landroid/widget/LinearLayout;

    .line 58
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textCategory:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textDate:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;
    .locals 12

    .line 93
    sget v0, Lorg/telegram/messenger/R$id;->constraint_bottom_action:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    .line 99
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 101
    sget v0, Lorg/telegram/messenger/R$id;->nested_scroll_view:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/core/widget/NestedScrollView;

    if-eqz v6, :cond_0

    .line 107
    sget v0, Lorg/telegram/messenger/R$id;->text_action_cancel:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 113
    sget v0, Lorg/telegram/messenger/R$id;->text_category:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 119
    sget v0, Lorg/telegram/messenger/R$id;->text_date:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 125
    sget v0, Lorg/telegram/messenger/R$id;->text_message:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->view_divider:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/custom/DividerView;

    if-eqz v11, :cond_0

    .line 137
    new-instance p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/DividerView;)V

    return-object p0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;
    .locals 2

    .line 80
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_wallet_notification_details_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
