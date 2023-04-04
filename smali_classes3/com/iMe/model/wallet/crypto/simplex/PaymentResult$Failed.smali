.class public final Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Failed;
.super Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;
.source "PaymentResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failed"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Failed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Failed;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Failed;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Failed;->INSTANCE:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Failed;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
