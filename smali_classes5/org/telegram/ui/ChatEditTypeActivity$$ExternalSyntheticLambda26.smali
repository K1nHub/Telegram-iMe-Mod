.class public final synthetic Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditTypeActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ChatEditTypeActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;->f$2:Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ChatEditTypeActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;->f$2:Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->$r8$lambda$MbuiTpsilGpIKKIP9Z_qftnMeh0(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
