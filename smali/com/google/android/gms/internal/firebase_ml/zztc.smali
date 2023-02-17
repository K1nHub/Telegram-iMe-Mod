.class public final enum Lcom/google/android/gms/internal/firebase_ml/zztc;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zztc;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field public static final enum zzbns:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbnt:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbnu:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbnv:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbnw:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbnx:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbny:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbnz:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzboa:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbob:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzboc:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzbod:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field public static final enum zzboe:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field private static final enum zzbof:Lcom/google/android/gms/internal/firebase_ml/zztc;

.field private static final synthetic zzbog:[Lcom/google/android/gms/internal/firebase_ml/zztc;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zztc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v1, "CODE_128"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbns:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v4, "CODE_39"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnt:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 25
    new-instance v4, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v6, "CODE_93"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnu:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 26
    new-instance v6, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v8, "CODABAR"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnv:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 27
    new-instance v8, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v10, "DATA_MATRIX"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnw:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 28
    new-instance v10, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v12, "EAN_13"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnx:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 29
    new-instance v12, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v14, "EAN_8"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbny:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 30
    new-instance v14, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v13, "ITF"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnz:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 31
    new-instance v13, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v15, "QR_CODE"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzboa:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 32
    new-instance v15, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v11, "UPC_A"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbob:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 33
    new-instance v11, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v9, "UPC_E"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzboc:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 34
    new-instance v9, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v7, "PDF417"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbod:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 35
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v5, "AZTEC"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzboe:Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 36
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zztc;

    const-string v3, "DATABAR"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lcom/google/android/gms/internal/firebase_ml/zztc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbof:Lcom/google/android/gms/internal/firebase_ml/zztc;

    new-array v3, v7, [Lcom/google/android/gms/internal/firebase_ml/zztc;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v5, v3, v2

    .line 37
    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbog:[Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzte;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zztc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbog:[Lcom/google/android/gms/internal/firebase_ml/zztc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zztc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zztd;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method

.method public static zzch(I)Lcom/google/android/gms/internal/firebase_ml/zztc;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbof:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzboe:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbod:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzboc:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 13
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbob:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzboa:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnz:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbny:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnx:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 8
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnw:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 7
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnv:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 6
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnu:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 5
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbnt:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    .line 4
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzbns:Lcom/google/android/gms/internal/firebase_ml/zztc;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
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


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zztc;->value:I

    return v0
.end method
