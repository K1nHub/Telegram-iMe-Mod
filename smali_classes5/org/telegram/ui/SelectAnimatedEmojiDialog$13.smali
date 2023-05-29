.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
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
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndAnimation()V
    .locals 2

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$502(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z

    return-void
.end method

.method public onPreAnimation()V
    .locals 2

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$502(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z

    return-void
.end method
