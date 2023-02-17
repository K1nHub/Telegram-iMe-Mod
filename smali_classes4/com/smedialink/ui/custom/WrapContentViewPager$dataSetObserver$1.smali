.class public final Lcom/smedialink/ui/custom/WrapContentViewPager$dataSetObserver$1;
.super Landroid/database/DataSetObserver;
.source "WrapContentViewPager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/custom/WrapContentViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/custom/WrapContentViewPager;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/custom/WrapContentViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/custom/WrapContentViewPager$dataSetObserver$1;->this$0:Lcom/smedialink/ui/custom/WrapContentViewPager;

    .line 18
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 20
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 21
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager$dataSetObserver$1;->this$0:Lcom/smedialink/ui/custom/WrapContentViewPager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smedialink/ui/custom/WrapContentViewPager;->access$setDataChangedFlag$p(Lcom/smedialink/ui/custom/WrapContentViewPager;Z)V

    return-void
.end method
