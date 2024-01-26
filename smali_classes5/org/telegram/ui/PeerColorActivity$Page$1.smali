.class Lorg/telegram/ui/PeerColorActivity$Page$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 201
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$100(Lorg/telegram/ui/PeerColorActivity$Page;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$100(Lorg/telegram/ui/PeerColorActivity$Page;)V

    return-void
.end method
