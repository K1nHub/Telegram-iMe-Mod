.class public Lorg/telegram/tgnet/TLRPC$TL_codeSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x52dac288


# instance fields
.field public allow_app_hash:Z

.field public allow_firebase:Z

.field public allow_flashcall:Z

.field public allow_missed_call:Z

.field public app_sandbox:Z

.field public current_number:Z

.field public flags:I

.field public logout_tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17842
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 17851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 6

    .line 17869
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 17870
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 17871
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 17872
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 17873
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 17874
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 17876
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_6

    if-nez p2, :cond_5

    return-void

    .line 17879
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string/jumbo v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17883
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_8

    .line 17885
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    .line 17889
    :cond_7
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 17892
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 17893
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->token:Ljava/lang/String;

    .line 17895
    :cond_9
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->app_sandbox:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 17899
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17900
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 17901
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 17902
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 17903
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 17904
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x80

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x81

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 17905
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->app_sandbox:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x100

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x101

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 17906
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17907
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const v0, 0x1cb5c415

    .line 17908
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17909
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 17910
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_6

    .line 17912
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 17915
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 17916
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
