.class final enum Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;
.super Ljava/lang/Enum;
.source "SocialAuthResultMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

.field public static final enum ACTIVE:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

.field public static final enum FAIL:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

.field public static final enum SUCCESS:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

.field public static final enum VALIDATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

.field public static final enum VERIFICATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;


# instance fields
.field private final status:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->FAIL:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->SUCCESS:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->ACTIVE:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->VERIFICATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->VALIDATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    const-string v3, "fail"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->FAIL:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    .line 37
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->SUCCESS:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    .line 38
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->ACTIVE:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    .line 39
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const-string v1, "VERIFICATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->VERIFICATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    .line 40
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    const-string v1, "VALIDATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->VALIDATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-static {}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->$values()[Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->$VALUES:[Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->status:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;
    .locals 1

    const-class v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;
    .locals 1

    sget-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->$VALUES:[Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->status:Ljava/lang/String;

    return-object v0
.end method
