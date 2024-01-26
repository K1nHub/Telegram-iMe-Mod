.class public final enum Lio/ktor/network/selector/SelectInterest;
.super Ljava/lang/Enum;
.source "SelectorManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/SelectInterest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/selector/SelectInterest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectorManager.kt\nio/ktor/network/selector/SelectInterest\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,82:1\n11335#2:83\n11670#2,3:84\n*S KotlinDebug\n*F\n+ 1 SelectorManager.kt\nio/ktor/network/selector/SelectInterest\n*L\n77#1:83\n77#1:84,3\n*E\n"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/ktor/network/selector/SelectInterest;

.field public static final enum ACCEPT:Lio/ktor/network/selector/SelectInterest;

.field private static final AllInterests:[Lio/ktor/network/selector/SelectInterest;

.field public static final enum CONNECT:Lio/ktor/network/selector/SelectInterest;

.field public static final Companion:Lio/ktor/network/selector/SelectInterest$Companion;

.field public static final enum READ:Lio/ktor/network/selector/SelectInterest;

.field public static final enum WRITE:Lio/ktor/network/selector/SelectInterest;

.field private static final flags:[I

.field private static final size:I


# instance fields
.field private final flag:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/selector/SelectInterest;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/ktor/network/selector/SelectInterest;

    sget-object v1, Lio/ktor/network/selector/SelectInterest;->READ:Lio/ktor/network/selector/SelectInterest;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/network/selector/SelectInterest;->ACCEPT:Lio/ktor/network/selector/SelectInterest;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/network/selector/SelectInterest;->CONNECT:Lio/ktor/network/selector/SelectInterest;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lio/ktor/network/selector/SelectInterest;

    const-string v1, "READ"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/network/selector/SelectInterest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->READ:Lio/ktor/network/selector/SelectInterest;

    .line 70
    new-instance v0, Lio/ktor/network/selector/SelectInterest;

    const-string v1, "WRITE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lio/ktor/network/selector/SelectInterest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    .line 71
    new-instance v0, Lio/ktor/network/selector/SelectInterest;

    const-string v1, "ACCEPT"

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4}, Lio/ktor/network/selector/SelectInterest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->ACCEPT:Lio/ktor/network/selector/SelectInterest;

    .line 72
    new-instance v0, Lio/ktor/network/selector/SelectInterest;

    const-string v1, "CONNECT"

    const/4 v3, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lio/ktor/network/selector/SelectInterest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->CONNECT:Lio/ktor/network/selector/SelectInterest;

    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->$values()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->$VALUES:[Lio/ktor/network/selector/SelectInterest;

    new-instance v0, Lio/ktor/network/selector/SelectInterest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/selector/SelectInterest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    .line 75
    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->values()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->AllInterests:[Lio/ktor/network/selector/SelectInterest;

    .line 77
    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->values()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 77
    iget v4, v4, Lio/ktor/network/selector/SelectInterest;->flag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/SelectInterest;->flags:[I

    .line 79
    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->values()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    array-length v0, v0

    sput v0, Lio/ktor/network/selector/SelectInterest;->size:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lio/ktor/network/selector/SelectInterest;->flag:I

    return-void
.end method

.method public static final synthetic access$getAllInterests$cp()[Lio/ktor/network/selector/SelectInterest;
    .locals 1

    .line 67
    sget-object v0, Lio/ktor/network/selector/SelectInterest;->AllInterests:[Lio/ktor/network/selector/SelectInterest;

    return-object v0
.end method

.method public static final synthetic access$getFlags$cp()[I
    .locals 1

    .line 67
    sget-object v0, Lio/ktor/network/selector/SelectInterest;->flags:[I

    return-object v0
.end method

.method public static final synthetic access$getSize$cp()I
    .locals 1

    .line 67
    sget v0, Lio/ktor/network/selector/SelectInterest;->size:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/selector/SelectInterest;
    .locals 1

    const-class v0, Lio/ktor/network/selector/SelectInterest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/selector/SelectInterest;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/selector/SelectInterest;
    .locals 1

    sget-object v0, Lio/ktor/network/selector/SelectInterest;->$VALUES:[Lio/ktor/network/selector/SelectInterest;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/selector/SelectInterest;

    return-object v0
.end method


# virtual methods
.method public final getFlag()I
    .locals 1

    .line 68
    iget v0, p0, Lio/ktor/network/selector/SelectInterest;->flag:I

    return v0
.end method
