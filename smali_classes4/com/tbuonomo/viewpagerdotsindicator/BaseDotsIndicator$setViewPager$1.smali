.class public final Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$1;
.super Landroid/database/DataSetObserver;
.source "BaseDotsIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
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

    .line 192
    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 195
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$1;->this$0:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;

    invoke-virtual {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDots()V

    return-void
.end method
