.class public final synthetic Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelColorActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/ChannelColorActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChannelColorActivity;->$r8$lambda$f4R4h3CoLcMndOgOQlSybrG3iMk(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
