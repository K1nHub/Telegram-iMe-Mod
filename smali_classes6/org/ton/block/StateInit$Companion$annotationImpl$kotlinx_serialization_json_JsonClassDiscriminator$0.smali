.class public final synthetic Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;
.super Ljava/lang/Object;
.source "StateInit.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonClassDiscriminator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/StateInit$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field private final synthetic discriminator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "discriminator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;->discriminator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic annotationType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lkotlinx/serialization/json/JsonClassDiscriminator;

    return-object v0
.end method

.method public final synthetic discriminator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;->discriminator:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/serialization/json/JsonClassDiscriminator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlinx/serialization/json/JsonClassDiscriminator;

    invoke-virtual {p0}, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;->discriminator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonClassDiscriminator;->discriminator()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;->discriminator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2a300764

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;->discriminator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
