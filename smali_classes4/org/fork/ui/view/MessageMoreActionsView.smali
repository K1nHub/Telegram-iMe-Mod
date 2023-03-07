.class public final Lorg/fork/ui/view/MessageMoreActionsView;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;,
        Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemView;,
        Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;,
        Lorg/fork/ui/view/MessageMoreActionsView$Companion;
    }
.end annotation


# instance fields
.field private final gapItemHeight$delegate:Lkotlin/Lazy;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final optionItemHeight$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/view/MessageMoreActionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/view/MessageMoreActionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "+",
            "Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 26
    iput-object p6, p0, Lorg/fork/ui/view/MessageMoreActionsView;->items:Ljava/util/List;

    .line 30
    sget-object p1, Lorg/fork/ui/view/MessageMoreActionsView$gapItemHeight$2;->INSTANCE:Lorg/fork/ui/view/MessageMoreActionsView$gapItemHeight$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MessageMoreActionsView;->gapItemHeight$delegate:Lkotlin/Lazy;

    .line 31
    sget-object p1, Lorg/fork/ui/view/MessageMoreActionsView$optionItemHeight$2;->INSTANCE:Lorg/fork/ui/view/MessageMoreActionsView$optionItemHeight$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MessageMoreActionsView;->optionItemHeight$delegate:Lkotlin/Lazy;

    .line 34
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 35
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    return-void
.end method

.method public static final synthetic access$getGapItemHeight(Lorg/fork/ui/view/MessageMoreActionsView;)I
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/fork/ui/view/MessageMoreActionsView;->getGapItemHeight()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getOptionItemHeight(Lorg/fork/ui/view/MessageMoreActionsView;)I
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/fork/ui/view/MessageMoreActionsView;->getOptionItemHeight()I

    move-result p0

    return p0
.end method

.method private final getGapItemHeight()I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/fork/ui/view/MessageMoreActionsView;->gapItemHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getOptionItemHeight()I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/fork/ui/view/MessageMoreActionsView;->optionItemHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final createListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;

    invoke-direct {v1, p0, v0}, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;-><init>(Lorg/fork/ui/view/MessageMoreActionsView;Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    new-instance v0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;

    invoke-direct {v0, p0}, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;-><init>(Lorg/fork/ui/view/MessageMoreActionsView;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v1
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/fork/ui/view/MessageMoreActionsView;->items:Ljava/util/List;

    return-object v0
.end method
