.class public final enum Lcom/iMe/feature/socialMedias/SocialType;
.super Ljava/lang/Enum;
.source "SocialType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/socialMedias/SocialType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/feature/socialMedias/SocialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/feature/socialMedias/SocialType;

.field public static final Companion:Lcom/iMe/feature/socialMedias/SocialType$Companion;

.field public static final enum DISCORD:Lcom/iMe/feature/socialMedias/SocialType;

.field public static final enum EMPTY:Lcom/iMe/feature/socialMedias/SocialType;

.field public static final enum FACEBOOK:Lcom/iMe/feature/socialMedias/SocialType;

.field public static final enum INSTAGRAM:Lcom/iMe/feature/socialMedias/SocialType;

.field public static final enum LINKEDIN:Lcom/iMe/feature/socialMedias/SocialType;

.field public static final enum TWITTER:Lcom/iMe/feature/socialMedias/SocialType;

.field public static final enum YOUTUBE:Lcom/iMe/feature/socialMedias/SocialType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/feature/socialMedias/SocialType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iMe/feature/socialMedias/SocialType;

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->TWITTER:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->INSTAGRAM:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->LINKEDIN:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->YOUTUBE:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->FACEBOOK:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->DISCORD:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->EMPTY:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "TWITTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->TWITTER:Lcom/iMe/feature/socialMedias/SocialType;

    .line 5
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "INSTAGRAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->INSTAGRAM:Lcom/iMe/feature/socialMedias/SocialType;

    .line 6
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "LINKEDIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->LINKEDIN:Lcom/iMe/feature/socialMedias/SocialType;

    .line 7
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "YOUTUBE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->YOUTUBE:Lcom/iMe/feature/socialMedias/SocialType;

    .line 8
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->FACEBOOK:Lcom/iMe/feature/socialMedias/SocialType;

    .line 9
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "DISCORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->DISCORD:Lcom/iMe/feature/socialMedias/SocialType;

    .line 10
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType;

    const-string v1, "EMPTY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->EMPTY:Lcom/iMe/feature/socialMedias/SocialType;

    invoke-static {}, Lcom/iMe/feature/socialMedias/SocialType;->$values()[Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v0

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->$VALUES:[Lcom/iMe/feature/socialMedias/SocialType;

    new-instance v0, Lcom/iMe/feature/socialMedias/SocialType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/SocialType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialType;->Companion:Lcom/iMe/feature/socialMedias/SocialType$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/SocialType;
    .locals 1

    const-class v0, Lcom/iMe/feature/socialMedias/SocialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/feature/socialMedias/SocialType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/feature/socialMedias/SocialType;
    .locals 1

    sget-object v0, Lcom/iMe/feature/socialMedias/SocialType;->$VALUES:[Lcom/iMe/feature/socialMedias/SocialType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/feature/socialMedias/SocialType;

    return-object v0
.end method
