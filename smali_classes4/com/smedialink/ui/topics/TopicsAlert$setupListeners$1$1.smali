.class public final Lcom/smedialink/ui/topics/TopicsAlert$setupListeners$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/topics/TopicsAlert;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/topics/TopicsAlert;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/topics/TopicsAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicsAlert$setupListeners$1$1;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    .line 170
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsAlert$setupListeners$1$1;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsAlert;->access$updateLayout(Lcom/smedialink/ui/topics/TopicsAlert;)V

    return-void
.end method
