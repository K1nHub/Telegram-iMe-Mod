.class final Lcom/iMe/ui/topics/TopicView$ovalLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicView$ovalLayout$2;->this$0:Lcom/iMe/ui/topics/TopicView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/LinearLayout;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicView$ovalLayout$2;->this$0:Lcom/iMe/ui/topics/TopicView;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicView;->access$initOvalLayout(Lcom/iMe/ui/topics/TopicView;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView$ovalLayout$2;->invoke()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
