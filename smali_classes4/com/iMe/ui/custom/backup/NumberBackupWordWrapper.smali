.class public final Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;
.super Landroid/widget/FrameLayout;
.source "NumberBackupWordWrapper.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;

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

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "word"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    invoke-direct {p0, p2, p3}, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;->setupView(Ljava/lang/String;I)V

    return-void
.end method

.method private final setupView(Ljava/lang/String;I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;

    .line 38
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->textNumber:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->textNumber:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->viewBackupWord:Lcom/iMe/ui/custom/backup/BackupWordView;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/backup/BackupWordView;->setWord(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;->binding:Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;

    .line 27
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->textNumber:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBackupNumberWordBinding;->viewBackupWord:Lcom/iMe/ui/custom/backup/BackupWordView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/backup/BackupWordView;->applyColors()V

    return-void
.end method
