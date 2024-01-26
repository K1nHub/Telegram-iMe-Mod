.class final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteServiceMessagesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;-><init>(Landroid/content/Context;ZZJJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;
    .locals 3

    .line 75
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;->invoke()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    move-result-object v0

    return-object v0
.end method
