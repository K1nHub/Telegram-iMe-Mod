.class public final Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;
.super Ljava/lang/Object;
.source "ForkTextRecognitionContentLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final imageClose:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageServiceLogo:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageShare:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageTranslate:Landroidx/appcompat/widget/AppCompatImageView;

.field public final recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textCompany:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textRecognitionContainer:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 62
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageClose:Landroidx/appcompat/widget/AppCompatImageView;

    .line 64
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageServiceLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 66
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageShare:Landroidx/appcompat/widget/AppCompatImageView;

    .line 67
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageTranslate:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->textCompany:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->textRecognitionContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;
    .locals 14

    .line 101
    sget v0, Lorg/telegram/messenger/R$id;->constraint_layout_header:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    .line 107
    sget v0, Lorg/telegram/messenger/R$id;->image_close:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 113
    sget v0, Lorg/telegram/messenger/R$id;->image_copy:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    .line 119
    sget v0, Lorg/telegram/messenger/R$id;->image_service_logo:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    .line 125
    sget v0, Lorg/telegram/messenger/R$id;->image_share:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->image_translate:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    .line 137
    sget v0, Lorg/telegram/messenger/R$id;->nested_scroll_view:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_0

    .line 143
    sget v0, Lorg/telegram/messenger/R$id;->recognized_text:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 149
    sget v0, Lorg/telegram/messenger/R$id;->text_company:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 155
    move-object v13, p0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 157
    new-instance p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-object v2, p0

    move-object v3, v13

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/LinearLayout;)V

    return-object p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;
    .locals 2

    .line 88
    sget v0, Lorg/telegram/messenger/R$layout;->fork_text_recognition_content_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
