.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$Chat;JZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$2:J

    iput-boolean p5, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$3:Z

    iput-object p6, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$2:J

    iget-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$3:Z

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda102;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$U-R92EFpfgMskF9T-SW1zOV7bU0(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$Chat;JZLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
