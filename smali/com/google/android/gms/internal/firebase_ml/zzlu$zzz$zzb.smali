.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field public static final enum zzanh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field public static final enum zzani:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field public static final enum zzanj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field private static final enum zzank:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field public static final enum zzanl:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field public static final enum zzanm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field public static final enum zzann:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field private static final synthetic zzano:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v1, "CATEGORY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v3, "CATEGORY_HOME_GOOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzani:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 18
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v5, "CATEGORY_FASHION_GOOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 19
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v7, "CATEGORY_ANIMAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzank:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 20
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v9, "CATEGORY_FOOD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanl:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 21
    new-instance v9, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v11, "CATEGORY_PLACE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 22
    new-instance v11, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const-string v13, "CATEGORY_PLANT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzann:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 23
    sput-object v13, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzano:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzano:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object v0
.end method

.method public static zzba(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzann:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    .line 8
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanl:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    .line 7
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzank:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    .line 5
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzani:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    .line 4
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->zzanh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmy;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz$zzb;->value:I

    return v0
.end method
