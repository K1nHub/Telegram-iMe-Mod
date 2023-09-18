.class final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteServiceMessagesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;-><init>(Landroid/content/Context;ZZJIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listView$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listView$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$initListView(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listView$2;->invoke()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v0

    return-object v0
.end method
