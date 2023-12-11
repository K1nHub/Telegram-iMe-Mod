.class Lorg/telegram/ui/PeerColorActivity$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)V

    return-void
.end method
