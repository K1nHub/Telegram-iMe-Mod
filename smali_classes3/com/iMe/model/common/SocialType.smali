.class public final enum Lcom/iMe/model/common/SocialType;
.super Ljava/lang/Enum;
.source "SocialType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/common/SocialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/common/SocialType;

.field public static final enum TWITTER:Lcom/iMe/model/common/SocialType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/common/SocialType;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iMe/model/common/SocialType;

    sget-object v1, Lcom/iMe/model/common/SocialType;->TWITTER:Lcom/iMe/model/common/SocialType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/common/SocialType;

    const-string v1, "TWITTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/common/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/common/SocialType;->TWITTER:Lcom/iMe/model/common/SocialType;

    invoke-static {}, Lcom/iMe/model/common/SocialType;->$values()[Lcom/iMe/model/common/SocialType;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/common/SocialType;->$VALUES:[Lcom/iMe/model/common/SocialType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/common/SocialType;
    .locals 1

    const-class v0, Lcom/iMe/model/common/SocialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/common/SocialType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/common/SocialType;
    .locals 1

    sget-object v0, Lcom/iMe/model/common/SocialType;->$VALUES:[Lcom/iMe/model/common/SocialType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/common/SocialType;

    return-object v0
.end method
