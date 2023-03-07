.class public Lorg/bouncycastle/util/Properties;
.super Ljava/lang/Object;


# static fields
.field private static final threadProperties:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lorg/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private static fetchProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/Properties$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isOverrideSet(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "true"

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method
