.class final Lcom/google/common/io/BaseEncoding$Base16Encoding;
.super Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base16Encoding"
.end annotation


# instance fields
.field final encoding:[C


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;)V
    .locals 4

    const/4 v0, 0x0

    .line 898
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    .line 891
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    .line 899
    invoke-static {p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    ushr-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 902
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {p1, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 894
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lcom/google/common/io/BaseEncoding$Base16Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;)V

    return-void
.end method


# virtual methods
.method newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 0

    .line 933
    new-instance p2, Lcom/google/common/io/BaseEncoding$Base16Encoding;

    invoke-direct {p2, p1}, Lcom/google/common/io/BaseEncoding$Base16Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;)V

    return-object p2
.end method
