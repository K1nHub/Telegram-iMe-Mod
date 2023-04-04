.class final Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NeurobotsStoreActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/NeurobotsStoreActivity;->listenForSearchResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/bots/domain/model/ShopItem;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/bots/domain/model/ShopItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeurobotsStoreActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeurobotsStoreActivity.kt\ncom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n1054#2:406\n*S KotlinDebug\n*F\n+ 1 NeurobotsStoreActivity.kt\ncom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2\n*L\n324#1:406\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;

    invoke-direct {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;->INSTANCE:Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    new-instance v0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2$invoke$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2$invoke$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
