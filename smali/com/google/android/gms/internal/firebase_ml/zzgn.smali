.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzgn;
.super Ljava/lang/Object;


# static fields
.field private static zzwd:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzwe:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwd:Ljava/util/WeakHashMap;

    .line 275
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwe:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_ml/zzgh;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v0, p3

    .line 52
    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zza(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 53
    instance-of v3, v9, Ljava/lang/Class;

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    move-object v3, v9

    check-cast v3, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v3, v10

    .line 54
    :goto_0
    instance-of v4, v9, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 55
    move-object v3, v9

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zza(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    .line 56
    :cond_1
    const-class v4, Ljava/lang/Void;

    if-ne v3, v4, :cond_2

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgc()Lcom/google/android/gms/internal/firebase_ml/zzgn;

    return-object v10

    .line 59
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v4

    .line 60
    :try_start_0
    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzgm;->zzwc:[I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v5, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1f

    :pswitch_0
    if-eqz v3, :cond_3

    .line 210
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v11, v12

    :cond_4
    const-string v1, "primitive number field but found a JSON null"

    .line 211
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v3, :cond_6

    .line 213
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x600

    if-eqz v1, :cond_6

    .line 214
    const-class v1, Ljava/util/Collection;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zza(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zzb(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zzd(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 216
    :cond_5
    const-class v1, Ljava/util/Map;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zza(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zze(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zzd(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 218
    :cond_6
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzb(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zzd(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 202
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_7

    if-eq v3, v2, :cond_7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v2, :cond_7

    if-ne v3, v1, :cond_8

    :cond_7
    const-string v1, "nan"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "-infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    if-eqz v3, :cond_9

    .line 204
    const-class v0, Ljava/lang/Number;

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v8, :cond_a

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzgq;

    .line 206
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_9
    move v11, v12

    :cond_a
    const-string v0, "number field formatted as a JSON string must use the @JsonString annotation"

    .line 208
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zza(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    if-eqz v8, :cond_c

    .line 180
    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzgq;

    .line 181
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    move v11, v12

    :cond_d
    const-string v0, "number type formatted as a JSON number cannot use @JsonString annotation"

    .line 183
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v3, :cond_1c

    .line 184
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7

    .line 186
    :cond_e
    const-class v0, Ljava/math/BigInteger;

    if-ne v3, v0, :cond_f

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgi()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_f
    if-eq v3, v1, :cond_1b

    .line 188
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_10

    goto/16 :goto_6

    .line 190
    :cond_10
    const-class v0, Ljava/lang/Long;

    if-eq v3, v0, :cond_1a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_11

    goto :goto_5

    :cond_11
    if-eq v3, v2, :cond_19

    .line 192
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_12

    goto :goto_4

    .line 194
    :cond_12
    const-class v0, Ljava/lang/Integer;

    if-eq v3, v0, :cond_18

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_13

    goto :goto_3

    .line 196
    :cond_13
    const-class v0, Ljava/lang/Short;

    if-eq v3, v0, :cond_17

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_14

    goto :goto_2

    .line 198
    :cond_14
    const-class v0, Ljava/lang/Byte;

    if-eq v3, v0, :cond_16

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_15

    goto :goto_1

    .line 200
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "expected numeric type but got "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_16
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgd()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 197
    :cond_17
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzge()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 195
    :cond_18
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 193
    :cond_19
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgf()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 191
    :cond_1a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 189
    :cond_1b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgh()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1c
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgj()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :pswitch_3
    if-eqz v9, :cond_1e

    .line 173
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v0, :cond_1e

    if-eqz v3, :cond_1d

    const-class v0, Ljava/lang/Boolean;

    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    :cond_1d
    move v0, v11

    goto :goto_9

    :cond_1e
    :goto_8
    move v0, v12

    :goto_9
    const-string v1, "expected type Boolean or boolean but got %s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v9, v2, v11

    if-eqz v0, :cond_20

    .line 179
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwn:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v4, v0, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 178
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_4
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzc(Ljava/lang/reflect/Type;)Z

    move-result v13

    if-eqz v9, :cond_22

    if-nez v13, :cond_22

    if-eqz v3, :cond_21

    .line 62
    const-class v1, Ljava/util/Collection;

    .line 63
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zza(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_a

    :cond_21
    move v1, v11

    goto :goto_b

    :cond_22
    :goto_a
    move v1, v12

    :goto_b
    const-string v2, "expected collection or array type but got %s"

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v9, v4, v11

    if-eqz v1, :cond_29

    if-eqz p5, :cond_24

    if-nez v8, :cond_23

    goto :goto_c

    .line 70
    :cond_23
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 72
    :cond_24
    :goto_c
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zzb(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v11

    if-eqz v13, :cond_25

    .line 75
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzd(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    goto :goto_d

    :cond_25
    if-eqz v3, :cond_26

    .line 76
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 77
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 78
    :cond_26
    :goto_d
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zza(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgl()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v1

    .line 81
    :goto_e
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwg:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-eq v1, v2, :cond_27

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-interface {v11, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v1

    goto :goto_e

    :cond_27
    if-eqz v13, :cond_28

    .line 87
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzb(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zza(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_28
    return-object v11

    .line 67
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_5
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzc(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_2a

    move v1, v12

    goto :goto_f

    :cond_2a
    move v1, v11

    :goto_f
    const-string v2, "expected object or map type but got %s"

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v9, v4, v11

    if-eqz v1, :cond_45

    if-eqz p6, :cond_2b

    .line 95
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzb(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v13, v1

    goto :goto_10

    :cond_2b
    move-object v13, v10

    :goto_10
    if-eqz v3, :cond_2d

    if-nez p5, :cond_2c

    goto :goto_11

    .line 97
    :cond_2c
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_2d
    :goto_11
    if-eqz v3, :cond_2e

    .line 98
    const-class v1, Ljava/util/Map;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zza(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v12

    goto :goto_12

    :cond_2e
    move v1, v11

    :goto_12
    if-eqz v13, :cond_2f

    .line 100
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;-><init>()V

    goto :goto_14

    :cond_2f
    if-nez v1, :cond_31

    if-nez v3, :cond_30

    goto :goto_13

    .line 104
    :cond_30
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_14

    .line 103
    :cond_31
    :goto_13
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zze(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    :goto_14
    move-object v14, v2

    .line 105
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v9, :cond_32

    .line 107
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    if-eqz v1, :cond_34

    .line 108
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzho;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 109
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 110
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    move-object v4, v1

    goto :goto_15

    :cond_33
    move-object v4, v10

    :goto_15
    if-eqz v4, :cond_34

    .line 112
    move-object v3, v14

    check-cast v3, Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 113
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/android/gms/internal/firebase_ml/zzgh;)V

    return-object v14

    .line 116
    :cond_34
    instance-of v1, v14, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    if-eqz v1, :cond_35

    .line 117
    move-object v1, v14

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfy()Lcom/google/android/gms/internal/firebase_ml/zzgj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Lcom/google/android/gms/internal/firebase_ml/zzgj;)V

    .line 118
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgl()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v1

    .line 119
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object v7

    .line 121
    const-class v3, Lcom/google/android/gms/internal/firebase_ml/zzho;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-nez v16, :cond_36

    .line 122
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 123
    move-object v3, v14

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    .line 124
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzie;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/android/gms/internal/firebase_ml/zzgh;)V

    goto/16 :goto_19

    .line 126
    :cond_36
    :goto_16
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwj:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v1, v2, :cond_3d

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getText()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-nez p5, :cond_3c

    .line 131
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 133
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzgz()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_17

    .line 134
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "final array/object fields are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_38
    :goto_17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzgy()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 136
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 137
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object v10, v5

    move-object v5, v14

    move v11, v6

    move-object/from16 v6, p5

    move-object/from16 v18, v7

    move/from16 v7, v17

    .line 140
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    invoke-virtual {v10, v14, v1}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_39
    move-object/from16 v18, v7

    if-eqz v16, :cond_3a

    .line 144
    move-object v10, v14

    check-cast v10, Lcom/google/android/gms/internal/firebase_ml/zzho;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object v5, v14

    move-object v11, v6

    move-object/from16 v6, p5

    .line 145
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    goto :goto_18

    :cond_3a
    if-nez p5, :cond_3b

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgc()Lcom/google/android/gms/internal/firebase_ml/zzgn;

    .line 150
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v1

    move-object/from16 v7, v18

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_16

    .line 148
    :cond_3b
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 130
    :cond_3c
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_3d
    :goto_19
    if-eqz v9, :cond_3e

    .line 153
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3e
    if-nez v13, :cond_3f

    return-object v14

    .line 156
    :cond_3f
    move-object v1, v14

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    move v2, v12

    goto :goto_1a

    :cond_40
    const/4 v2, 0x0

    :goto_1a
    const-string v3, "No value specified for @JsonPolymorphicTypeMap field"

    .line 158
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-class v2, Lcom/google/android/gms/internal/firebase_ml/zzgo;

    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzgo;

    .line 162
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzgo;->zzgo()[Lcom/google/android/gms/internal/firebase_ml/zzgo$zza;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 163
    invoke-interface {v5}, Lcom/google/android/gms/internal/firebase_ml/zzgo$zza;->zzgm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 164
    invoke-interface {v5}, Lcom/google/android/gms/internal/firebase_ml/zzgo$zza;->zzgn()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    goto :goto_1c

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_42
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_43

    move v11, v12

    goto :goto_1d

    :cond_43
    const/4 v11, 0x0

    :goto_1d
    const-string v2, "No TypeDef annotation found with key: "

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_44
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 168
    :goto_1e
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfy()Lcom/google/android/gms/internal/firebase_ml/zzgj;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/firebase_ml/zzgj;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzgj;->zzak(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzgn;

    move-result-object v1

    .line 171
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgk()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .line 172
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 94
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :goto_1f
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unexpected JSON node type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgb()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    const-string v3, "key "

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    if-eqz v8, :cond_48

    if-eqz v2, :cond_47

    const-string v2, ", "

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    const-string v2, "field "

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    :cond_48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/android/gms/internal/firebase_ml/zzgh;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/android/gms/internal/firebase_ml/zzgh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgl()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    .line 41
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwj:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v0, v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getText()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-nez p5, :cond_0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method private static zzb(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 232
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwe:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 233
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwd:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwd:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 238
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzgv()Ljava/util/Collection;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzhp;

    .line 240
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzgy()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 241
    const-class v3, Lcom/google/android/gms/internal/firebase_ml/zzgo;

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_ml/zzgo;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    const-string v6, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p0, v7, v5

    if-eqz v0, :cond_8

    .line 248
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zza(Ljava/lang/reflect/Type;)Z

    move-result v0

    const-string v6, "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v5

    .line 249
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v4

    if-eqz v0, :cond_7

    .line 255
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase_ml/zzgo;->zzgo()[Lcom/google/android/gms/internal/firebase_ml/zzgo$zza;

    move-result-object v0

    .line 256
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 258
    array-length v6, v0

    if-lez v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    const-string v7, "@JsonPolymorphicTypeMap must have at least one @TypeDef"

    .line 259
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    .line 260
    array-length v6, v0

    move v7, v5

    :goto_3
    if-ge v7, v6, :cond_6

    aget-object v8, v0, v7

    .line 261
    invoke-interface {v8}, Lcom/google/android/gms/internal/firebase_ml/zzgo$zza;->zzgm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Class contains two @TypeDef annotations with identical key: %s"

    new-array v11, v4, [Ljava/lang/Object;

    .line 262
    invoke-interface {v8}, Lcom/google/android/gms/internal/firebase_ml/zzgo$zza;->zzgm()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 266
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object v0, v2

    goto :goto_0

    .line 253
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwd:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwe:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 273
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzwe:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private final zzgk()Lcom/google/android/gms/internal/firebase_ml/zzgp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no JSON input found"

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private final zzgl()Lcom/google/android/gms/internal/firebase_ml/zzgp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgk()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgm;->zzwc:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwj:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwi:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 28
    :cond_3
    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzgh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzgh;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Type;ZLcom/google/android/gms/internal/firebase_ml/zzgh;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V

    throw p1
.end method

.method public final zza(Ljava/lang/reflect/Type;ZLcom/google/android/gms/internal/firebase_ml/zzgh;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    :try_start_0
    const-class p3, Ljava/lang/Void;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgk()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    :cond_0
    const/4 v1, 0x0

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzgh;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V

    :cond_2
    throw p1
.end method

.method public final zza(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgl()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    .line 9
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwj:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getText()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzgc()Lcom/google/android/gms/internal/firebase_ml/zzgn;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract zzfy()Lcom/google/android/gms/internal/firebase_ml/zzgj;
.end method

.method public abstract zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;
.end method

.method public abstract zzgb()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgc()Lcom/google/android/gms/internal/firebase_ml/zzgn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgd()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzge()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgf()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgg()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgh()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgi()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgj()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
