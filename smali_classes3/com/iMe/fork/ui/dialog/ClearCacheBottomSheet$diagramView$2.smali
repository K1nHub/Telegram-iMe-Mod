.class final Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet$diagramView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ClearCacheBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/EnumMap;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/StorageDiagramView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet$diagramView$2;->this$0:Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet$diagramView$2;->invoke()Lorg/telegram/ui/Components/StorageDiagramView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/StorageDiagramView;
    .locals 2

    .line 31
    new-instance v0, Lorg/telegram/ui/Components/StorageDiagramView;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet$diagramView$2;->this$0:Lcom/iMe/fork/ui/dialog/ClearCacheBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
