.class final Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView$circleView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectIconBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView$circleView$2;->this$0:Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView$circleView$2;->this$0:Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;->access$initCircleView(Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView$circleView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
