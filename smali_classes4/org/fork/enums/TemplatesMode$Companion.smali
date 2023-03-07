.class public final Lorg/fork/enums/TemplatesMode$Companion;
.super Ljava/lang/Object;
.source "TemplatesMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/TemplatesMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplatesMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplatesMode.kt\norg/fork/enums/TemplatesMode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,15:1\n1#2:16\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/enums/TemplatesMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesMode;
    .locals 5

    .line 13
    invoke-static {}, Lorg/fork/enums/TemplatesMode;->values()[Lorg/fork/enums/TemplatesMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lorg/fork/enums/TemplatesMode;->OVAL:Lorg/fork/enums/TemplatesMode;

    :cond_2
    return-object v3
.end method
