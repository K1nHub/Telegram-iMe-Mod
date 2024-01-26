.class public final Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;
.super Ljava/lang/Object;
.source "ForkChatCopyContentLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonClose:Landroidx/appcompat/widget/AppCompatTextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textMessage:Landroidx/appcompat/widget/AppCompatTextView;

.field public final viewDivider:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->buttonClose:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->viewDivider:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;
    .locals 8

    .line 72
    sget v0, Lorg/telegram/messenger/R$id;->button_close:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lorg/telegram/messenger/R$id;->nested_scroll_view:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lorg/telegram/messenger/R$id;->text_message:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lorg/telegram/messenger/R$id;->view_divider:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 96
    new-instance v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;
    .locals 2

    .line 59
    sget v0, Lorg/telegram/messenger/R$layout;->fork_chat_copy_content_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
