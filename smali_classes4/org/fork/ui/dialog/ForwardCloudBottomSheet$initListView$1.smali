.class public final Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->initListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    .line 91
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
