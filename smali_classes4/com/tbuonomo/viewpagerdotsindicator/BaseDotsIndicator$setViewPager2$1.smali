.class public final Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "BaseDotsIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;


# direct methods
.method constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 249
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 250
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;

    invoke-virtual {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDots()V

    return-void
.end method
