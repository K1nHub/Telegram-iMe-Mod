.class Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$2;
.super Landroid/widget/LinearLayout;
.source "ScrollSlidingTextTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;Landroid/content/Context;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$2;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$2;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method
