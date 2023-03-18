.class public final Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;
.super Lorg/telegram/ui/Components/SearchField;
.source "SelectLanguageBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->initSearchView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectLanguageBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectLanguageBottomSheet.kt\norg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,416:1\n766#2:417\n857#2,2:418\n*S KotlinDebug\n*F\n+ 1 SelectLanguageBottomSheet.kt\norg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1\n*L\n97#1:417\n97#1:418,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    const/4 p1, 0x0

    .line 92
    invoke-direct {p0, p2, p1, p3}, Lorg/telegram/ui/Components/SearchField;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->access$setSearching$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Z)V

    .line 96
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->access$isSearching$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-virtual {v0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getLanguages()Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    .line 97
    invoke-virtual {v5}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 857
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {v0, v3}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->access$setFilteredLanguages$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Ljava/util/List;)V

    .line 99
    :cond_3
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {p1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->access$getListAdapter(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
