.class public final Lcom/iMe/fork/ui/view/FloatingActionButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton$2;->this$0:Lcom/iMe/fork/ui/view/FloatingActionButton;

    .line 62
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton$2;->this$0:Lcom/iMe/fork/ui/view/FloatingActionButton;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/FloatingActionButton;->access$getButtonSize(Lcom/iMe/fork/ui/view/FloatingActionButton;)I

    move-result p1

    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton$2;->this$0:Lcom/iMe/fork/ui/view/FloatingActionButton;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->access$getButtonSize(Lcom/iMe/fork/ui/view/FloatingActionButton;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
