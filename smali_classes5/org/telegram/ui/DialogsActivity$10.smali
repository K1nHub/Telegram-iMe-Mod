.class Lorg/telegram/ui/DialogsActivity$10;
.super Landroid/graphics/Paint;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 4574
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0

    .line 4577
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4578
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24800(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4579
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24900(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
