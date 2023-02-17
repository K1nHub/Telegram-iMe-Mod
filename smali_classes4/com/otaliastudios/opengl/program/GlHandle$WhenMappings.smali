.class public final synthetic Lcom/otaliastudios/opengl/program/GlHandle$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/otaliastudios/opengl/program/GlHandle$Type;->values()[Lcom/otaliastudios/opengl/program/GlHandle$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/opengl/program/GlHandle$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;->ATTRIB:Lcom/otaliastudios/opengl/program/GlHandle$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/otaliastudios/opengl/program/GlHandle$Type;->UNIFORM:Lcom/otaliastudios/opengl/program/GlHandle$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
