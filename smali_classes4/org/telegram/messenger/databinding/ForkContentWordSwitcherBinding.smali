.class public final Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;
.super Ljava/lang/Object;
.source "ForkContentWordSwitcherBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final constraintWords:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->constraintWords:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;
    .locals 9

    .line 77
    sget v0, Lorg/telegram/messenger/R$id;->constraint_words:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    .line 83
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 89
    sget v0, Lorg/telegram/messenger/R$id;->view_backup_word_1:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/backup/BackupWordView;

    if-eqz v6, :cond_0

    .line 95
    sget v0, Lorg/telegram/messenger/R$id;->view_backup_word_2:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/custom/backup/BackupWordView;

    if-eqz v7, :cond_0

    .line 101
    sget v0, Lorg/telegram/messenger/R$id;->view_backup_word_3:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/custom/backup/BackupWordView;

    if-eqz v8, :cond_0

    .line 107
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;)V

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;
    .locals 2

    .line 64
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_word_switcher:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
