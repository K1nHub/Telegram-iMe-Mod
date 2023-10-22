.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$1:Lorg/telegram/messenger/MessageObject;

    iput p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$2:I

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$1:Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$2:I

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda247;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$FhAPQamTyk_DJEx8aValQJrs6AU(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;IZ)V

    return-void
.end method
