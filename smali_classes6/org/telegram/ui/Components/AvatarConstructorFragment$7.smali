.class Lorg/telegram/ui/Components/AvatarConstructorFragment$7;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "AvatarConstructorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 403
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 405
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->firstLayout:Z

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 0

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 418
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p4, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$1400(Lorg/telegram/ui/Components/AvatarConstructorFragment;JLorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 409
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 410
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->firstLayout:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 411
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->firstLayout:Z

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$600(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
