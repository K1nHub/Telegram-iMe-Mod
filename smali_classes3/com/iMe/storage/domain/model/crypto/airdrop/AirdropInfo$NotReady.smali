.class public final Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;
.super Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;
.source "AirdropInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotReady"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
