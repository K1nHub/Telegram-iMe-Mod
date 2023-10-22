.class public final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->initListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    .line 126
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
