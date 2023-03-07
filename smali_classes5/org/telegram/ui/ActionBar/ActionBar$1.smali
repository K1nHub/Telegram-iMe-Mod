.class Lorg/telegram/ui/ActionBar/ActionBar$1;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;)V
    .locals 0

    .line 445
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 448
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
