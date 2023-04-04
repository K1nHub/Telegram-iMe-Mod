.class final Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1$context$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MvpBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1;-><init>(Lcom/iMe/ui/base/mvp/MvpBottomSheet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/base/mvp/MvpBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/ui/base/mvp/MvpBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1$context$2;->this$0:Lcom/iMe/ui/base/mvp/MvpBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Context;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1$context$2;->this$0:Lcom/iMe/ui/base/mvp/MvpBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "this@MvpBottomSheet.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1$context$2;->invoke()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
