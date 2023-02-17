.class final Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogCategoriesFilterRecycleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/ui/topics/TopicView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/smedialink/model/catalog/CategoryItem;


# direct methods
.method constructor <init>(Lcom/smedialink/model/catalog/CategoryItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$1;->$item:Lcom/smedialink/model/catalog/CategoryItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/smedialink/ui/topics/TopicView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$1;->invoke(Lcom/smedialink/ui/topics/TopicView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/ui/topics/TopicView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$1;->$item:Lcom/smedialink/model/catalog/CategoryItem;

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/topics/TopicView;->setCatalogItem(Lcom/smedialink/model/catalog/CategoryItem;)V

    return-void
.end method
