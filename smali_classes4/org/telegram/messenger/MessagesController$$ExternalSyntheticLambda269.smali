.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda269;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda269;->f$0:Lorg/telegram/messenger/MessagesController;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda269;->f$0:Lorg/telegram/messenger/MessagesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Update;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$3DXaTIQbeLyOGHxH_1mZ2XlK-RM(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result p1

    return p1
.end method
