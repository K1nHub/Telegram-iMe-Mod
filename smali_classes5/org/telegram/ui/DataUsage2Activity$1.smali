.class Lorg/telegram/ui/DataUsage2Activity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DataUsage2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataUsage2Activity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataUsage2Activity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataUsage2Activity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$1;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$1;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
