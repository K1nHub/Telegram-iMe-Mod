.class public final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;
.super Ljava/lang/Object;
.source "WalletV3R2Contract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletV3R2Contract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletV3R2Contract.kt\ncom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion\n+ 2 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 3 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,244:1\n11#2:245\n11#2:246\n11#2:249\n11#2:250\n9#3,2:247\n*S KotlinDebug\n*F\n+ 1 WalletV3R2Contract.kt\ncom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion\n*L\n148#1:245\n158#1:246\n228#1:249\n234#1:250\n205#1:247,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createIntMsg(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/MessageRelaxed;
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createIntMsg(Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/MessageRelaxed;

    move-result-object p0

    return-object p0
.end method

.method private final createIntMsg(Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/MessageRelaxed;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/contract/wallet/WalletTransfer;",
            ")",
            "Lorg/ton/block/MessageRelaxed<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v13, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    .line 217
    invoke-virtual/range {p1 .. p1}, Lorg/ton/contract/wallet/WalletTransfer;->getBounceable()Z

    move-result v2

    .line 219
    sget-object v4, Lorg/ton/block/AddrNone;->INSTANCE:Lorg/ton/block/AddrNone;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lorg/ton/contract/wallet/WalletTransfer;->getDestination()Lorg/ton/block/MsgAddressInt;

    move-result-object v5

    .line 221
    invoke-virtual/range {p1 .. p1}, Lorg/ton/contract/wallet/WalletTransfer;->getCoins()Lorg/ton/block/CurrencyCollection;

    move-result-object v6

    .line 222
    new-instance v7, Lorg/ton/block/Coins;

    const/4 v14, 0x0

    const/4 v0, 0x1

    invoke-direct {v7, v14, v0, v14}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 223
    new-instance v8, Lorg/ton/block/Coins;

    invoke-direct {v8, v14, v0, v14}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    .line 215
    invoke-direct/range {v0 .. v12}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;-><init>(ZZZLorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    invoke-virtual/range {p1 .. p1}, Lorg/ton/contract/wallet/WalletTransfer;->getStateInit()Lorg/ton/block/StateInit;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v2, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    sget-object v3, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    .line 11
    sget-object v4, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v4, v1, v3}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 228
    invoke-virtual {v2, v14, v1}, Lorg/ton/block/Either$Companion;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/ton/block/Either;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v14

    .line 227
    :goto_0
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object v0

    .line 230
    invoke-virtual/range {p1 .. p1}, Lorg/ton/contract/wallet/WalletTransfer;->getBody()Lorg/ton/cell/Cell;

    move-result-object v1

    if-nez v1, :cond_1

    .line 232
    sget-object v1, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    sget-object v2, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    invoke-virtual {v2}, Lorg/ton/cell/Cell$Companion;->empty()Lorg/ton/cell/Cell;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lorg/ton/block/Either$Companion;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/ton/block/Either;

    move-result-object v1

    goto :goto_1

    .line 234
    :cond_1
    sget-object v2, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    .line 11
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v1, v14}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 234
    invoke-virtual {v2, v14, v1}, Lorg/ton/block/Either$Companion;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/ton/block/Either;

    move-result-object v1

    .line 237
    :goto_1
    new-instance v2, Lorg/ton/block/MessageRelaxed;

    invoke-direct {v2, v13, v0, v1}, Lorg/ton/block/MessageRelaxed;-><init>(Lorg/ton/block/CommonMsgInfoRelaxed;Lorg/ton/block/Maybe;Lorg/ton/block/Either;)V

    return-object v2
.end method

.method public static synthetic createStateInit$default(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/api/pub/PublicKeyEd25519;IIILjava/lang/Object;)Lorg/ton/block/StateInit;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 167
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createStateInit(Lorg/ton/api/pub/PublicKeyEd25519;II)Lorg/ton/block/StateInit;

    move-result-object p0

    return-object p0
.end method

.method private final varargs createTransferMessageBody(Lorg/ton/api/pk/PrivateKeyEd25519;III[Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/cell/Cell;
    .locals 2

    .line 190
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;-><init>(III[Lorg/ton/contract/wallet/WalletTransfer;)V

    invoke-virtual {v0, v1}, Lorg/ton/cell/CellBuilder$Companion;->createCell(Lkotlin/jvm/functions/Function1;)Lorg/ton/cell/Cell;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 p5, 0x0

    .line 205
    invoke-static {p2, p3, p4, p5}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-static {v1, p3, p4, p5}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/ton/crypto/Decryptor;->sign([B)[B

    move-result-object p1

    .line 9
    array-length p3, p1

    mul-int/lit8 p3, p3, 0x8

    .line 10
    sget-object p4, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {p4, p1, p3}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 207
    new-instance p3, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;

    invoke-direct {p3, p1, p2}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/cell/Cell;)V

    invoke-virtual {v0, p3}, Lorg/ton/cell/CellBuilder$Companion;->createCell(Lkotlin/jvm/functions/Function1;)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final createStateInit(Lorg/ton/api/pub/PublicKeyEd25519;II)Lorg/ton/block/StateInit;
    .locals 10

    const-string v0, "publicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;

    invoke-direct {v1, p3, p2, p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;-><init>(IILorg/ton/api/pub/PublicKeyEd25519;)V

    invoke-virtual {v0, v1}, Lorg/ton/cell/CellBuilder$Companion;->createCell(Lkotlin/jvm/functions/Function1;)Lorg/ton/cell/Cell;

    move-result-object v4

    .line 177
    new-instance p1, Lorg/ton/block/StateInit;

    .line 178
    sget-object v3, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->CODE:Lorg/ton/cell/Cell;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p1

    .line 177
    invoke-direct/range {v2 .. v9}, Lorg/ton/block/StateInit;-><init>(Lorg/ton/cell/Cell;Lorg/ton/cell/Cell;Lorg/ton/hashmap/HashMapE;Lkotlin/UInt;Lorg/ton/block/TickTock;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final varargs createTransferMessage(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/StateInit;Lorg/ton/api/pk/PrivateKeyEd25519;III[Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/Message;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/MsgAddressInt;",
            "Lorg/ton/block/StateInit;",
            "Lorg/ton/api/pk/PrivateKeyEd25519;",
            "III[",
            "Lorg/ton/contract/wallet/WalletTransfer;",
            ")",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p7

    const-string v3, "address"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "privateKey"

    move-object v5, p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "transfers"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v3, Lorg/ton/block/ExtInMsgInfo;

    .line 141
    sget-object v4, Lorg/ton/block/AddrNone;->INSTANCE:Lorg/ton/block/AddrNone;

    .line 143
    new-instance v6, Lorg/ton/block/Coins;

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-direct {v6, v10, v7, v10}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 140
    invoke-direct {v3, v4, p1, v6}, Lorg/ton/block/ExtInMsgInfo;-><init>(Lorg/ton/block/MsgAddressExt;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/Coins;)V

    .line 145
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    if-eqz v1, :cond_0

    .line 146
    sget-object v4, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    .line 11
    sget-object v6, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v6, p2, v10}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 146
    invoke-virtual {v4, v10, v1}, Lorg/ton/block/Either$Companion;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/ton/block/Either;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v10

    .line 145
    :goto_0
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object v0

    .line 156
    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Lorg/ton/contract/wallet/WalletTransfer;

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 151
    invoke-direct/range {v4 .. v9}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createTransferMessageBody(Lorg/ton/api/pk/PrivateKeyEd25519;III[Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/cell/Cell;

    move-result-object v1

    .line 158
    sget-object v2, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    .line 11
    sget-object v4, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v4, v1, v10}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 158
    invoke-virtual {v2, v10, v1}, Lorg/ton/block/Either$Companion;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/ton/block/Either;

    move-result-object v1

    .line 159
    new-instance v2, Lorg/ton/block/Message;

    invoke-direct {v2, v3, v0, v1}, Lorg/ton/block/Message;-><init>(Lorg/ton/block/CommonMsgInfo;Lorg/ton/block/Maybe;Lorg/ton/block/Either;)V

    return-object v2
.end method

.method public final loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/client/LiteClient;",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            "Lorg/ton/block/AddrStd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;

    iget v1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;

    invoke-direct {v0, p0, p4}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;-><init>(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    iput v3, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$2;->label:I

    invoke-virtual {p1, p3, p2, v0}, Lorg/ton/lite/client/LiteClient;->getAccountState(Lorg/ton/block/AddrStd;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 121
    :cond_3
    :goto_1
    check-cast p4, Lorg/ton/lite/client/internal/FullAccountState;

    .line 127
    new-instance p1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p4}, Lorg/ton/lite/client/internal/FullAccountState;->account()Lorg/ton/tlb/CellRef;

    move-result-object p2

    invoke-interface {p2}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lorg/ton/block/AccountInfo;

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    check-cast p2, Lorg/ton/block/AccountInfo;

    goto :goto_2

    :cond_4
    move-object p2, p4

    :goto_2
    if-nez p2, :cond_5

    return-object p4

    :cond_5
    invoke-direct {p1, p2}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;-><init>(Lorg/ton/block/AccountInfo;)V

    return-object p1
.end method

.method public final loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/client/LiteClient;",
            "Lorg/ton/block/AddrStd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;

    iget v1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;

    invoke-direct {v0, p0, p3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;-><init>(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 115
    iget v2, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lorg/ton/block/AddrStd;

    iget-object p1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lorg/ton/lite/client/LiteClient;

    iget-object v2, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 116
    iput-object p0, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    invoke-static {p1, p3, v0, v4, v5}, Lorg/ton/lite/client/LiteClient;->getLastBlockId$default(Lorg/ton/lite/client/LiteClient;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 115
    :goto_1
    check-cast p3, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 117
    iput-object v5, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    invoke-virtual {v2, p1, p3, p2, v0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method
