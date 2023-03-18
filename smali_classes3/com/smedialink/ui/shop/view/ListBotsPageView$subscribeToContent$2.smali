.class final Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ListBotsPageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBotsPageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBotsPageView.kt\ncom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1054#2:94\n1054#2:95\n*S KotlinDebug\n*F\n+ 1 ListBotsPageView.kt\ncom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2\n*L\n77#1:94\n78#1:95\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/view/ListBotsPageView;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/view/ListBotsPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2;->this$0:Lcom/smedialink/ui/shop/view/ListBotsPageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2;->this$0:Lcom/smedialink/ui/shop/view/ListBotsPageView;

    invoke-static {v0}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->access$getTab$p(Lcom/smedialink/ui/shop/view/ListBotsPageView;)Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v0

    sget-object v1, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    new-instance v0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$2;

    invoke-direct {v0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$2;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
