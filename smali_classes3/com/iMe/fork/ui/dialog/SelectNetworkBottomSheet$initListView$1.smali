.class public final Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$initListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SelectNetworkBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$initListView$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    .line 139
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$initListView$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    :cond_0
    return-void
.end method
