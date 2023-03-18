.class public final Lcom/smedialink/ui/custom/backup/ConfirmSeedView;
.super Landroid/widget/FrameLayout;
.source "ConfirmSeedView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/backup/ConfirmSeedView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfirmSeedView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfirmSeedView.kt\ncom/smedialink/ui/custom/backup/ConfirmSeedView\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,71:1\n473#2:72\n1206#2,2:73\n473#2:75\n1295#2,2:76\n473#2:78\n1306#2,3:79\n*S KotlinDebug\n*F\n+ 1 ConfirmSeedView.kt\ncom/smedialink/ui/custom/backup/ConfirmSeedView\n*L\n30#1:72\n31#1:73,2\n42#1:75\n43#1:76,2\n60#1:78\n61#1:79,3\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/custom/backup/ConfirmSeedView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->binding:Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    .line 21
    invoke-direct {p0}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->setupView()V

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

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final calcSeedPartSize(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private final drawSwitchers(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->calcSeedPartSize(Ljava/util/List;)I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->binding:Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->linearSwitcherWrapper:Landroid/widget/LinearLayout;

    const-string v2, "binding\n                .linearSwitcherWrapper"

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 473
    sget-object v2, Lcom/smedialink/ui/custom/backup/ConfirmSeedView$drawSwitchers$$inlined$filterIsInstance$1;->INSTANCE:Lcom/smedialink/ui/custom/backup/ConfirmSeedView$drawSwitchers$$inlined$filterIsInstance$1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcher;

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, p1, v2}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcher;->setSeed(Ljava/util/List;Ljava/util/List;)V

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->applyColors()V

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->binding:Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->binding:Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->linearSwitcherWrapper:Landroid/widget/LinearLayout;

    const-string v1, "binding\n                .linearSwitcherWrapper"

    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/smedialink/ui/custom/backup/ConfirmSeedView$applyColors$$inlined$filterIsInstance$1;->INSTANCE:Lcom/smedialink/ui/custom/backup/ConfirmSeedView$applyColors$$inlined$filterIsInstance$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcher;

    .line 43
    invoke-virtual {v1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcher;->applyColors()V

    goto :goto_0

    :cond_0
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

    .line 35
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/backup/ConfirmSeedView;->drawSwitchers(Ljava/util/List;)V

    return-void
.end method
