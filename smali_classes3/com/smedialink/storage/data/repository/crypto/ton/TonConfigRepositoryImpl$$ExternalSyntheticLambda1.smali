.class public final synthetic Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->$r8$lambda$SEeswyZTWX9Y4YmyP3MEJLnrdqU(Lcom/smedialink/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
