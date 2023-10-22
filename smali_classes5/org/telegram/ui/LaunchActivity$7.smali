.class Lorg/telegram/ui/LaunchActivity$7;
.super Lorg/telegram/ui/Components/FireworksOverlay;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    .line 881
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 883
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 1

    .line 894
    invoke-super {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->onStop()V

    const/16 v0, 0x8

    .line 895
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 889
    invoke-super {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    return-void
.end method
