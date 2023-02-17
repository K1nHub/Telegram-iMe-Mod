.class public final synthetic Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;->INSTANCE:Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lj$/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/fork/models/backup/TopicBackup;

    invoke-static {p1}, Lorg/fork/controller/BackupController;->$r8$lambda$kkqJNeeI6ea5MYIOKnxXgkkksI8(Lorg/fork/models/backup/TopicBackup;)Z

    move-result p1

    return p1
.end method
