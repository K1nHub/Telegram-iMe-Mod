.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda386;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$o4Gt7Qwiadmrl50MlP3hEABdooY(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
