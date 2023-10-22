.class public final synthetic Lorg/telegram/ui/ChatActivity$28$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$28;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$28;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$28$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatActivity$28;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$28$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$28$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatActivity$28;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$28$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatActivity$28;->$r8$lambda$aZiH_n_FqC-PxaqCkSB_bIFOAgY(Lorg/telegram/ui/ChatActivity$28;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
