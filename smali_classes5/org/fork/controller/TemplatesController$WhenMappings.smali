.class public final synthetic Lorg/fork/controller/TemplatesController$WhenMappings;
.super Ljava/lang/Object;
.source "TemplatesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/controller/TemplatesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/TemplatesSortingType;->DATE:Lorg/fork/enums/TemplatesSortingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/TemplatesSortingType;->NAME:Lorg/fork/enums/TemplatesSortingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/fork/controller/TemplatesController$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
