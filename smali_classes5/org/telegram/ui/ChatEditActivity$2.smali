.class Lorg/telegram/ui/ChatEditActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatEditActivity;


# direct methods
.method public static synthetic $r8$lambda$N2yx4PfZn2KJiqQZBuqPjpK_KbI(Lorg/telegram/ui/ChatEditActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity$2;->lambda$onItemClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$SrD5inzqS8RUmfPwQ1EKLyJ8vb0(Lorg/telegram/ui/ChatEditActivity$2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity$2;->lambda$onItemClick$1(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatEditActivity;->onSuccessDeleteAlbum()V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Z)V
    .locals 3

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->access$000(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v0

    neg-long v0, v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatEditActivity$2;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/fork/controller/AlbumsController;->removeAlbum(JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 12

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 390
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ChatEditActivity;->access$400(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/ChatEditActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ChatEditActivity$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatEditActivity$2;)V

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->access$500(Lorg/telegram/ui/ChatEditActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$2;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->access$600(Lorg/telegram/ui/ChatEditActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
