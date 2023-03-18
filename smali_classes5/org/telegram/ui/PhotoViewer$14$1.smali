.class Lorg/telegram/ui/PhotoViewer$14$1;
.super Lorg/telegram/ui/Components/StickersAlert;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$14;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$14;Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 4957
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$14$1;->this$1:Lorg/telegram/ui/PhotoViewer$14;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 4960
    invoke-super {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 4961
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14$1;->this$1:Lorg/telegram/ui/PhotoViewer$14;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$15400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/StickersAlert;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 4962
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14$1;->this$1:Lorg/telegram/ui/PhotoViewer$14;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$15402(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert;

    :cond_0
    return-void
.end method
