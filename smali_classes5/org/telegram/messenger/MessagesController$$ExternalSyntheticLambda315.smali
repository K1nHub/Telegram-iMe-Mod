.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;ZLorg/telegram/messenger/MessagesController$ErrorDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$2:Ljava/lang/Runnable;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$5:Z

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$6:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$2:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    iget-boolean v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$5:Z

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda315;->f$6:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$Rg2L-bv24s3QYFydaLOK5lgvb9U(Lorg/telegram/messenger/MessagesController;JLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;ZLorg/telegram/messenger/MessagesController$ErrorDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
