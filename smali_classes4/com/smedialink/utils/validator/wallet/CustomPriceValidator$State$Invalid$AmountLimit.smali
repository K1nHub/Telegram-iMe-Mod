.class public final Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;
.super Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid;
.source "CustomPriceValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AmountLimit"
.end annotation


# instance fields
.field private final amount:F

.field private final errorText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "errorText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    iput-object p1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;->errorText:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;->amount:F

    return-void
.end method


# virtual methods
.method public final getAmount()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;->amount:F

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;->errorText:Ljava/lang/String;

    return-object v0
.end method
