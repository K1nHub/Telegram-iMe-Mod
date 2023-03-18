.class public final Lcom/smedialink/ui/custom/backup/BackupWordView;
.super Landroid/widget/FrameLayout;
.source "BackupWordView.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/backup/BackupWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/custom/backup/BackupWordView;->setupView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/backup/BackupWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final markChecked(Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    const-string v1, "chats_actionBackground"

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->cardWord:Landroidx/cardview/widget/CardView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 63
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->textWord:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "actionBarDefaultTitle"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->cardWord:Landroidx/cardview/widget/CardView;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 66
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->textWord:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/backup/BackupWordView;->applyColors()V

    .line 56
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    .line 43
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->cardWord:Landroidx/cardview/widget/CardView;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 44
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->textWord:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chats_actionBackground"

    .line 45
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "applyColors$lambda$1$lambda$0"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method public final getChecked()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->checked:Z

    return v0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->textWord:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->checked:Z

    .line 22
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/backup/BackupWordView;->markChecked(Z)V

    return-void
.end method

.method public final setWord(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/BackupWordView;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBackupWordBinding;->textWord:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
