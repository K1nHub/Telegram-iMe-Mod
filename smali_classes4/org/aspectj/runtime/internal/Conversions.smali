.class public final Lorg/aspectj/runtime/internal/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# direct methods
.method public static booleanObject(Z)Ljava/lang/Object;
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public static doubleObject(D)Ljava/lang/Object;
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static floatObject(F)Ljava/lang/Object;
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static intObject(I)Ljava/lang/Object;
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static longObject(J)Ljava/lang/Object;
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
