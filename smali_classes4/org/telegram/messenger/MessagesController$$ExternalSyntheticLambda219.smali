.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda219;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda219;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda219;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda219;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda219;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$kTN9cTBE-3ETJhgHUqPRNLrcOBc(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;)V

    return-void
.end method
