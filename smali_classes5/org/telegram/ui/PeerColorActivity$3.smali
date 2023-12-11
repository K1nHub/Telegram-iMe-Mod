.class Lorg/telegram/ui/PeerColorActivity$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 201
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)V

    return-void
.end method
