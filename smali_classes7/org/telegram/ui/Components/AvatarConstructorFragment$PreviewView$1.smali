.class Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "AvatarConstructorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;Landroid/content/Context;Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;->this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 699
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;->this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;->this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 705
    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;->this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method
