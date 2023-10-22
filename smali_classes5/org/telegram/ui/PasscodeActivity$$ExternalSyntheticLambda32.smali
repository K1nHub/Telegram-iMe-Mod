.class public final synthetic Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/domain/model/crypto/Wallet;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;->f$0:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;->f$0:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PasscodeActivity;->$r8$lambda$hABIOGZnSgoKBZ2b7QYN_ZCtvTs(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method
