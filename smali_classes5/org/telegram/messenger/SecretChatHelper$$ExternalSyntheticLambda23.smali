.class public final synthetic Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SecretChatHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->$r8$lambda$zeHaPwRoSNboGVNb_9EYJ-qzOZg(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    return-void
.end method
