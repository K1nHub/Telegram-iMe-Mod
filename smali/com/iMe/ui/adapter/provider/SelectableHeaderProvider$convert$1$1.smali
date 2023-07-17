.class final Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectableHeaderProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->invoke(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectableHeaderProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectableHeaderProvider.kt\ncom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1549#2:72\n1620#2,3:73\n1#3:76\n*S KotlinDebug\n*F\n+ 1 SelectableHeaderProvider.kt\ncom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1\n*L\n44#1:72\n44#1:73,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    iput-object p3, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    invoke-static {p1}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->access$getPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    if-nez p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getOptions()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 44
    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 46
    sget v3, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 47
    new-instance v5, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v6, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    iget-object v7, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    invoke-direct {v5, v1, v6, v7}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/dialogs/PopupFactoryKt;->createPopupWithOptions$default(Landroid/view/View;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 45
    invoke-static {p1, v0}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->access$setPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Landroidx/appcompat/widget/ListPopupWindow;)V

    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    invoke-static {p1}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->access$getPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->access$setPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Landroidx/appcompat/widget/ListPopupWindow;)V

    :goto_1
    return-void
.end method
