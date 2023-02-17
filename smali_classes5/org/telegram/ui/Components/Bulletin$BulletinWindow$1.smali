.class Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;
.super Landroid/widget/FrameLayout;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/content/Context;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1686
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1687
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1692
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->access$2100(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method
