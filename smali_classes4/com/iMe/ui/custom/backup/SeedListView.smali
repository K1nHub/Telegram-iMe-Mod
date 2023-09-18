.class public final Lcom/iMe/ui/custom/backup/SeedListView;
.super Landroid/widget/FrameLayout;
.source "SeedListView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/backup/SeedListView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeedListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedListView.kt\ncom/iMe/ui/custom/backup/SeedListView\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n473#2:110\n1295#2,2:111\n1855#3,2:113\n*S KotlinDebug\n*F\n+ 1 SeedListView.kt\ncom/iMe/ui/custom/backup/SeedListView\n*L\n67#1:110\n68#1:111,2\n87#1:113,2\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

.field private wordPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/backup/SeedListView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/backup/SeedListView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/backup/SeedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/SeedListView;->setupView()V

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

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/backup/SeedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final applyColorForSeedWord(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 66
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 473
    sget-object v0, Lcom/iMe/ui/custom/backup/SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1;->INSTANCE:Lcom/iMe/ui/custom/backup/SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;

    .line 68
    invoke-virtual {v0}, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;->applyColors()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final calcWordsPerColumn(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    return p1
.end method

.method private final drawSeed(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/SeedListView;->resetSeedState()V

    .line 73
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/backup/SeedListView;->calcWordsPerColumn(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    .line 74
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearSeedFirstPart:Landroid/widget/LinearLayout;

    const-string v3, "binding.linearSeedFirstPart"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/iMe/ui/custom/backup/SeedListView;->drawWords(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearSeedSecondPart:Landroid/widget/LinearLayout;

    const-string v1, "binding.linearSeedSecondPart"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/custom/backup/SeedListView;->drawWords(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private final drawWords(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/iMe/ui/custom/backup/SeedListView;->wordPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/iMe/ui/custom/backup/NumberBackupWordWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->wordPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->wordPosition:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final resetSeedState()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->wordPosition:I

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    .line 81
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearSeedFirstPart:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 82
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearSeedSecondPart:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/iMe/ui/custom/backup/SeedListView;->applyColors()V

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    .line 37
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearRoot:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x41100000    # 9.0f

    .line 38
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 39
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearSeedFirstPart:Landroid/widget/LinearLayout;

    const-string v1, "binding.linearSeedFirstPart"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/backup/SeedListView;->applyColorForSeedWord(Landroid/widget/LinearLayout;)V

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearSeedSecondPart:Landroid/widget/LinearLayout;

    const-string v1, "binding.linearSeedSecondPart"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/backup/SeedListView;->applyColorForSeedWord(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/SeedListView;->binding:Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentSeedListBinding;->linearRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final setSeed(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/backup/SeedListView;->drawSeed(Ljava/util/List;)V

    return-void
.end method
