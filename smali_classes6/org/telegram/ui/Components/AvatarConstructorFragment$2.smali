.class Lorg/telegram/ui/Components/AvatarConstructorFragment$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
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
.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$2;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$2;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$000(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$2;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$100(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    :cond_1
    return-void
.end method
