.class Lorg/telegram/messenger/ForwardingMessagesParams$1;
.super Lorg/telegram/messenger/MessageObject;
.source "ForwardingMessagesParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ForwardingMessagesParams;-><init>(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ForwardingMessagesParams;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ForwardingMessagesParams;ILorg/telegram/tgnet/TLRPC$Message;ZZ)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams$1;->this$0:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    return-void
.end method


# virtual methods
.method public isPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needDrawForwarded()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams$1;->this$0:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v0

    return v0
.end method
