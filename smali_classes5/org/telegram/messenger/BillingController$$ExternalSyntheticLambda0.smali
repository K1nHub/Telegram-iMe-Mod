.class public final synthetic Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/BillingController;->$r8$lambda$BdQrntlbzg7yyeCcKeGLGjmoxxE(Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
