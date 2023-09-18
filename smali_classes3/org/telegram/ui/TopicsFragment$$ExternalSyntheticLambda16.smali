.class public final synthetic Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/TopicsFragment;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0, p1}, Lorg/telegram/ui/TopicsFragment;->$r8$lambda$YUBesP6r-lXmj9Cf0fbHi1A9tXE(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    return p1
.end method
