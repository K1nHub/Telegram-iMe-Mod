.class public final enum Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;
.super Ljava/lang/Enum;
.source "ReactionMessageTypes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

.field public static final enum FILE:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

.field public static final enum TEXT:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    sget-object v1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->TEXT:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->FILE:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3
    new-instance v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->TEXT:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    new-instance v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const-string v1, "FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->FILE:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    invoke-static {}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->$values()[Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->$VALUES:[Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;
    .locals 1

    const-class v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->$VALUES:[Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    return-object v0
.end method
