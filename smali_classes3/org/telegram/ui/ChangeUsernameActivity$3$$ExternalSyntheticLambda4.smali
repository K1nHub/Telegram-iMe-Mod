.class public final synthetic Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_username;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;ILorg/telegram/tgnet/TLRPC$TL_username;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

    iput p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/tgnet/TLRPC$TL_username;

    iput-boolean p5, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

    iget v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$4:Z

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ChangeUsernameActivity$3;->$r8$lambda$lUX3iAnC_Pypjz-DKZGWWLCtP7M(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;ILorg/telegram/tgnet/TLRPC$TL_username;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
