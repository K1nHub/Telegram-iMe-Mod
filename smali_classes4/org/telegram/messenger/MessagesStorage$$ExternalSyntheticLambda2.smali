.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda2;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda2;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$a65a5bh27b_LIvBUlVgKtjgoxxs(Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
