.class public final enum Lcom/iMe/storage/domain/model/twitter/MediaType;
.super Ljava/lang/Enum;
.source "TweetInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/twitter/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/twitter/MediaType;

.field public static final enum ANIMATED_GIF:Lcom/iMe/storage/domain/model/twitter/MediaType;

.field public static final enum PHOTO:Lcom/iMe/storage/domain/model/twitter/MediaType;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/twitter/MediaType;

.field public static final enum VIDEO:Lcom/iMe/storage/domain/model/twitter/MediaType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/twitter/MediaType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/domain/model/twitter/MediaType;

    sget-object v1, Lcom/iMe/storage/domain/model/twitter/MediaType;->ANIMATED_GIF:Lcom/iMe/storage/domain/model/twitter/MediaType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/twitter/MediaType;->PHOTO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/twitter/MediaType;->VIDEO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/twitter/MediaType;->UNKNOWN:Lcom/iMe/storage/domain/model/twitter/MediaType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/twitter/MediaType;

    const-string v1, "ANIMATED_GIF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/twitter/MediaType;->ANIMATED_GIF:Lcom/iMe/storage/domain/model/twitter/MediaType;

    new-instance v0, Lcom/iMe/storage/domain/model/twitter/MediaType;

    const-string v1, "PHOTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/twitter/MediaType;->PHOTO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    new-instance v0, Lcom/iMe/storage/domain/model/twitter/MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/twitter/MediaType;->VIDEO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    new-instance v0, Lcom/iMe/storage/domain/model/twitter/MediaType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/twitter/MediaType;->UNKNOWN:Lcom/iMe/storage/domain/model/twitter/MediaType;

    invoke-static {}, Lcom/iMe/storage/domain/model/twitter/MediaType;->$values()[Lcom/iMe/storage/domain/model/twitter/MediaType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/twitter/MediaType;->$VALUES:[Lcom/iMe/storage/domain/model/twitter/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/twitter/MediaType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/twitter/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/twitter/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/twitter/MediaType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/twitter/MediaType;->$VALUES:[Lcom/iMe/storage/domain/model/twitter/MediaType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/twitter/MediaType;

    return-object v0
.end method
