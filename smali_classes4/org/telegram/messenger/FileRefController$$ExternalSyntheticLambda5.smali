.class public final synthetic Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileRefController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

.field public final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/FileRefController;

    iput-object p2, p0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iput-object p3, p0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/FileRefController;

    iget-object v1, p0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-object v2, p0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;->f$2:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileRefController;->$r8$lambda$Iq_QMYM2hhaKnD_BeIlb5XlMDX4(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    return-void
.end method
