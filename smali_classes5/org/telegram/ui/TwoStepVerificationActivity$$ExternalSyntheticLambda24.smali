.class public final synthetic Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TwoStepVerificationActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-boolean p4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$3:Z

    iput-boolean p5, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-boolean v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$3:Z

    iget-boolean v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$$ExternalSyntheticLambda24;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->$r8$lambda$TAL1pffU2WoURRPmxOfn2GqwiEQ(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ZZ)V

    return-void
.end method
