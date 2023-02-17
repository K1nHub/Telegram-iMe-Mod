.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;ZLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$3:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda231;->f$3:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$RghAm9tKSaRG25RRS2q0i0XuF9I(Lorg/telegram/ui/ChatActivity;ZLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method
