.class final enum Lcom/otaliastudios/opengl/program/GlHandle$Type;
.super Ljava/lang/Enum;
.source "GlHandle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/opengl/program/GlHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/opengl/program/GlHandle$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/opengl/program/GlHandle$Type;

.field public static final enum ATTRIB:Lcom/otaliastudios/opengl/program/GlHandle$Type;

.field public static final enum UNIFORM:Lcom/otaliastudios/opengl/program/GlHandle$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/otaliastudios/opengl/program/GlHandle$Type;

    new-instance v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;

    const-string v2, "ATTRIB"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/opengl/program/GlHandle$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;->ATTRIB:Lcom/otaliastudios/opengl/program/GlHandle$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;

    const-string v2, "UNIFORM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/opengl/program/GlHandle$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;->UNIFORM:Lcom/otaliastudios/opengl/program/GlHandle$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/otaliastudios/opengl/program/GlHandle$Type;->$VALUES:[Lcom/otaliastudios/opengl/program/GlHandle$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle$Type;
    .locals 1

    const-class v0, Lcom/otaliastudios/opengl/program/GlHandle$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/opengl/program/GlHandle$Type;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/opengl/program/GlHandle$Type;
    .locals 1

    sget-object v0, Lcom/otaliastudios/opengl/program/GlHandle$Type;->$VALUES:[Lcom/otaliastudios/opengl/program/GlHandle$Type;

    invoke-virtual {v0}, [Lcom/otaliastudios/opengl/program/GlHandle$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/opengl/program/GlHandle$Type;

    return-object v0
.end method
