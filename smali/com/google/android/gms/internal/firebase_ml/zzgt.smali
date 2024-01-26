.class final Lcom/google/android/gms/internal/firebase_ml/zzgt;
.super Lcom/google/android/gms/internal/firebase_ml/zzgn;


# instance fields
.field private final zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

.field private final zzwu:Lcom/google/android/gms/internal/firebase_ml/zzgs;

.field private zzwv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

.field private zzwx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzgs;Lcom/google/android/gms/internal/firebase_ml/zzre;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwu:Lcom/google/android/gms/internal/firebase_ml/zzgs;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzre;->setLenient(Z)V

    return-void
.end method

.method private final zzgq()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwl:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwm:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->close()V

    return-void
.end method

.method public final getIntValue()I
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfy()Lcom/google/android/gms/internal/firebase_ml/zzgj;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwu:Lcom/google/android/gms/internal/firebase_ml/zzgs;

    return-object v0
.end method

.method public final zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 33
    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzgw;->zzwc:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->beginObject()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->beginArray()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->zznx()Lcom/google/android/gms/internal/firebase_ml/zzrg;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrg;->zzbey:Lcom/google/android/gms/internal/firebase_ml/zzrg;

    .line 43
    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzgw;->zzwz:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 81
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto/16 :goto_3

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->nextName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwj:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 75
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwl:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwm:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto/16 :goto_3

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwk:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto :goto_3

    :pswitch_3
    const-string v0, "null"

    .line 66
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwp:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->nextNull()V

    goto :goto_3

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    .line 61
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwn:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto :goto_3

    :cond_4
    const-string v0, "false"

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwo:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto :goto_3

    :pswitch_5
    const-string/jumbo v0, "}"

    .line 55
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwi:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->endObject()V

    goto :goto_3

    :pswitch_6
    const-string/jumbo v0, "{"

    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwh:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto :goto_3

    :pswitch_7
    const-string v0, "]"

    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwg:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->endArray()V

    goto :goto_3

    :pswitch_8
    const-string v0, "["

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwf:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    .line 83
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    return-object v0
.end method

.method public final zzgb()Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzgc()Lcom/google/android/gms/internal/firebase_ml/zzgn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-eqz v0, :cond_2

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzgw;->zzwc:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->skipValue()V

    const-string/jumbo v0, "}"

    .line 91
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwi:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwt:Lcom/google/android/gms/internal/firebase_ml/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzre;->skipValue()V

    const-string v0, "]"

    .line 87
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwg:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzww:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final zzgd()B
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public final zzge()S
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public final zzgf()F
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final zzgg()J
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzgh()D
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzgi()Ljava/math/BigInteger;
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 21
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzgj()Ljava/math/BigDecimal;
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzgq()V

    .line 23
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgt;->zzwx:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
