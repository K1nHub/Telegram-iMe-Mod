.class public final synthetic Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelCreateActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/ChannelCreateActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;->f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChannelCreateActivity;->$r8$lambda$Qk4SJ_vEoMPj9nZTGEZ5Xpvdr2I(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    return-void
.end method
