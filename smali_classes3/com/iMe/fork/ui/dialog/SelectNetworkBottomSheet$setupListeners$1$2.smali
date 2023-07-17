.class public final Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SelectNetworkBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectNetworkBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNetworkBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,467:1\n766#2:468\n857#2,2:469\n*S KotlinDebug\n*F\n+ 1 SelectNetworkBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2\n*L\n190#1:468\n190#1:469,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    .line 175
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getNetworks$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$setFilteredNetworks$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$setSearching$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Z)V

    .line 183
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getListAdapter(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSearchExpand()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 7

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$setSearching$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Z)V

    .line 189
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$isSearching$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getNetworks$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 191
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 192
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_3
    invoke-static {v0, v3}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$setFilteredNetworks$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Ljava/util/List;)V

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getListAdapter(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
