.class final Lcom/google/android/gms/internal/firebase_ml/zzwi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwu<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzbvd:[I

.field private static final zzbve:Lsun/misc/Unsafe;


# instance fields
.field private final zzbvf:[I

.field private final zzbvg:[Ljava/lang/Object;

.field private final zzbvh:I

.field private final zzbvi:I

.field private final zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

.field private final zzbvk:Z

.field private final zzbvl:Z

.field private final zzbvm:Z

.field private final zzbvn:Z

.field private final zzbvo:[I

.field private final zzbvp:I

.field private final zzbvq:I

.field private final zzbvr:Lcom/google/android/gms/internal/firebase_ml/zzwm;

.field private final zzbvs:Lcom/google/android/gms/internal/firebase_ml/zzvo;

.field private final zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzul<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 3555
    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvd:[I

    .line 3556
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzts()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase_ml/zzwe;ZZ[IIILcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/firebase_ml/zzwe;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/firebase_ml/zzwm;",
            "Lcom/google/android/gms/internal/firebase_ml/zzvo;",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzul<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzwb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvg:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvh:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvi:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvl:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zze(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvo:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvp:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvq:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvr:Lcom/google/android/gms/internal/firebase_ml/zzwm;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvs:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1218
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1219
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzaa(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/firebase_ml/zztm;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 2921
    sget-object v12, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    .line 2922
    iget-object v7, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3003
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 3004
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 3005
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 3006
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 3009
    iget-object v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 3010
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    .line 3011
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3012
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    .line 2997
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2998
    iget-wide v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    .line 2993
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2994
    iget v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    .line 2984
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v3

    .line 2985
    iget v4, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    .line 2986
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdl(I)Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2987
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/firebase_ml/zzvb;->zzb(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2990
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzb(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    .line 2988
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 2980
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zze([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2981
    iget-object v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 2967
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v2

    move/from16 v5, p4

    .line 2968
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2969
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 2970
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 2973
    iget-object v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 2974
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    .line 2975
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2976
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2977
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 2953
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2954
    iget v4, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 2956
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 2958
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxv;->zzf([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 2959
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzry()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2960
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/firebase_ml/zzuw;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2961
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 2963
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    .line 2949
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2950
    iget-wide v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 2945
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 2941
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    .line 2937
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2938
    iget v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    .line 2933
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2934
    iget-wide v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 2929
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v4, 0x4

    goto :goto_9

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 2925
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    .line 3013
    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v4

    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/firebase_ml/zztm;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 2544
    sget-object v11, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 2545
    invoke-interface {v12}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    .line 2546
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v13, v14

    .line 2549
    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzcl(I)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v12

    .line 2550
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_32

    .line 2861
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 2865
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2866
    iget-object v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_32

    .line 2868
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v8

    .line 2869
    iget v9, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v9, :cond_32

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 2870
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2871
    iget-object v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v13, :cond_4

    .line 2836
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvs;

    .line 2837
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2838
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 2840
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2841
    iget-wide v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_1e

    .line 2843
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_32

    .line 2848
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvs;

    .line 2849
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2850
    iget-wide v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    :goto_3
    if-ge v1, v5, :cond_33

    .line 2852
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2853
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2854
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2855
    iget-wide v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v13, :cond_7

    .line 2811
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzux;

    .line 2812
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2813
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    .line 2815
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2816
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzdi(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_1e

    .line 2818
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_32

    .line 2823
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzux;

    .line 2824
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2825
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzdi(I)V

    :goto_5
    if-ge v1, v5, :cond_33

    .line 2827
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2828
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2829
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2830
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzdi(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v13, :cond_8

    .line 2798
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_32

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 2800
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2801
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 2802
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zztn()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    .line 2805
    :cond_9
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdl(I)Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move/from16 v6, p6

    .line 2806
    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzvb;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzxm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    if-eqz v3, :cond_a

    .line 2808
    iput-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_1e

    :pswitch_4
    if-ne v6, v13, :cond_32

    .line 2771
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2772
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz v4, :cond_10

    .line 2775
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_b

    .line 2778
    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzbos:Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2779
    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzb([BII)Lcom/google/android/gms/internal/firebase_ml/zztn;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_33

    .line 2782
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2783
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2784
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2785
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz v4, :cond_e

    .line 2788
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_d

    if-nez v4, :cond_c

    .line 2791
    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzbos:Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2792
    :cond_c
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzb([BII)Lcom/google/android/gms/internal/firebase_ml/zztn;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2789
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2787
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2776
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2774
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v13, :cond_32

    .line 2766
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 2767
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;I[BIILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_6
    if-ne v6, v13, :cond_32

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v10

    const-string v6, ""

    if-nez v1, :cond_15

    .line 2710
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2711
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz v4, :cond_14

    if-nez v4, :cond_11

    .line 2715
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2716
    :cond_11
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/firebase_ml/zzuw;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2717
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr v1, v4

    :goto_b
    if-ge v1, v5, :cond_33

    .line 2720
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2721
    iget v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v8, :cond_33

    .line 2722
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2723
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz v4, :cond_13

    if-nez v4, :cond_12

    .line 2727
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2728
    :cond_12
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/firebase_ml/zzuw;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2729
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2725
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2713
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2736
    :cond_15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2737
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz v4, :cond_1b

    if-nez v4, :cond_16

    .line 2741
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    add-int v8, v1, v4

    .line 2742
    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzxv;->zzf([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2744
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/firebase_ml/zzuw;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2745
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    move v1, v8

    :goto_d
    if-ge v1, v5, :cond_33

    .line 2748
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2749
    iget v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v8, :cond_33

    .line 2750
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2751
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz v4, :cond_19

    if-nez v4, :cond_17

    .line 2755
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    add-int v8, v1, v4

    .line 2756
    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzxv;->zzf([BII)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2758
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/firebase_ml/zzuw;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2759
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2757
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzry()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2753
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2743
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzry()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    .line 2739
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v13, :cond_1f

    .line 2683
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zztl;

    .line 2684
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2685
    iget v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v4, v2

    :goto_e
    if-ge v2, v4, :cond_1d

    .line 2687
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v2

    .line 2688
    iget-wide v5, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_1c

    move v5, v14

    goto :goto_f

    :cond_1c
    move v5, v1

    :goto_f
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/firebase_ml/zztl;->addBoolean(Z)V

    goto :goto_e

    :cond_1d
    if-ne v2, v4, :cond_1e

    goto/16 :goto_7

    .line 2690
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_1f
    if-nez v6, :cond_32

    .line 2695
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zztl;

    .line 2696
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2697
    iget-wide v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_20

    move v6, v14

    goto :goto_10

    :cond_20
    move v6, v1

    :goto_10
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/firebase_ml/zztl;->addBoolean(Z)V

    :goto_11
    if-ge v4, v5, :cond_32

    .line 2699
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v6

    .line 2700
    iget v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v8, :cond_32

    .line 2701
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2702
    iget-wide v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_21

    move v6, v14

    goto :goto_12

    :cond_21
    move v6, v1

    :goto_12
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/firebase_ml/zztl;->addBoolean(Z)V

    goto :goto_11

    :pswitch_8
    if-ne v6, v13, :cond_24

    .line 2658
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzux;

    .line 2659
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2660
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_22

    .line 2662
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzdi(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_1e

    .line 2665
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_32

    .line 2670
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzux;

    .line 2671
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzdi(I)V

    :goto_14
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 2674
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2675
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2676
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzdi(I)V

    goto :goto_14

    :pswitch_9
    if-ne v6, v13, :cond_27

    .line 2633
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvs;

    .line 2634
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2635
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_25

    .line 2637
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_15

    :cond_25
    if-ne v1, v2, :cond_26

    goto/16 :goto_1e

    .line 2640
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v14, :cond_32

    .line 2645
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvs;

    .line 2646
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    :goto_16
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 2649
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2650
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2651
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    goto :goto_16

    :pswitch_a
    if-ne v6, v13, :cond_28

    .line 2628
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    goto/16 :goto_1e

    :cond_28
    if-nez v6, :cond_32

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 2630
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_b
    if-ne v6, v13, :cond_2b

    .line 2604
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvs;

    .line 2605
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2606
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_29

    .line 2608
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2609
    iget-wide v4, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    goto :goto_17

    :cond_29
    if-ne v1, v2, :cond_2a

    goto/16 :goto_1e

    .line 2611
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_32

    .line 2616
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzvs;

    .line 2617
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2618
    iget-wide v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    :goto_18
    if-ge v1, v5, :cond_33

    .line 2620
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2621
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2622
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2623
    iget-wide v8, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzvs;->zzac(J)V

    goto :goto_18

    :pswitch_c
    if-ne v6, v13, :cond_2e

    .line 2579
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzus;

    .line 2580
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2581
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_2c

    .line 2583
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzu(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_19

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto :goto_1e

    .line 2586
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_2e
    if-ne v6, v9, :cond_32

    .line 2591
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzus;

    .line 2592
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzu(F)V

    :goto_1a
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 2595
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2596
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2597
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzu(F)V

    goto :goto_1a

    :pswitch_d
    if-ne v6, v13, :cond_31

    .line 2554
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzuf;

    .line 2555
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2556
    iget v2, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_2f

    .line 2558
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzuf;->zze(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1b

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_1e

    .line 2561
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v14, :cond_32

    .line 2566
    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzuf;

    .line 2567
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzuf;->zze(D)V

    :goto_1c
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 2570
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 2571
    iget v6, v7, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ne v2, v6, :cond_33

    .line 2572
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzuf;->zze(D)V

    goto :goto_1c

    :cond_32
    :goto_1d
    move v1, v4

    :cond_33
    :goto_1e
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/firebase_ml/zztm;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2876
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    .line 2877
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdk(I)Ljava/lang/Object;

    move-result-object p5

    .line 2878
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2879
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzx(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2881
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2882
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 2884
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 2885
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzvz;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 2886
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzu(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 2888
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p3

    .line 2889
    iget p6, p8, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    if-ltz p6, :cond_7

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_7

    add-int/2addr p6, p3

    .line 2893
    iget-object p7, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbuy:Ljava/lang/Object;

    .line 2894
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbva:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_5

    add-int/lit8 v1, p3, 0x1

    .line 2896
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 2898
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 2899
    iget p3, p8, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    :cond_1
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 2908
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbuz:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzyd;->zztx()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 2909
    iget-object v4, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbuz:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    iget-object p3, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbva:Ljava/lang/Object;

    .line 2910
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 2911
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza([BIILcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p3

    .line 2912
    iget-object v0, p8, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto :goto_0

    .line 2903
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbux:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzyd;->zztx()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 2904
    iget-object v4, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbux:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 2905
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza([BIILcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p3

    .line 2906
    iget-object p7, p8, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto :goto_0

    .line 2914
    :cond_4
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p6, :cond_6

    .line 2918
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 2917
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrx()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p1

    throw p1

    .line 2891
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p1

    throw p1
.end method

.method private static zza([BIILcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zztm;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/firebase_ml/zzyd;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2507
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwl;->zzbpx:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 2542
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2540
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    goto/16 :goto_3

    .line 2537
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    .line 2538
    iget-wide p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto/16 :goto_3

    .line 2534
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    .line 2535
    iget p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto/16 :goto_3

    .line 2531
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object p3

    .line 2532
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    goto :goto_3

    .line 2528
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    .line 2529
    iget-wide p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto :goto_3

    .line 2525
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    .line 2526
    iget p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto :goto_3

    .line 2522
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto :goto_0

    .line 2519
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    goto :goto_1

    .line 2516
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    .line 2513
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    .line 2511
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zze([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    goto :goto_3

    .line 2508
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p0

    .line 2509
    iget-wide p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzwc;Lcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)Lcom/google/android/gms/internal/firebase_ml/zzwi;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzwc;",
            "Lcom/google/android/gms/internal/firebase_ml/zzwm;",
            "Lcom/google/android/gms/internal/firebase_ml/zzvo;",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzul<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzwb;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzwi<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/firebase_ml/zzwv;

    if-eqz v1, :cond_35

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzwv;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwv;->zzsl()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbtf:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v3

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwv;->zzsx()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    const/4 v8, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 35
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 39
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    move v8, v12

    :cond_4
    if-nez v9, :cond_5

    .line 51
    sget-object v9, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvd:[I

    move v6, v3

    move v10, v6

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v9

    move v9, v15

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 53
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 57
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_6
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v12

    :cond_7
    add-int/lit8 v10, v9, 0x1

    .line 62
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 66
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_9
    add-int/lit8 v12, v10, 0x1

    .line 71
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 75
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_b
    add-int/lit8 v13, v12, 0x1

    .line 80
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 84
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_c
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_d
    add-int/lit8 v14, v13, 0x1

    .line 89
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 93
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_f
    add-int/lit8 v15, v14, 0x1

    .line 98
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 102
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 107
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_12

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_12
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v3, v17

    goto :goto_b

    :cond_13
    move/from16 v3, v16

    :goto_b
    add-int/lit8 v16, v3, 0x1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v17, v6, 0x1

    .line 120
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v3, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v17

    goto :goto_c

    :cond_14
    shl-int v6, v6, v16

    or-int/2addr v3, v6

    move/from16 v16, v17

    :cond_15
    add-int v6, v3, v14

    add-int/2addr v6, v15

    .line 125
    new-array v6, v6, [I

    shl-int/lit8 v15, v8, 0x1

    add-int/2addr v15, v9

    move v9, v12

    move v12, v15

    move v15, v3

    move v3, v8

    move/from16 v8, v16

    move/from16 v35, v14

    move-object v14, v6

    move/from16 v6, v35

    .line 127
    :goto_d
    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwv;->zzsy()[Ljava/lang/Object;

    move-result-object v17

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwv;->zzsn()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move/from16 v18, v8

    mul-int/lit8 v8, v13, 0x3

    .line 131
    new-array v8, v8, [I

    const/16 v19, 0x1

    shl-int/lit8 v13, v13, 0x1

    .line 132
    new-array v13, v13, [Ljava/lang/Object;

    add-int v20, v15, v6

    move/from16 v22, v15

    move/from16 v6, v18

    move/from16 v23, v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    :goto_e
    if-ge v6, v2, :cond_34

    add-int/lit8 v24, v6, 0x1

    .line 137
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v2, 0x1

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v6, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    move/from16 v15, v27

    goto :goto_f

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v6, v2

    move/from16 v2, v26

    goto :goto_10

    :cond_17
    move/from16 v27, v15

    move/from16 v2, v24

    :goto_10
    add-int/lit8 v15, v2, 0x1

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_11
    add-int/lit8 v26, v15, 0x1

    .line 150
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v11

    const v11, 0xd800

    if-lt v15, v11, :cond_18

    and-int/lit16 v11, v15, 0x1fff

    shl-int v11, v11, v24

    or-int/2addr v2, v11

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v11, v28

    goto :goto_11

    :cond_18
    shl-int v11, v15, v24

    or-int/2addr v2, v11

    move/from16 v15, v26

    goto :goto_12

    :cond_19
    move/from16 v28, v11

    move/from16 v15, v24

    :goto_12
    and-int/lit16 v11, v2, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v18, 0x1

    .line 157
    aput v21, v14, v18

    move/from16 v18, v9

    :cond_1a
    const/16 v9, 0x33

    move/from16 v30, v10

    if-lt v11, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 159
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_13
    add-int/lit8 v33, v9, 0x1

    .line 163
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_1b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v15, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v9, v33

    const v10, 0xd800

    goto :goto_13

    :cond_1b
    shl-int v9, v9, v32

    or-int/2addr v15, v9

    move/from16 v9, v33

    :cond_1c
    add-int/lit8 v10, v11, -0x33

    move/from16 v32, v9

    const/16 v9, 0x9

    if-eq v10, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v10, v9, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v9, 0xc

    if-ne v10, v9, :cond_1e

    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 173
    div-int/lit8 v9, v21, 0x3

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move v12, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_15

    .line 170
    :cond_1f
    :goto_14
    div-int/lit8 v9, v21, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v19, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move/from16 v12, v19

    :goto_15
    shl-int/lit8 v9, v15, 0x1

    .line 175
    aget-object v10, v17, v9

    .line 176
    instance-of v15, v10, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    .line 177
    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 178
    :cond_20
    check-cast v10, Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 179
    aput-object v10, v17, v9

    :goto_16
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    .line 180
    invoke-virtual {v7, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v9, v9, 0x1

    .line 182
    aget-object v1, v17, v9

    .line 183
    instance-of v10, v1, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 184
    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 185
    :cond_21
    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 186
    aput-object v1, v17, v9

    .line 187
    :goto_17
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    move-object/from16 v19, v4

    move/from16 v31, v12

    move/from16 v15, v32

    move-object/from16 v10, v34

    const/4 v12, 0x0

    const/16 v16, 0x1

    move v4, v1

    move v1, v0

    move v0, v3

    const v3, 0xd800

    goto/16 :goto_21

    :cond_22
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    add-int/lit8 v0, v12, 0x1

    .line 190
    aget-object v1, v17, v12

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v9, 0x31

    const/16 v10, 0x9

    if-eq v11, v10, :cond_2a

    const/16 v10, 0x11

    if-ne v11, v10, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v10, 0x1b

    if-eq v11, v10, :cond_29

    if-ne v11, v9, :cond_24

    goto :goto_19

    :cond_24
    const/16 v10, 0xc

    if-eq v11, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v11, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_25

    goto :goto_18

    :cond_25
    const/16 v10, 0x32

    if-ne v11, v10, :cond_26

    add-int/lit8 v10, v22, 0x1

    .line 199
    aput v21, v14, v22

    .line 200
    div-int/lit8 v12, v21, 0x3

    const/16 v19, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v22, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v12

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v0, v22, 0x1

    .line 202
    aget-object v22, v17, v22

    aput-object v22, v13, v12

    move/from16 v22, v10

    :cond_26
    const/4 v12, 0x1

    goto :goto_1c

    :cond_27
    move/from16 v0, v22

    const/4 v12, 0x1

    move/from16 v22, v10

    goto :goto_1c

    :cond_28
    :goto_18
    and-int/lit8 v10, v5, 0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2b

    .line 197
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v12, 0x1

    .line 194
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    :goto_1a
    move/from16 v0, v19

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/4 v12, 0x1

    .line 192
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v13, v10

    .line 203
    :cond_2b
    :goto_1c
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    and-int/lit8 v9, v5, 0x1

    if-ne v9, v12, :cond_30

    const/16 v9, 0x11

    if-gt v11, v9, :cond_2f

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v10, v34

    .line 205
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_2d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v16, 0xd

    :goto_1d
    add-int/lit8 v29, v9, 0x1

    .line 209
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v15, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v16

    or-int/2addr v12, v9

    add-int/lit8 v16, v16, 0xd

    move/from16 v9, v29

    goto :goto_1d

    :cond_2c
    shl-int v9, v9, v16

    or-int/2addr v12, v9

    move/from16 v9, v29

    :cond_2d
    const/16 v16, 0x1

    shl-int/lit8 v19, v3, 0x1

    .line 214
    div-int/lit8 v29, v12, 0x20

    add-int v19, v19, v29

    .line 215
    aget-object v15, v17, v19

    move/from16 v31, v0

    .line 216
    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 217
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 218
    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 219
    aput-object v15, v17, v19

    :goto_1e
    move v0, v3

    move-object/from16 v19, v4

    .line 220
    invoke-virtual {v7, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 221
    rem-int/lit8 v12, v12, 0x20

    move v4, v3

    move v15, v9

    const v3, 0xd800

    goto :goto_20

    :cond_2f
    move/from16 v31, v0

    move v0, v3

    move-object/from16 v19, v4

    move-object/from16 v10, v34

    const v3, 0xd800

    const/16 v16, 0x1

    goto :goto_1f

    :cond_30
    move/from16 v31, v0

    move v0, v3

    move-object/from16 v19, v4

    move/from16 v16, v12

    move-object/from16 v10, v34

    const v3, 0xd800

    :goto_1f
    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_20
    const/16 v9, 0x12

    if-lt v11, v9, :cond_31

    const/16 v9, 0x31

    if-gt v11, v9, :cond_31

    add-int/lit8 v9, v23, 0x1

    .line 226
    aput v1, v14, v23

    move/from16 v23, v9

    :cond_31
    :goto_21
    add-int/lit8 v9, v21, 0x1

    .line 227
    aput v6, v8, v21

    add-int/lit8 v6, v9, 0x1

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_32

    const/high16 v3, 0x20000000

    goto :goto_22

    :cond_32
    const/4 v3, 0x0

    :goto_22
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_33

    const/high16 v2, 0x10000000

    goto :goto_23

    :cond_33
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x14

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 230
    aput v1, v8, v9

    add-int/lit8 v21, v6, 0x1

    shl-int/lit8 v1, v12, 0x14

    or-int/2addr v1, v4

    .line 231
    aput v1, v8, v6

    move v3, v0

    move-object v1, v10

    move v6, v15

    move-object/from16 v4, v19

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v15, v27

    move/from16 v11, v28

    move/from16 v10, v30

    move/from16 v12, v31

    move-object/from16 v0, v33

    goto/16 :goto_e

    :cond_34
    move-object/from16 v33, v0

    move/from16 v24, v9

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v27, v15

    .line 233
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;

    .line 234
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/internal/firebase_ml/zzwv;->zzsn()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v10

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v8

    move-object v7, v13

    move/from16 v8, v30

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/firebase_ml/zzwi;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase_ml/zzwe;ZZ[IIILcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)V

    return-object v0

    .line 236
    :cond_35
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzxj;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzxj;->zzsl()I

    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbtf:I

    .line 238
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/firebase_ml/zzvb;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzxm;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzvb;",
            "TUB;",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3381
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 3382
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdk(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzvz;

    move-result-object p1

    .line 3383
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3384
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvb;->zzb(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 3387
    invoke-virtual {p6}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zztm()Ljava/lang/Object;

    move-result-object p5

    .line 3389
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvz;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3390
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzco(I)Lcom/google/android/gms/internal/firebase_ml/zztv;

    move-result-object v1

    .line 3391
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zztv;->zzqj()Lcom/google/android/gms/internal/firebase_ml/zzue;

    move-result-object v2

    .line 3392
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzue;Lcom/google/android/gms/internal/firebase_ml/zzvz;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3396
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zztv;->zzqi()Lcom/google/android/gms/internal/firebase_ml/zztn;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    .line 3397
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3395
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 241
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 242
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3471
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3472
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/String;)V

    return-void

    .line 3473
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/firebase_ml/zzyj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2500
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzyj;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2495
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 2496
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdk(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzvz;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 2497
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzw(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2498
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zzvz;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 544
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 547
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 549
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 550
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 553
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3486
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 3487
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3517
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3516
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 3515
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v2

    .line 3514
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 3513
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2

    .line 3512
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 3511
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 3510
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 3509
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzbos:Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zztn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 3508
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 3502
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3503
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 3504
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 3505
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase_ml/zztn;

    if-eqz p2, :cond_c

    .line 3506
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zztn;->zzbos:Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zztn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 3507
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3501
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3500
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 3499
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_e

    return v3

    :cond_e
    return v2

    .line 3498
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 3497
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_10

    return v3

    :cond_10
    return v2

    .line 3496
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_11

    return v3

    :cond_11
    return v2

    .line 3495
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 3494
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_13

    return v3

    :cond_13
    return v2

    .line 3518
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdn(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 3520
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 3530
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3531
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 3483
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    if-eqz v0, :cond_0

    .line 3484
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_ml/zzwu;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3469
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3470
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zzac(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzxp;
    .locals 2

    .line 2502
    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 2503
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zztn()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2504
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzto()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v0

    .line 2505
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    :cond_0
    return-object v0
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3521
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    if-eqz v0, :cond_0

    return-void

    .line 3523
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdn(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 3527
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 3528
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 3532
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3533
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_ml/zzyj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2170
    iget-boolean v3, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v3, :cond_0

    .line 2171
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object v3

    .line 2173
    iget-object v5, v3, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzbpq:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_ml/zzum;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 2179
    iget-object v7, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v7, v7

    .line 2180
    sget-object v8, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    .line 2182
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v12

    .line 2184
    iget-object v13, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 2190
    iget-boolean v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    .line 2191
    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    .line 2195
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 2197
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 2198
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V

    .line 2199
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2484
    :pswitch_0
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2486
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v9

    .line 2487
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto :goto_3

    .line 2482
    :pswitch_1
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2483
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IJ)V

    goto :goto_3

    .line 2480
    :pswitch_2
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2481
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzk(II)V

    goto :goto_3

    .line 2478
    :pswitch_3
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2479
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(IJ)V

    goto :goto_3

    .line 2476
    :pswitch_4
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2477
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzs(II)V

    goto :goto_3

    .line 2474
    :pswitch_5
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2475
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzt(II)V

    goto :goto_3

    .line 2472
    :pswitch_6
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2473
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(II)V

    goto :goto_3

    .line 2470
    :pswitch_7
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2471
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    goto :goto_3

    .line 2466
    :pswitch_8
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2467
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2468
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 2464
    :pswitch_9
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2465
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 2462
    :pswitch_a
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2463
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzj(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IZ)V

    goto/16 :goto_3

    .line 2460
    :pswitch_b
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2461
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzl(II)V

    goto/16 :goto_3

    .line 2458
    :pswitch_c
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2459
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzc(IJ)V

    goto/16 :goto_3

    .line 2456
    :pswitch_d
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2457
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(II)V

    goto/16 :goto_3

    .line 2454
    :pswitch_e
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2455
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IJ)V

    goto/16 :goto_3

    .line 2452
    :pswitch_f
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2453
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(IJ)V

    goto/16 :goto_3

    .line 2450
    :pswitch_10
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2451
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzg(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IF)V

    goto/16 :goto_3

    .line 2448
    :pswitch_11
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2449
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzf(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ID)V

    goto/16 :goto_3

    .line 2446
    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 2440
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2442
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2443
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    .line 2444
    invoke-static {v4, v9, v2, v10}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 2434
    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2435
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    .line 2436
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    .line 2428
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2429
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2430
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    .line 2422
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2423
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2424
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    .line 2416
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2417
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2418
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    .line 2410
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2411
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2412
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    .line 2404
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2405
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2406
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    .line 2398
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2399
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2400
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    .line 2392
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2393
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2394
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    .line 2386
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2387
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2388
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    .line 2380
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2381
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2382
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    .line 2374
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2375
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2376
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    .line 2368
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2369
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2370
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    .line 2362
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2363
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2364
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    .line 2356
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2357
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2358
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 2350
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2351
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 2352
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    .line 2344
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2345
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2346
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    .line 2338
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2339
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2340
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    .line 2332
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2333
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2334
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    .line 2326
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2327
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2328
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    .line 2320
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2321
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2322
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    .line 2314
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2315
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2316
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 2306
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2308
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2309
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    .line 2310
    invoke-static {v4, v9, v2, v10}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 2300
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2301
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2302
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 2294
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2295
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 2296
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    .line 2288
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2289
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2290
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    .line 2282
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2283
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2284
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    .line 2276
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2277
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2278
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    .line 2270
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2271
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2272
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    .line 2264
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2265
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2266
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    .line 2258
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2259
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2260
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    .line 2252
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v12

    .line 2253
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2254
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2248
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v9

    .line 2249
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2245
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2243
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzk(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2241
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2239
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzs(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2237
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzt(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2235
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2233
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2229
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2230
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2227
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2224
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    .line 2225
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2221
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzl(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2219
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzc(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2217
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2215
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2213
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2210
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v4

    .line 2211
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2206
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 2207
    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 2490
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V

    .line 2491
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 2492
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 556
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 563
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 568
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 569
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 572
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3482
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;
    .locals 3

    .line 3015
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3016
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvg:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzwu;

    if-eqz v0, :cond_0

    return-object v0

    .line 3019
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvg:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    .line 3020
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvg:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzdk(I)Ljava/lang/Object;
    .locals 1

    .line 3022
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvg:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzdl(I)Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 3023
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvg:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object p1
.end method

.method private final zzdm(I)I
    .locals 1

    .line 3475
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzdn(I)I
    .locals 1

    .line 3476
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzdo(I)I
    .locals 1

    .line 3535
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvh:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvi:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3536
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzw(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1220
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zzf(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 3477
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzg(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3478
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 3479
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzi(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 3480
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzj(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3481
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzv(II)I
    .locals 1

    .line 3538
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvh:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvi:I

    if-gt p1, v0, :cond_0

    .line 3539
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzw(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzw(II)I
    .locals 4

    .line 3541
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 3546
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 253
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 327
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdn(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 328
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 329
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 331
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 332
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 324
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 321
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 316
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 313
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 310
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 307
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 304
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 301
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 298
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 294
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 296
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 290
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 286
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 288
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 283
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 280
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 277
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 274
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 271
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 268
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 264
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 266
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 260
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 262
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    move v3, v1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 342
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p2

    .line 345
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 350
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v3

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 448
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 446
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 447
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    .line 444
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 445
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 442
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 443
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    .line 440
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 441
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 438
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 436
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 437
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 434
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 435
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 430
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 432
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 427
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 425
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 426
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzj(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzan(Z)I

    move-result v3

    goto/16 :goto_2

    .line 423
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 424
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 421
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 422
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    .line 419
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 420
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 417
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 418
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    .line 415
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 416
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    .line 413
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 414
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzg(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 410
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 412
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzf(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 408
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 406
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 401
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 398
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 396
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 394
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 392
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 390
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 388
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 386
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 381
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 378
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 376
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzan(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 374
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 372
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 370
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 366
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 364
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 361
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 362
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzab(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 453
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public final newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvr:Lcom/google/android/gms/internal/firebase_ml/zzwm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwm;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/firebase_ml/zztm;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 3024
    sget-object v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v6, v3

    const/4 v1, -0x1

    const/4 v7, -0x1

    :goto_0
    const v17, 0xfffff

    if-ge v0, v13, :cond_1f

    add-int/lit8 v3, v0, 0x1

    .line 3031
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3033
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3034
    iget v3, v9, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 3038
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzv(II)I

    move-result v1

    goto :goto_2

    .line 3039
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdo(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 v25, v3

    move v2, v4

    move v9, v5

    move-object/from16 v27, v10

    move v8, v11

    move/from16 v19, v16

    goto/16 :goto_14

    .line 3043
    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v5

    and-int v5, v8, v17

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v20, v8

    if-gt v11, v5, :cond_10

    add-int/lit8 v5, v2, 0x2

    .line 3051
    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v5

    and-int v1, v1, v17

    const/4 v5, -0x1

    if-eq v1, v7, :cond_4

    if-eq v7, v5, :cond_3

    int-to-long v8, v7

    .line 3056
    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v6, v1

    .line 3058
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    :cond_4
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move/from16 v8, v19

    move v7, v4

    move/from16 v19, v5

    goto/16 :goto_f

    :pswitch_0
    const/4 v8, 0x3

    if-ne v0, v8, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    .line 3145
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v8, v19

    move/from16 v19, v5

    move-object/from16 v5, p6

    .line 3146
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_5

    move-object/from16 v5, p6

    .line 3148
    iget-object v1, v5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object/from16 v5, p6

    .line 3150
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    .line 3151
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3152
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    or-int v6, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_0

    :cond_6
    move v9, v2

    move v11, v3

    move/from16 v8, v19

    move/from16 v19, v5

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_a

    :pswitch_1
    move v9, v2

    move v11, v3

    move/from16 v8, v19

    move/from16 v19, v5

    move-object/from16 v5, p6

    if-nez v0, :cond_7

    move-wide v2, v12

    move-object/from16 v12, p2

    .line 3136
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v13

    .line 3137
    iget-wide v0, v5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    .line 3138
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v17

    .line 3139
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto/16 :goto_d

    :cond_7
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_a

    :pswitch_2
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    if-nez v0, :cond_e

    .line 3129
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3130
    iget v1, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    .line 3131
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result v1

    .line 3132
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_3
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    if-nez v0, :cond_e

    .line 3120
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3121
    iget v1, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    .line 3122
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdl(I)Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 3123
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvb;->zzb(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 3126
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzb(ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 3124
    :cond_9
    :goto_4
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_4
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    if-ne v0, v1, :cond_e

    .line 3115
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zze([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3116
    iget-object v1, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int v6, v6, v22

    goto/16 :goto_d

    :pswitch_5
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    if-ne v0, v1, :cond_b

    .line 3104
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    move/from16 v5, p4

    .line 3105
    invoke-static {v0, v12, v4, v5, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_a

    .line 3107
    iget-object v1, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    .line 3109
    :cond_a
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    .line 3110
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3111
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    move/from16 v5, p4

    goto/16 :goto_a

    :pswitch_6
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    move/from16 v5, p4

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_c

    .line 3097
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    goto :goto_6

    .line 3098
    :cond_c
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3099
    :goto_6
    iget-object v1, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_7
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    move/from16 v5, p4

    if-nez v0, :cond_e

    .line 3091
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    move/from16 p3, v0

    .line 3092
    iget-wide v0, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    const-wide/16 v20, 0x0

    cmp-long v0, v0, v20

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v16

    :goto_7
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JZ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto :goto_9

    :pswitch_8
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    move/from16 v5, p4

    if-ne v0, v1, :cond_e

    .line 3086
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_8
    or-int v6, v6, v22

    :goto_9
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_0

    :pswitch_9
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v19, v5

    move/from16 v5, p4

    if-ne v0, v1, :cond_e

    .line 3081
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_b

    :cond_e
    :goto_a
    move/from16 p3, v7

    move v7, v4

    goto/16 :goto_f

    :pswitch_a
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    move/from16 v19, v5

    if-nez v0, :cond_f

    .line 3076
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3077
    iget v1, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_b
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    move/from16 v19, v5

    if-nez v0, :cond_f

    .line 3071
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v7

    .line 3072
    iget-wide v4, v13, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto :goto_e

    :pswitch_c
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    move/from16 v19, v5

    if-ne v0, v1, :cond_f

    .line 3066
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_c

    :pswitch_d
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    move/from16 v19, v5

    if-ne v0, v1, :cond_f

    .line 3061
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JD)V

    :goto_b
    add-int/lit8 v0, v7, 0x8

    :goto_c
    or-int v6, v6, v22

    move/from16 v7, p3

    :goto_d
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    :goto_e
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_f
    :goto_f
    move v2, v7

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v25, v11

    move/from16 v7, p3

    move v9, v8

    move/from16 v8, p5

    goto/16 :goto_14

    :cond_10
    move v5, v3

    move/from16 v18, v7

    move/from16 v8, v19

    const/16 v19, -0x1

    move v7, v4

    move-wide/from16 v28, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v28

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 3157
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 3158
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_10

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 3162
    :goto_10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzcl(I)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    .line 3163
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v11, v0

    .line 3165
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v11

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 3166
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;I[BIILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v7, v18

    move/from16 v6, v22

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    move/from16 v22, v6

    move/from16 v25, v5

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    goto/16 :goto_11

    :cond_14
    move/from16 v22, v6

    move v6, v5

    const/16 v1, 0x31

    if-gt v11, v1, :cond_16

    move/from16 v5, v20

    int-to-long v4, v5

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v7

    move-wide/from16 v20, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v25, v6

    move v15, v7

    move/from16 v7, p3

    move/from16 v26, v8

    move v8, v9

    move/from16 v19, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 3171
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto/16 :goto_13

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v22

    move/from16 v1, v25

    move/from16 v3, v26

    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_16
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v25, v6

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v5, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_18

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 3176
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto :goto_13

    :cond_17
    :goto_11
    move/from16 v8, p5

    move v2, v15

    :goto_12
    move/from16 v7, v18

    move/from16 v6, v22

    move/from16 v9, v26

    goto :goto_14

    :cond_18
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v26

    move/from16 v6, v25

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 3181
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    if-ne v0, v15, :cond_1e

    :goto_13
    move/from16 v8, p5

    move v2, v0

    goto :goto_12

    :goto_14
    if-ne v9, v8, :cond_1a

    if-nez v8, :cond_19

    goto :goto_15

    :cond_19
    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move v0, v7

    const/4 v1, -0x1

    move v7, v2

    goto/16 :goto_18

    :cond_1a
    :goto_15
    move-object/from16 v10, p0

    .line 3184
    iget-boolean v0, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_1d

    move-object/from16 v11, p6

    iget-object v0, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;

    .line 3185
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuj;->zzqs()Lcom/google/android/gms/internal/firebase_ml/zzuj;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 3186
    iget-object v0, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 3188
    iget-object v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;

    move/from16 v12, v25

    .line 3189
    invoke-virtual {v1, v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzuj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;I)Lcom/google/android/gms/internal/firebase_ml/zzuu$zzf;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3192
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3193
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zzxp;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    move-object/from16 v14, p1

    move/from16 v13, p4

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move v1, v12

    move/from16 v2, v19

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    goto :goto_17

    :cond_1b
    move-object/from16 v13, p1

    .line 3194
    move-object v0, v13

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzrr()Lcom/google/android/gms/internal/firebase_ml/zzum;

    .line 3196
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    .line 3197
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v13, p1

    goto :goto_16

    :cond_1d
    move-object/from16 v13, p1

    move-object/from16 v11, p6

    :goto_16
    move/from16 v12, v25

    .line 3200
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3201
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zzxp;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move v1, v12

    move-object v14, v13

    move/from16 v2, v19

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    move/from16 v13, p4

    :goto_17
    move v11, v8

    goto/16 :goto_0

    :cond_1e
    move/from16 v12, v25

    move/from16 v9, v26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p4

    move/from16 v11, p5

    move v3, v9

    move v1, v12

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v22

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_1f
    move/from16 v22, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v8, v11

    move-object v13, v14

    move-object v10, v15

    move v7, v0

    move v9, v3

    move/from16 v0, v18

    const/4 v1, -0x1

    :goto_18
    if-eq v0, v1, :cond_20

    int-to-long v0, v0

    move-object/from16 v2, v27

    .line 3204
    invoke-virtual {v2, v13, v0, v1, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    const/4 v0, 0x0

    .line 3206
    iget v1, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvp:I

    move-object v5, v0

    move v11, v1

    :goto_19
    iget v0, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvq:I

    if-ge v11, v0, :cond_23

    .line 3207
    iget-object v0, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvo:[I

    aget v1, v0, v11

    iget-object v6, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    .line 3210
    iget-object v0, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v2, v0, v1

    .line 3212
    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v0

    and-int v0, v0, v17

    int-to-long v3, v0

    .line 3215
    invoke-static {v13, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_1a

    .line 3218
    :cond_21
    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdl(I)Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_1a

    .line 3221
    :cond_22
    iget-object v3, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzu(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    .line 3223
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/firebase_ml/zzvb;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzxm;)Ljava/lang/Object;

    move-result-object v5

    .line 3224
    :goto_1a
    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    :cond_23
    if-eqz v5, :cond_24

    .line 3227
    iget-object v0, v10, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    .line 3228
    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    if-nez v8, :cond_26

    move/from16 v0, p4

    if-ne v7, v0, :cond_25

    goto :goto_1b

    .line 3231
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrx()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v0

    throw v0

    :cond_26
    move/from16 v0, p4

    if-gt v7, v0, :cond_27

    if-ne v9, v8, :cond_27

    :goto_1b
    return v7

    .line 3233
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrx()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_ml/zzyj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzqo()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbti:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1223
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    .line 1226
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object v0

    .line 1229
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzbpq:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 1233
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1234
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v8

    .line 1236
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 1238
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1239
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V

    .line 1240
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 1682
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1685
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1686
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    .line 1687
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 1678
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1681
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IJ)V

    goto/16 :goto_3

    .line 1674
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1677
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzk(II)V

    goto/16 :goto_3

    .line 1670
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1673
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(IJ)V

    goto/16 :goto_3

    .line 1666
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1669
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzs(II)V

    goto/16 :goto_3

    .line 1662
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1665
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzt(II)V

    goto/16 :goto_3

    .line 1658
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1661
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(II)V

    goto/16 :goto_3

    .line 1653
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1656
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 1657
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    goto/16 :goto_3

    .line 1647
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1650
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1651
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 1643
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1646
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 1639
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1642
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzj(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IZ)V

    goto/16 :goto_3

    .line 1635
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1638
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzl(II)V

    goto/16 :goto_3

    .line 1631
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1634
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzc(IJ)V

    goto/16 :goto_3

    .line 1627
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1630
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(II)V

    goto/16 :goto_3

    .line 1623
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1626
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IJ)V

    goto/16 :goto_3

    .line 1619
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1622
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(IJ)V

    goto/16 :goto_3

    .line 1615
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1618
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzg(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IF)V

    goto/16 :goto_3

    .line 1611
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1614
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzf(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1600
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1603
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1604
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    .line 1605
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 1592
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1595
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1596
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1584
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1587
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1588
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1576
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1579
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1580
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1568
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1571
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1572
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1560
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1563
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1564
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1552
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1555
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1556
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1544
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1547
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1548
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1536
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1539
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1540
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1528
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1531
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1532
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1520
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1523
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1524
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1512
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1515
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1516
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1504
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1507
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1508
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1496
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1499
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1500
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1488
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1491
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1492
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1480
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1483
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1484
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1472
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1475
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1476
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1464
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1467
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1468
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1456
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1459
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1460
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1448
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1451
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1452
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1440
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1443
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1444
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1432
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1435
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1436
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 1423
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1426
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1427
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    .line 1428
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 1415
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1418
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1419
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 1407
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1410
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1411
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1399
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1402
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1403
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1391
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1394
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1395
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1383
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1386
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1387
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1375
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1378
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1379
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1367
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1370
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1371
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1359
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1362
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1363
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1351
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1354
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1355
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_3

    .line 1343
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1346
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1347
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    .line 1348
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 1337
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1341
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1342
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IJ)V

    goto/16 :goto_3

    .line 1331
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1335
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1336
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzk(II)V

    goto/16 :goto_3

    .line 1325
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1329
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1330
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(IJ)V

    goto/16 :goto_3

    .line 1319
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1323
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1324
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzs(II)V

    goto/16 :goto_3

    .line 1313
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1317
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1318
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzt(II)V

    goto/16 :goto_3

    .line 1307
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1311
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1312
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(II)V

    goto/16 :goto_3

    .line 1302
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1305
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 1306
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    goto/16 :goto_3

    .line 1296
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1299
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1300
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_3

    .line 1292
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1295
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_3

    .line 1286
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1290
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v8

    .line 1291
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IZ)V

    goto/16 :goto_3

    .line 1280
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1284
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1285
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzl(II)V

    goto :goto_3

    .line 1274
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1278
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1279
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzc(IJ)V

    goto :goto_3

    .line 1268
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1272
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1273
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(II)V

    goto :goto_3

    .line 1262
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1266
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1267
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IJ)V

    goto :goto_3

    .line 1256
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1260
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1261
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(IJ)V

    goto :goto_3

    .line 1250
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1254
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v8

    .line 1255
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IF)V

    goto :goto_3

    .line 1244
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1248
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1249
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1690
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V

    .line 1691
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 1693
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    if-eqz v0, :cond_f

    .line 1697
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_8

    .line 1698
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object v0

    .line 1700
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzbpq:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1702
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1703
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 1704
    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v7, v7

    move v8, v5

    :goto_6
    if-ge v8, v7, :cond_c

    .line 1706
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v9

    .line 1708
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    .line 1710
    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1711
    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V

    .line 1712
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 2154
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2157
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2158
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v11

    .line 2159
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_8

    .line 2150
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2153
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IJ)V

    goto/16 :goto_8

    .line 2146
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2149
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzk(II)V

    goto/16 :goto_8

    .line 2142
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2145
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(IJ)V

    goto/16 :goto_8

    .line 2138
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2141
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzs(II)V

    goto/16 :goto_8

    .line 2134
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2137
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzt(II)V

    goto/16 :goto_8

    .line 2130
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2133
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(II)V

    goto/16 :goto_8

    .line 2125
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2128
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 2129
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    goto/16 :goto_8

    .line 2119
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2122
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2123
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_8

    .line 2115
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2118
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_8

    .line 2111
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2114
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzj(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IZ)V

    goto/16 :goto_8

    .line 2107
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2110
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzl(II)V

    goto/16 :goto_8

    .line 2103
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2106
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzc(IJ)V

    goto/16 :goto_8

    .line 2099
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2102
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(II)V

    goto/16 :goto_8

    .line 2095
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2098
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IJ)V

    goto/16 :goto_8

    .line 2091
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2094
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(IJ)V

    goto/16 :goto_8

    .line 2087
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2090
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzg(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IF)V

    goto/16 :goto_8

    .line 2083
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2086
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzf(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2081
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2072
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2075
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2076
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v11

    .line 2077
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_8

    .line 2064
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2067
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2068
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2056
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2059
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2060
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2048
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2051
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2052
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2040
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2043
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2044
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2032
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2035
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2036
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2024
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2027
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2028
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2016
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2019
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2020
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2008
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2011
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2012
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 2000
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2003
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2004
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1992
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1995
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1996
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1984
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1987
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1988
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1976
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1979
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1980
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1968
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1971
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1972
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1960
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1963
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1964
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1952
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1955
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1956
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1944
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1947
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1948
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1936
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1939
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1940
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1928
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1931
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1932
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1920
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1923
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1924
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1912
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1915
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1916
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1904
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1907
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1908
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_8

    .line 1895
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1898
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1899
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v11

    .line 1900
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_8

    .line 1887
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1890
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1891
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_8

    .line 1879
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1882
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1883
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1871
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1874
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1875
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1863
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1866
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1867
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1855
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1858
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1859
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1847
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1850
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1851
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1839
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1842
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1843
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1831
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1834
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1835
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1823
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1826
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1827
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzyj;Z)V

    goto/16 :goto_8

    .line 1815
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1818
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1819
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v11

    .line 1820
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_8

    .line 1809
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1813
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1814
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IJ)V

    goto/16 :goto_8

    .line 1803
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1807
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1808
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzk(II)V

    goto/16 :goto_8

    .line 1797
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1801
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1802
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(IJ)V

    goto/16 :goto_8

    .line 1791
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1795
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1796
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzs(II)V

    goto/16 :goto_8

    .line 1785
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1789
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1790
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzt(II)V

    goto/16 :goto_8

    .line 1779
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1783
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1784
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzj(II)V

    goto/16 :goto_8

    .line 1774
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1777
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 1778
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILcom/google/android/gms/internal/firebase_ml/zztn;)V

    goto/16 :goto_8

    .line 1768
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1771
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1772
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)V

    goto/16 :goto_8

    .line 1764
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1767
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    goto/16 :goto_8

    .line 1758
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1762
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v9

    .line 1763
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzb(IZ)V

    goto/16 :goto_8

    .line 1752
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1756
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1757
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzl(II)V

    goto :goto_8

    .line 1746
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1750
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1751
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzc(IJ)V

    goto :goto_8

    .line 1740
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1744
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1745
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(II)V

    goto :goto_8

    .line 1734
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1738
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1739
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IJ)V

    goto :goto_8

    .line 1728
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1732
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1733
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zzi(IJ)V

    goto :goto_8

    .line 1722
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1726
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v9

    .line 1727
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(IF)V

    goto :goto_8

    .line 1716
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1720
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1721
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 2162
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V

    .line 2163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    .line 2164
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void

    .line 2166
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 3235
    iget-boolean v0, v15, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    if-eqz v0, :cond_12

    .line 3237
    sget-object v9, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v10

    move/from16 v2, v16

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 3241
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3243
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3244
    iget v3, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 3248
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzv(II)I

    move-result v0

    goto :goto_2

    .line 3249
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdo(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    move/from16 v26, v10

    move/from16 v19, v16

    goto/16 :goto_f

    .line 3253
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-nez v6, :cond_a

    .line 3322
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 3323
    iget-wide v0, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    .line 3324
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzr(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 3325
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3316
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3317
    iget v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    .line 3318
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzcq(I)I

    move-result v1

    .line 3319
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3312
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3313
    iget v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 3308
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zze([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3309
    iget-object v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 3298
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    .line 3299
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3300
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3302
    iget-object v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3303
    :cond_3
    iget-object v5, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    .line 3304
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3305
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 3292
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    goto :goto_3

    .line 3293
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3294
    :goto_3
    iget-object v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 3287
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v1

    .line 3288
    iget-wide v5, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    const-wide/16 v19, 0x0

    cmp-long v5, v5, v19

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v0, v16

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 3283
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_9

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 3279
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3275
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    .line 3276
    iget v1, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3271
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzb([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v6

    .line 3272
    iget-wide v4, v11, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzboq:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 3267
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 3263
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    :goto_9
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_c

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 3330
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 3331
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_a

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 3335
    :goto_a
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzcl(I)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    .line 3336
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 3338
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3339
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwu;I[BIILcom/google/android/gms/internal/firebase_ml/zzvf;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto :goto_9

    :cond_a
    :goto_b
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_c
    const/16 v26, -0x1

    goto/16 :goto_d

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 3344
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 3349
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v15

    goto :goto_f

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 3354
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_e
    move v2, v0

    .line 3357
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 3358
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zzxp;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v0

    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    move/from16 v10, v26

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 3361
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrx()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3363
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzaa(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 575
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 576
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    move v12, v11

    move v13, v12

    .line 578
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 579
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 584
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 589
    sget-object v14, Lcom/google/android/gms/internal/firebase_ml/zzur;->zzbrj:Lcom/google/android/gms/internal/firebase_ml/zzur;

    .line 590
    invoke-virtual {v14}, Lcom/google/android/gms/internal/firebase_ml/zzur;->id()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/firebase_ml/zzur;->zzbrw:Lcom/google/android/gms/internal/firebase_ml/zzur;

    .line 591
    invoke-virtual {v14}, Lcom/google/android/gms/internal/firebase_ml/zzur;->id()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 592
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_1

    :cond_0
    move v14, v11

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    .line 869
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 871
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 872
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v6

    .line 873
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zzwe;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v3

    goto/16 :goto_3

    .line 867
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 868
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzf(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 865
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 866
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzo(II)I

    move-result v3

    goto/16 :goto_3

    .line 863
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 864
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzh(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 861
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 862
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzq(II)I

    move-result v3

    goto/16 :goto_3

    .line 859
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 860
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzr(II)I

    move-result v3

    goto/16 :goto_3

    .line 857
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 858
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzn(II)I

    move-result v3

    goto/16 :goto_3

    .line 853
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 855
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 856
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v3

    goto/16 :goto_3

    .line 849
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 850
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 851
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v3

    goto/16 :goto_3

    .line 843
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 844
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 845
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase_ml/zztn;

    if-eqz v6, :cond_1

    .line 846
    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v3

    goto/16 :goto_3

    .line 847
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 841
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 842
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 839
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 840
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzp(II)I

    move-result v3

    goto/16 :goto_3

    .line 837
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 838
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 835
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 836
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzm(II)I

    move-result v3

    goto/16 :goto_3

    .line 833
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 834
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zze(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 831
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 832
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 829
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 830
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(IF)I

    move-result v3

    goto/16 :goto_3

    .line 827
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 828
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(ID)I

    move-result v3

    goto/16 :goto_3

    .line 823
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 824
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdk(I)Ljava/lang/Object;

    move-result-object v6

    .line 825
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 820
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v6

    .line 821
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v3

    goto/16 :goto_3

    .line 811
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 812
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 814
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 815
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 817
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 818
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 802
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 803
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzr(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 805
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 806
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 808
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 809
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 793
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 794
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 796
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 797
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 799
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 800
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 784
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 785
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 787
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 788
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 790
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 791
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 775
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 776
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzo(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 778
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 779
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 781
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 782
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 766
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 767
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzq(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 769
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 770
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 772
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 773
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 757
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 758
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzu(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 760
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 761
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 763
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 764
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 748
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 749
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 751
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 752
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 754
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 755
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 739
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 740
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 742
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 743
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 745
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 746
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 730
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 731
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzp(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 733
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 734
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 736
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 737
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto/16 :goto_2

    .line 721
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 722
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 724
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 725
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 727
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 728
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto :goto_2

    .line 712
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 713
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 715
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 716
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 718
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 719
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto :goto_2

    .line 703
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 704
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 706
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 707
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 709
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 710
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    goto :goto_2

    .line 694
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 695
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 697
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 698
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 700
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v3

    .line 701
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    .line 691
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 687
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 688
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 684
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 682
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 679
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 680
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 675
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 676
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 671
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 672
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 667
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v6

    .line 668
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v3

    goto :goto_3

    .line 664
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 662
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 660
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 658
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 655
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 656
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 652
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 649
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 646
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 644
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzw(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    .line 639
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 641
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 642
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v6

    .line 643
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zzwe;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v3

    goto :goto_3

    .line 636
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 638
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzf(IJ)I

    move-result v3

    goto :goto_3

    .line 634
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 635
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzo(II)I

    move-result v3

    goto :goto_3

    .line 632
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 633
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzh(IJ)I

    move-result v3

    goto :goto_3

    .line 630
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 631
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzq(II)I

    move-result v3

    goto :goto_3

    .line 628
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 629
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzr(II)I

    move-result v3

    goto :goto_3

    .line 626
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzn(II)I

    move-result v3

    goto :goto_3

    .line 622
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 623
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 624
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v3

    goto :goto_3

    .line 618
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 619
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 620
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v3

    goto/16 :goto_3

    .line 612
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 613
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 614
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase_ml/zztn;

    if-eqz v6, :cond_10

    .line 615
    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v3

    goto/16 :goto_3

    .line 616
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 610
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 611
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 608
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 609
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzp(II)I

    move-result v3

    goto/16 :goto_3

    .line 606
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 607
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 604
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 605
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzm(II)I

    move-result v3

    goto/16 :goto_3

    .line 601
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zze(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 599
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 600
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 597
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 598
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(IF)I

    move-result v3

    goto/16 :goto_3

    .line 595
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 596
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 875
    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 878
    :cond_13
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    move v5, v11

    move v6, v5

    move v12, v6

    .line 881
    :goto_5
    iget-object v13, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v13, v13

    if-ge v5, v13, :cond_2b

    .line 882
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v13

    .line 884
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v5, 0x2

    .line 892
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v3, :cond_14

    int-to-long v8, v14

    .line 897
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v3, v14

    :cond_14
    move v8, v11

    goto :goto_7

    .line 898
    :cond_15
    iget-boolean v8, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/firebase_ml/zzur;->zzbrj:Lcom/google/android/gms/internal/firebase_ml/zzur;

    .line 899
    invoke-virtual {v8}, Lcom/google/android/gms/internal/firebase_ml/zzur;->id()I

    move-result v8

    if-lt v4, v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/firebase_ml/zzur;->zzbrw:Lcom/google/android/gms/internal/firebase_ml/zzur;

    .line 900
    invoke-virtual {v8}, Lcom/google/android/gms/internal/firebase_ml/zzur;->id()I

    move-result v8

    if-gt v4, v8, :cond_16

    .line 901
    iget-object v8, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    and-int/2addr v8, v7

    goto :goto_6

    :cond_16
    const/4 v8, 0x0

    :goto_6
    const/16 v18, 0x0

    :goto_7
    and-int v9, v13, v7

    int-to-long v9, v9

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_b

    .line 1197
    :pswitch_45
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1199
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 1200
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v8

    .line 1201
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zzwe;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v4

    goto/16 :goto_a

    .line 1195
    :pswitch_46
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1196
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzf(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1193
    :pswitch_47
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1194
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzo(II)I

    move-result v4

    goto/16 :goto_a

    .line 1191
    :pswitch_48
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 1192
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzh(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1189
    :pswitch_49
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1190
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzq(II)I

    move-result v8

    goto/16 :goto_e

    .line 1187
    :pswitch_4a
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1188
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzr(II)I

    move-result v4

    goto/16 :goto_a

    .line 1185
    :pswitch_4b
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1186
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzn(II)I

    move-result v4

    goto/16 :goto_a

    .line 1181
    :pswitch_4c
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1183
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 1184
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v4

    goto/16 :goto_a

    .line 1177
    :pswitch_4d
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1178
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1179
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v4

    goto/16 :goto_a

    .line 1171
    :pswitch_4e
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1172
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1173
    instance-of v8, v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    if-eqz v8, :cond_17

    .line 1174
    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v4

    goto/16 :goto_a

    .line 1175
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    .line 1169
    :pswitch_4f
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    .line 1170
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(IZ)I

    move-result v8

    goto/16 :goto_e

    .line 1167
    :pswitch_50
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1168
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzp(II)I

    move-result v8

    goto/16 :goto_e

    .line 1165
    :pswitch_51
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 1166
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzg(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1163
    :pswitch_52
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1164
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzm(II)I

    move-result v4

    goto/16 :goto_a

    .line 1161
    :pswitch_53
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1162
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zze(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1159
    :pswitch_54
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1160
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzi(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzd(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1157
    :pswitch_55
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1158
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(IF)I

    move-result v8

    goto/16 :goto_e

    .line 1155
    :pswitch_56
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 1156
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(ID)I

    move-result v4

    goto/16 :goto_a

    .line 1151
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    .line 1152
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdk(I)Ljava/lang/Object;

    move-result-object v9

    .line 1153
    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_a

    .line 1147
    :pswitch_58
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1148
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v8

    .line 1149
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v4

    goto/16 :goto_a

    .line 1138
    :pswitch_59
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1139
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzn(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1141
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_18

    int-to-long v8, v8

    .line 1142
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1144
    :cond_18
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1145
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1129
    :pswitch_5a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1130
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1132
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_19

    int-to-long v8, v8

    .line 1133
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1135
    :cond_19
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1136
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1120
    :pswitch_5b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1121
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1123
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_1a

    int-to-long v8, v8

    .line 1124
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1126
    :cond_1a
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1127
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1111
    :pswitch_5c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1112
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1114
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_1b

    int-to-long v8, v8

    .line 1115
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1117
    :cond_1b
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1118
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1102
    :pswitch_5d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1103
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzo(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1105
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_1c

    int-to-long v8, v8

    .line 1106
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1108
    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1109
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1093
    :pswitch_5e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1094
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzq(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1096
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_1d

    int-to-long v8, v8

    .line 1097
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1099
    :cond_1d
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1100
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1084
    :pswitch_5f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1085
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzu(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1087
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_1e

    int-to-long v8, v8

    .line 1088
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1090
    :cond_1e
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1091
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1075
    :pswitch_60
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1076
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1078
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_1f

    int-to-long v8, v8

    .line 1079
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1081
    :cond_1f
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1082
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1066
    :pswitch_61
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1067
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1069
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_20

    int-to-long v8, v8

    .line 1070
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1072
    :cond_20
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1073
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1057
    :pswitch_62
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1058
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1060
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_21

    int-to-long v8, v8

    .line 1061
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1063
    :cond_21
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1064
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto/16 :goto_8

    .line 1048
    :pswitch_63
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1049
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzm(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1051
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_22

    int-to-long v8, v8

    .line 1052
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1054
    :cond_22
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1055
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto :goto_8

    .line 1039
    :pswitch_64
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1040
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1042
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_23

    int-to-long v8, v8

    .line 1043
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1045
    :cond_23
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1046
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto :goto_8

    .line 1030
    :pswitch_65
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1031
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1033
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_24

    int-to-long v8, v8

    .line 1034
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1036
    :cond_24
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1037
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    goto :goto_8

    .line 1021
    :pswitch_66
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1022
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1024
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvn:Z

    if-eqz v9, :cond_25

    int-to-long v8, v8

    .line 1025
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1027
    :cond_25
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result v8

    .line 1028
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcx(I)I

    move-result v9

    :goto_8
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_e

    .line 1017
    :pswitch_67
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    .line 1018
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_68
    const/4 v8, 0x0

    .line 1013
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1014
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_69
    const/4 v8, 0x0

    .line 1009
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1010
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6a
    const/4 v8, 0x0

    .line 1005
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1006
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6b
    const/4 v8, 0x0

    .line 1001
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1002
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6c
    const/4 v8, 0x0

    .line 997
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 998
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzt(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    .line 993
    :pswitch_6d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 994
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzd(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    .line 989
    :pswitch_6e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v8

    .line 990
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v4

    goto :goto_a

    .line 986
    :pswitch_6f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/util/List;)I

    move-result v4

    goto :goto_a

    .line 982
    :pswitch_70
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    .line 983
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_71
    const/4 v8, 0x0

    .line 978
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 979
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_72
    const/4 v8, 0x0

    .line 974
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 975
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_73
    const/4 v8, 0x0

    .line 970
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 971
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_74
    const/4 v8, 0x0

    .line 966
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 967
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_75
    const/4 v8, 0x0

    .line 962
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 963
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_76
    const/4 v8, 0x0

    .line 958
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 959
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzv(ILjava/util/List;Z)I

    move-result v4

    :goto_9
    add-int/2addr v6, v4

    const/4 v4, 0x1

    goto :goto_d

    :pswitch_77
    const/4 v8, 0x0

    .line 954
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 955
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzw(ILjava/util/List;Z)I

    move-result v4

    :goto_a
    add-int/2addr v6, v4

    :cond_26
    :goto_b
    const/4 v4, 0x1

    :cond_27
    :goto_c
    const/4 v8, 0x0

    :goto_d
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_11

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 950
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 951
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v8

    .line 952
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zzwe;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v4

    goto :goto_a

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 947
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzf(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 945
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzo(II)I

    move-result v4

    goto :goto_a

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 943
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzh(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 941
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzq(II)I

    move-result v8

    :goto_e
    add-int/2addr v6, v8

    goto :goto_b

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 939
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzr(II)I

    move-result v4

    goto :goto_a

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 937
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzn(II)I

    move-result v4

    goto :goto_a

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 933
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    .line 934
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v4

    goto :goto_a

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 929
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 930
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzwu;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 923
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 924
    instance-of v8, v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    if-eqz v8, :cond_28

    .line 925
    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zztn;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILcom/google/android/gms/internal/firebase_ml/zztn;)I

    move-result v4

    goto/16 :goto_a

    .line 926
    :cond_28
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    .line 921
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzc(IZ)I

    move-result v8

    add-int/2addr v6, v8

    goto/16 :goto_c

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v18

    if-eqz v8, :cond_27

    const/4 v8, 0x0

    .line 919
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzp(II)I

    move-result v9

    add-int/2addr v6, v9

    goto/16 :goto_d

    :pswitch_84
    const/4 v4, 0x1

    const/4 v8, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_29

    .line 917
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzg(IJ)I

    move-result v9

    goto :goto_f

    :pswitch_85
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 915
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzm(II)I

    move-result v9

    goto :goto_f

    :pswitch_86
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 913
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zze(IJ)I

    move-result v9

    goto :goto_f

    :pswitch_87
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 911
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzd(IJ)I

    move-result v9

    :goto_f
    add-int/2addr v6, v9

    :cond_29
    const/4 v9, 0x0

    goto :goto_10

    :pswitch_88
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    .line 909
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(IF)I

    move-result v10

    add-int/2addr v6, v10

    :cond_2a
    :goto_10
    const-wide/16 v10, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_2a

    const-wide/16 v10, 0x0

    .line 907
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzb(ID)I

    move-result v15

    add-int/2addr v6, v15

    :goto_11
    add-int/lit8 v5, v5, 0x3

    move v11, v8

    move v8, v4

    move v4, v9

    move-wide v9, v13

    goto/16 :goto_5

    :cond_2b
    move v8, v11

    .line 1203
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    .line 1204
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v2, :cond_2e

    .line 1205
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object v1

    move v11, v8

    .line 1207
    :goto_12
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzbpq:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzwz;->zzte()I

    move-result v2

    if-ge v11, v2, :cond_2c

    .line 1208
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzbpq:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/firebase_ml/zzwz;->zzdq(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 1209
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_ml/zzuo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzuo;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1211
    :cond_2c
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzbpq:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzwz;->zztf()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1212
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_ml/zzuo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzuo;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_13

    :cond_2d
    add-int/2addr v6, v8

    :cond_2e
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzac(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v2

    .line 3402
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvp:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_e

    .line 3403
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvo:[I

    aget v4, v4, v2

    .line 3405
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v6, v6, v4

    .line 3407
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v7

    .line 3409
    iget-boolean v8, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 3410
    iget-object v8, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v1, :cond_1

    .line 3415
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbve:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v1, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v10

    goto :goto_1

    :cond_0
    move v8, v0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v0

    :goto_2
    if-eqz v10, :cond_3

    .line 3419
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_c

    const/16 v11, 0x11

    if-eq v10, v11, :cond_c

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_9

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_8

    const/16 v8, 0x44

    if-eq v10, v8, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_4

    goto/16 :goto_5

    .line 3445
    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 3447
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzw(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 3448
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3449
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdk(I)Ljava/lang/Object;

    move-result-object v4

    .line 3450
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzvz;

    move-result-object v4

    .line 3451
    iget-object v4, v4, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbuz:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzyd;->zztw()Lcom/google/android/gms/internal/firebase_ml/zzyg;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzyg;->zzbza:Lcom/google/android/gms/internal/firebase_ml/zzyg;

    if-ne v4, v7, :cond_7

    const/4 v4, 0x0

    .line 3453
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_6

    .line 3455
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v4

    .line 3456
    :cond_6
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zzac(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v0

    :cond_7
    if-nez v5, :cond_d

    return v0

    .line 3441
    :cond_8
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3442
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_ml/zzwu;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_9
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 3430
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3431
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3432
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v4

    move v7, v0

    .line 3433
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 3434
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3435
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zzac(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    move v5, v0

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v5, :cond_d

    return v0

    .line 3424
    :cond_c
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3425
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdj(I)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_ml/zzwu;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3463
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v1, :cond_f

    .line 3464
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_f

    return v0

    :cond_f
    return v5
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 457
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 460
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 465
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvf:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 534
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 531
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 533
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 529
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 526
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 528
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 524
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwb;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 522
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvs:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 520
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 517
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JJ)V

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 514
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 511
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JJ)V

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 508
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 505
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    .line 507
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 502
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 499
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 497
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 494
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 491
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JZ)V

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 488
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 485
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JJ)V

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 482
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JI)V

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 479
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JJ)V

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 476
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JJ)V

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 473
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzn(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JF)V

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 470
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JD)V

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 536
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvm:Z

    if-nez v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(Lcom/google/android/gms/internal/firebase_ml/zzul;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzq(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3365
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvp:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvq:I

    if-ge v0, v1, :cond_1

    .line 3366
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvo:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzdm(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3369
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3371
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvv:Lcom/google/android/gms/internal/firebase_ml/zzwb;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/firebase_ml/zzwb;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3373
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvo:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3375
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvs:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvo:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3377
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzq(Ljava/lang/Object;)V

    .line 3378
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvk:Z

    if-eqz v0, :cond_3

    .line 3379
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzq(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
