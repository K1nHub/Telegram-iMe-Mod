.class public final synthetic Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PrivacyControlActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$3:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;->f$3:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;->$r8$lambda$TsZS95A7cpGACAa941nwHQgh2oA(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
