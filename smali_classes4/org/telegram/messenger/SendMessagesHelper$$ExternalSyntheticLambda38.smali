.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$1:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$2:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$3:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$4:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$1:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$2:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$3:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$4:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$JKfUComyMfgzs0rz_A2CgSQAu0E(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method
