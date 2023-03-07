.class public Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;
.super Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;
.source "ForwardingMessagesParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ForwardingMessagesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewMediaPoll"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ForwardingMessagesParams;

.field public totalVotersCached:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;->this$0:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    return-void
.end method
