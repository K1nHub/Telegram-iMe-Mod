.class public final synthetic Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SessionsActivity$5;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SessionsActivity$5;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/SessionsActivity$5;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/SessionsActivity$5;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$5$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/SessionsActivity$5;->$r8$lambda$s8S52EvFdvCG5J_espe7beBNS9E(Lorg/telegram/ui/SessionsActivity$5;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    return-void
.end method
