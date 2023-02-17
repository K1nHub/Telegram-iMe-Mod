.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;->INSTANCE:Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->$r8$lambda$7Gr1MZb8A50Rlg5vnp_wemt4rVk(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
