.class final Lorg/fork/ui/view/SortingFilterCell$fabsView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SortingFilterCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/SortingFilterCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/ui/view/FabsView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/SortingFilterCell;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/SortingFilterCell;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/SortingFilterCell$fabsView$2;->this$0:Lorg/fork/ui/view/SortingFilterCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fork/ui/view/SortingFilterCell$fabsView$2;->invoke()Lorg/fork/ui/view/FabsView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/ui/view/FabsView;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/fork/ui/view/SortingFilterCell$fabsView$2;->this$0:Lorg/fork/ui/view/SortingFilterCell;

    invoke-static {v0}, Lorg/fork/ui/view/SortingFilterCell;->access$initFabsView(Lorg/fork/ui/view/SortingFilterCell;)Lorg/fork/ui/view/FabsView;

    move-result-object v0

    return-object v0
.end method
