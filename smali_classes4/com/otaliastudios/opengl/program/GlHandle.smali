.class public final Lcom/otaliastudios/opengl/program/GlHandle;
.super Ljava/lang/Object;
.source "GlHandle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlHandle$Type;,
        Lcom/otaliastudios/opengl/program/GlHandle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/otaliastudios/opengl/program/GlHandle$Companion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlHandle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlHandle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlHandle;->Companion:Lcom/otaliastudios/opengl/program/GlHandle$Companion;

    return-void
.end method

.method private constructor <init>(ILcom/otaliastudios/opengl/program/GlHandle$Type;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/otaliastudios/opengl/program/GlHandle;->name:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/otaliastudios/opengl/program/GlHandle$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 21
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 20
    :cond_1
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 19
    :goto_0
    iput p1, p0, Lcom/otaliastudios/opengl/program/GlHandle;->value:I

    .line 23
    invoke-static {p1, p3}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/otaliastudios/opengl/program/GlHandle$Type;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/program/GlHandle;-><init>(ILcom/otaliastudios/opengl/program/GlHandle$Type;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlHandle;->value:I

    return v0
.end method
