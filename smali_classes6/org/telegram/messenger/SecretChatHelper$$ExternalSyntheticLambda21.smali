.class public final synthetic Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SecretChatHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$2:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    iput p4, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$3:I

    iput-object p5, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$2:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    iget v3, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$3:I

    iget-object v4, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/SecretChatHelper;->$r8$lambda$cDC8Au6RbOlLX7ARZcAAlj2kDik(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;ILjava/lang/String;)V

    return-void
.end method
