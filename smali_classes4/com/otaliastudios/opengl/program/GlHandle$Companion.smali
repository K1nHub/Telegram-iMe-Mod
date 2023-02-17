.class public final Lcom/otaliastudios/opengl/program/GlHandle$Companion;
.super Ljava/lang/Object;
.source "GlHandle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/opengl/program/GlHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/otaliastudios/opengl/program/GlHandle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAttrib(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;
    .locals 3

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/otaliastudios/opengl/program/GlHandle;

    sget-object v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;->ATTRIB:Lcom/otaliastudios/opengl/program/GlHandle$Type;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/otaliastudios/opengl/program/GlHandle;-><init>(ILcom/otaliastudios/opengl/program/GlHandle$Type;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getUniform(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;
    .locals 3

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/otaliastudios/opengl/program/GlHandle;

    sget-object v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;->UNIFORM:Lcom/otaliastudios/opengl/program/GlHandle$Type;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/otaliastudios/opengl/program/GlHandle;-><init>(ILcom/otaliastudios/opengl/program/GlHandle$Type;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
