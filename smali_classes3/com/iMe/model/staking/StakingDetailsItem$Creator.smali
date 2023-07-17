.class public final Lcom/iMe/model/staking/StakingDetailsItem$Creator;
.super Ljava/lang/Object;
.source "StakingDetailsItem.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/StakingDetailsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/iMe/model/staking/StakingDetailsItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 41

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/iMe/model/wallet/crypto/TokenItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/math/BigDecimal;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/math/BigDecimal;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/math/BigDecimal;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-eqz v2, :cond_0

    move/from16 v23, v21

    goto :goto_0

    :cond_0
    move/from16 v23, v22

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v24, v21

    goto :goto_1

    :cond_1
    move/from16 v24, v22

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->valueOf(Ljava/lang/String;)Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v40, v21

    goto :goto_2

    :cond_2
    move/from16 v40, v22

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v37

    move-object v2, v1

    move/from16 v21, v23

    move/from16 v22, v24

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-object/from16 v31, v39

    move/from16 v32, v40

    invoke-direct/range {v2 .. v38}, Lcom/iMe/model/staking/StakingDetailsItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iMe/model/staking/StakingDetailsItem$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 0

    new-array p1, p1, [Lcom/iMe/model/staking/StakingDetailsItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iMe/model/staking/StakingDetailsItem$Creator;->newArray(I)[Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    return-object p1
.end method
