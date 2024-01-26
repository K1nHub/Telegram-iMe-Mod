.class public final Lcom/iMe/storage/domain/utils/crypto/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;
    }
.end annotation


# direct methods
.method public static fromWei(Ljava/lang/String;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "unit"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/storage/domain/utils/crypto/Convert;->fromWei(Ljava/math/BigDecimal;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static fromWei(Ljava/math/BigDecimal;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigDecimal;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "unit"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->getWeiFactor()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method
