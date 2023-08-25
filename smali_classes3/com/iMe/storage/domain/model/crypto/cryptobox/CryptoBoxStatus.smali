.class public final enum Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;
.super Ljava/lang/Enum;
.source "CryptoBoxStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field public static final enum ACTIVE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field public static final enum CREATED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;

.field public static final enum FAILED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field public static final enum FINISHED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field public static final enum PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field public static final enum STOPPED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;


# instance fields
.field private final colorResId:I

.field private final descriptionResId:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->CREATED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->ACTIVE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->STOPPED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->FAILED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v6, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 13
    sget v3, Lcom/iMe/storage/R$string;->cryptobox_status_pending_title:I

    .line 14
    sget v4, Lcom/iMe/storage/R$string;->cryptobox_status_pending_description:I

    .line 15
    sget v5, Lcom/iMe/storage/R$color;->cryptobox_status_pending:I

    const-string v1, "PENDING"

    const/4 v2, 0x0

    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 18
    sget v10, Lcom/iMe/storage/R$string;->cryptobox_status_created_title:I

    .line 19
    sget v11, Lcom/iMe/storage/R$string;->cryptobox_status_created_description:I

    .line 20
    sget v12, Lcom/iMe/storage/R$color;->cryptobox_status_created:I

    const-string v8, "CREATED"

    const/4 v9, 0x1

    move-object v7, v0

    .line 17
    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->CREATED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 23
    sget v4, Lcom/iMe/storage/R$string;->cryptobox_status_active_title:I

    .line 24
    sget v5, Lcom/iMe/storage/R$string;->cryptobox_status_active_description:I

    .line 25
    sget v6, Lcom/iMe/storage/R$color;->cryptobox_status_active:I

    const-string v2, "ACTIVE"

    const/4 v3, 0x2

    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->ACTIVE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 27
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 28
    sget v10, Lcom/iMe/storage/R$string;->cryptobox_status_finished_title:I

    .line 29
    sget v11, Lcom/iMe/storage/R$string;->cryptobox_status_finished_description:I

    .line 30
    sget v12, Lcom/iMe/storage/R$color;->cryptobox_status_finished:I

    const-string v8, "FINISHED"

    const/4 v9, 0x3

    move-object v7, v0

    .line 27
    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 32
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 33
    sget v4, Lcom/iMe/storage/R$string;->cryptobox_status_stopped_title:I

    .line 34
    sget v5, Lcom/iMe/storage/R$string;->cryptobox_status_stopped_description:I

    .line 35
    sget v6, Lcom/iMe/storage/R$color;->cryptobox_status_stopped:I

    const-string v2, "STOPPED"

    const/4 v3, 0x4

    move-object v1, v0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->STOPPED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 37
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 38
    sget v10, Lcom/iMe/storage/R$string;->cryptobox_status_failed_title:I

    .line 39
    sget v11, Lcom/iMe/storage/R$string;->cryptobox_status_failed_description:I

    .line 40
    sget v12, Lcom/iMe/storage/R$color;->cryptobox_status_failed:I

    const-string v8, "FAILED"

    const/4 v9, 0x5

    move-object v7, v0

    .line 37
    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->FAILED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->$values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->titleResId:I

    .line 9
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->descriptionResId:I

    .line 10
    iput p5, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->colorResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    return-object v0
.end method


# virtual methods
.method public final getColorResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->colorResId:I

    return v0
.end method

.method public final getDescriptionResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->descriptionResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->titleResId:I

    return v0
.end method
