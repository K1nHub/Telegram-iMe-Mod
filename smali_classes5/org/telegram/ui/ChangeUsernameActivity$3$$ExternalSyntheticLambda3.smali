.class public final synthetic Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_username;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

    iput-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLObject;

    iput p4, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p6, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$5:Lorg/telegram/tgnet/TLRPC$TL_username;

    iput-boolean p7, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLObject;

    iget v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$5:Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v6, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;->f$6:Z

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ChangeUsernameActivity$3;->$r8$lambda$bG3eJton8cxtSP7IVgNnlaIgYhk(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V

    return-void
.end method
