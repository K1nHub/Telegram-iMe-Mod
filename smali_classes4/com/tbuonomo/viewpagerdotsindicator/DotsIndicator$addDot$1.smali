.class final Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;
.super Ljava/lang/Object;
.source "DotsIndicator.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->addDot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;


# direct methods
.method constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {p1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getDotsClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->$index:I

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getPager()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {p1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getPager()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$addDot$1;->$index:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
