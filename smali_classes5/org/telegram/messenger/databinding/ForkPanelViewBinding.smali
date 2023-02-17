.class public final Lorg/telegram/messenger/databinding/ForkPanelViewBinding;
.super Ljava/lang/Object;
.source "ForkPanelViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final divider1:Landroid/view/View;

.field public final divider2:Landroid/view/View;

.field public final imageBots:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageSettings:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

.field public final layoutBottom:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tabs:Lcom/google/android/material/tabs/TabLayout;

.field public final textEmptyBots:Landroid/widget/TextView;

.field public final viewpager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 71
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 72
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->divider1:Landroid/view/View;

    .line 73
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->divider2:Landroid/view/View;

    .line 74
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageBots:Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    .line 76
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageSettings:Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    .line 78
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->layoutBottom:Landroid/widget/FrameLayout;

    .line 80
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    .line 81
    iput-object p12, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->textEmptyBots:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkPanelViewBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 112
    sget v1, Lorg/telegram/messenger/R$id;->appbar:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    .line 118
    sget v1, Lorg/telegram/messenger/R$id;->divider1:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 124
    sget v1, Lorg/telegram/messenger/R$id;->divider2:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 130
    sget v1, Lorg/telegram/messenger/R$id;->imageBots:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    .line 136
    sget v1, Lorg/telegram/messenger/R$id;->imageGifResponses:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    .line 142
    sget v1, Lorg/telegram/messenger/R$id;->imageSettings:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    .line 148
    sget v1, Lorg/telegram/messenger/R$id;->imageTextResponses:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    .line 154
    sget v1, Lorg/telegram/messenger/R$id;->layoutBottom:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    .line 160
    sget v1, Lorg/telegram/messenger/R$id;->smart_panel_root:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v13, :cond_0

    .line 166
    sget v1, Lorg/telegram/messenger/R$id;->tabs:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v14, :cond_0

    .line 172
    sget v1, Lorg/telegram/messenger/R$id;->textEmptyBots:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 178
    sget v1, Lorg/telegram/messenger/R$id;->viewpager:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/viewpager/widget/ViewPager;

    if-eqz v16, :cond_0

    .line 184
    new-instance v1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroidx/viewpager/widget/ViewPager;)V

    return-object v1

    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkPanelViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkPanelViewBinding;
    .locals 2

    .line 99
    sget v0, Lorg/telegram/messenger/R$layout;->fork_panel_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
