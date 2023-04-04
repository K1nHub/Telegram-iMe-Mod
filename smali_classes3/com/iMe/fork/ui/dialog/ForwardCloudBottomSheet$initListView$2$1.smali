.class public final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.method constructor <init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    .line 106
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$updateLayout(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    return-void
.end method
