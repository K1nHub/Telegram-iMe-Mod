.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda266;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda266;->f$0:Lorg/telegram/messenger/MessagesController;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda266;->f$0:Lorg/telegram/messenger/MessagesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$AhakC0b_6zdCTpmMhbvoioLpyrY(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;)V

    return-void
.end method
