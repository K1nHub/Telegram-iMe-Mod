.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 155
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    const/4 v2, 0x4

    .line 157
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 159
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    .line 161
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static getTagWireType(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static makeTag(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
