.class public final Lorg/fork/enums/PasscodeType$Companion;
.super Ljava/lang/Object;
.source "PasscodeType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/PasscodeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPasscodeType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasscodeType.kt\norg/fork/enums/PasscodeType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,11:1\n1#2:12\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/enums/PasscodeType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findById(I)Lorg/fork/enums/PasscodeType;
    .locals 6

    .line 9
    invoke-static {}, Lorg/fork/enums/PasscodeType;->values()[Lorg/fork/enums/PasscodeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/fork/enums/PasscodeType;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    sget-object v4, Lorg/fork/enums/PasscodeType;->PIN:Lorg/fork/enums/PasscodeType;

    :cond_3
    return-object v4
.end method
