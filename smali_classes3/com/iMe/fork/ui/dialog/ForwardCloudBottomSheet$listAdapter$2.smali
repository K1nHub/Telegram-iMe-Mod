.class final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ForwardCloudBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
    .locals 4

    .line 57
    new-instance v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;->invoke()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object v0

    return-object v0
.end method
