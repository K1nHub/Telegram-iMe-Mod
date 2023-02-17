.class public final Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$2$addOnPageChangeListener$1;
.super Ljava/lang/Object;
.source "BaseDotsIndicator.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$2;->addOnPageChangeListener(Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onPageChangeListenerHelper:Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;


# direct methods
.method constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$2$addOnPageChangeListener$1;->$onPageChangeListenerHelper:Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 224
    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$2$addOnPageChangeListener$1;->$onPageChangeListenerHelper:Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;

    invoke-virtual {p3, p1, p2}, Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;->onPageScrolled(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
