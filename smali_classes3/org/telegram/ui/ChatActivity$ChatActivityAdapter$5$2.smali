.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Lorg/telegram/messenger/MessageObject$SendAnimationData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;Ljava/lang/String;)V
    .locals 0

    .line 32704
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/messenger/MessageObject$SendAnimationData;)Ljava/lang/Float;
    .locals 0

    .line 32715
    iget p1, p1, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentX:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32704
    check-cast p1, Lorg/telegram/messenger/MessageObject$SendAnimationData;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;->get(Lorg/telegram/messenger/MessageObject$SendAnimationData;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 32704
    check-cast p1, Lorg/telegram/messenger/MessageObject$SendAnimationData;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;->setValue(Lorg/telegram/messenger/MessageObject$SendAnimationData;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/messenger/MessageObject$SendAnimationData;F)V
    .locals 0

    .line 32707
    iput p2, p1, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentX:F

    .line 32708
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$55700(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32709
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$55800(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
