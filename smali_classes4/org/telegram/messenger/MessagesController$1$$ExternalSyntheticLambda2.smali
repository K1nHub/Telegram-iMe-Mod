.class public final synthetic Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback3;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback3;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MessagesController$1;->$r8$lambda$zghpepLhgC3ED_5iO1Wh78Z1k9s(Lorg/telegram/messenger/Utilities$Callback3;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
