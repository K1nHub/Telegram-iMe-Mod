.class Lorg/telegram/ui/Components/ShareAlert$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-eqz p3, :cond_0

    .line 994
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$6600(Lorg/telegram/ui/Components/ShareAlert;)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I

    :cond_0
    return-void
.end method
