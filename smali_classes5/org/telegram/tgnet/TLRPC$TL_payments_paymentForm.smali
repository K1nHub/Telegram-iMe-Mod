.class public Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public additional_methods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;",
            ">;"
        }
    .end annotation
.end field

.field public bot_id:J

.field public can_save_credentials:Z

.field public description:Ljava/lang/String;

.field public flags:I

.field public form_id:J

.field public invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

.field public native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public native_provider:Ljava/lang/String;

.field public password_missing:Z

.field public photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

.field public provider_id:J

.field public saved_credentials:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;",
            ">;"
        }
    .end annotation
.end field

.field public saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3733
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 3749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    .line 3751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    .line 3752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .locals 1

    const v0, -0x5ffa78af

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3757
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_payments_paymentForm"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3762
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;-><init>()V

    .line 3763
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 3768
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3769
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 3770
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 3771
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->form_id:J

    .line 3772
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:J

    .line 3773
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->title:Ljava/lang/String;

    .line 3774
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->description:Ljava/lang/String;

    .line 3775
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 3776
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3778
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 3779
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    .line 3780
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    .line 3781
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 3782
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    .line 3784
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3785
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3787
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x40

    const-string v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eqz v0, :cond_8

    .line 3788
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_6

    if-nez p2, :cond_5

    return-void

    .line 3791
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3795
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v2

    :goto_2
    if-ge v5, v0, :cond_8

    .line 3797
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    move-result-object v6

    if-nez v6, :cond_7

    return-void

    .line 3801
    :cond_7
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3804
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    .line 3805
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 3807
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 3808
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_b

    if-nez p2, :cond_a

    return-void

    .line 3811
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3815
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_d

    .line 3817
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    move-result-object v6

    if-nez v6, :cond_c

    return-void

    .line 3821
    :cond_c
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3824
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_f

    if-nez p2, :cond_e

    return-void

    .line 3827
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3831
    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 3833
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_10

    return-void

    .line 3837
    :cond_10
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, -0x5ffa78af

    .line 3842
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3843
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    .line 3844
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    .line 3845
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3846
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->form_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3847
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3848
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3849
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3850
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 3851
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3853
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3854
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3855
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3856
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 3857
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3859
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3860
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3862
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_5

    .line 3863
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3864
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3865
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_5

    .line 3867
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3870
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 3871
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3873
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 3874
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3875
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3876
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_7

    .line 3878
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3881
    :cond_7
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3882
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3883
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_4
    if-ge v1, v0, :cond_8

    .line 3885
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method
