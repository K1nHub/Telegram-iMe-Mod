.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field public static final enum zzalp:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzals:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzaly:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzalz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field public static final enum zzama:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field private static final synthetic zzamb:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalp:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v3, "EXPLICITLY_REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v5, "IMPLICITLY_REQUESTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 24
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v7, "MODEL_INFO_RETRIEVAL_SUCCEEDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzals:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 25
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v9, "MODEL_INFO_RETRIEVAL_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 26
    new-instance v9, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v11, "SCHEDULED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 27
    new-instance v11, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v13, "DOWNLOADING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 28
    new-instance v13, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v15, "SUCCEEDED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 29
    new-instance v15, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v14, "FAILED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 30
    new-instance v14, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v12, "LIVE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzaly:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 31
    new-instance v12, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v10, "UPDATE_AVAILABLE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 32
    new-instance v10, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v8, "DOWNLOADED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzama:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 33
    sput-object v8, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzamb:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzamb:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object v0
.end method

.method public static zzau(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzama:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 14
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 13
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzaly:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 12
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 11
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 10
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 7
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzals:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 6
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 5
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    .line 4
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalp:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmr;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->value:I

    return v0
.end method
