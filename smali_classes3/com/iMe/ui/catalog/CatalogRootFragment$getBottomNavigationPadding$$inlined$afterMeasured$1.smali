.class public final Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;
.super Ljava/lang/Object;
.source "ViewExt.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationPadding(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt$afterMeasured$1\n+ 2 CatalogRootFragment.kt\ncom/iMe/ui/catalog/CatalogRootFragment\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,401:1\n97#2:402\n98#2:405\n368#3:403\n350#3:404\n*S KotlinDebug\n*F\n+ 1 CatalogRootFragment.kt\ncom/iMe/ui/catalog/CatalogRootFragment\n*L\n97#1:403\n97#1:404\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_afterMeasured:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$this_afterMeasured:Landroid/view/View;

    iput-object p2, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$action$inlined:Lkotlin/jvm/functions/Function1;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 274
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$this_afterMeasured:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$this_afterMeasured:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$this_afterMeasured:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 276
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$this_afterMeasured:Landroid/view/View;

    .line 402
    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;->$action$inlined:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_2
    if-eqz v5, :cond_3

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    add-int/2addr v2, v4

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
