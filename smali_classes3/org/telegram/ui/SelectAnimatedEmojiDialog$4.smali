.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;
.super Landroid/view/View;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bubbleX:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 615
    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;->val$bubbleX:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 618
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;->val$bubbleX:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 620
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_0
    return-void
.end method
