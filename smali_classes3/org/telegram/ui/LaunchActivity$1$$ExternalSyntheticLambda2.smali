.class public final synthetic Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field public final synthetic f$3:Lcom/smedialink/storage/domain/model/crypto/NetworkType;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity$1;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/LaunchActivity$1;

    iput-wide p2, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$2:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$3:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/LaunchActivity$1;

    iget-wide v1, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$2:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;->f$3:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity$1;->$r8$lambda$dvIlywwGNo2GZVORP0X6BWrRfJ4(Lorg/telegram/ui/LaunchActivity$1;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
