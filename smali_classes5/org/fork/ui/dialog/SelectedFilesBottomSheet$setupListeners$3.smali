.class final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectedFilesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->setupListeners()V
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
    value = "SMAP\nSelectedFilesBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectedFilesBottomSheet.kt\norg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,519:1\n1547#2:520\n1618#2,3:521\n*S KotlinDebug\n*F\n+ 1 SelectedFilesBottomSheet.kt\norg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3\n*L\n170#1:520\n170#1:521,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 169
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-virtual {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->getOnFilesChangedAction()Lorg/fork/utils/Callbacks$Callback1;

    move-result-object p1

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    .line 170
    invoke-virtual {v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method
