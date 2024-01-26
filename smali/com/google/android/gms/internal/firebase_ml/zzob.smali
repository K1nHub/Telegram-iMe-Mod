.class public final Lcom/google/android/gms/internal/firebase_ml/zzob;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static final zzatg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zzob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 198
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "SharedPrefManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzatg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V
    .locals 0

    .line 195
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzatg:Ljava/util/Map;

    monitor-enter p1

    .line 196
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzbt(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzor;
    .locals 3

    if-nez p0, :cond_0

    .line 190
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    return-object p0

    .line 191
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzbu(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 193
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Invalid model type "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "SharedPrefManager"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    return-object p0
.end method

.method public static zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;
    .locals 3

    const-string v0, "FirebaseApp can not be null"

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzatg:Ljava/util/Map;

    monitor-enter v1

    .line 7
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzob;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzob;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzoe;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoe;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/FirebaseApp;->addLifecycleEventListener(Lcom/google/firebase/FirebaseAppLifecycleListener;)V

    .line 10
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzob;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/Long;
    .locals 5

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "downloading_model_id_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 42
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 44
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    .line 45
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 47
    monitor-exit p0

    return-object p1

    .line 48
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(JLcom/google/android/gms/internal/firebase_ml/zzpe;)V
    .locals 9

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmn()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->getModelHash()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmo()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p3

    .line 163
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 164
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.firebase.ml.internal"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "downloading_model_hash_%s_%s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 166
    invoke-virtual {v7}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x1

    aput-object v0, v6, v7

    .line 167
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "downloading_model_id_%s_%s"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 169
    invoke-virtual {v8}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    aput-object v0, v6, v7

    .line 170
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "downloading_model_type_%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 172
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "downloading_begin_time_%s_%s"

    new-array p3, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 173
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    aput-object v0, p3, v7

    .line 174
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 176
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;J)V
    .locals 5

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 102
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "model_first_use_time_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 104
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 106
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 7

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 147
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_model_hash_%s_%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 149
    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 150
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 151
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "current_model_type_%s_%s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 153
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    .line 155
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    .line 157
    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 180
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bad_hash_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 182
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 183
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 184
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "app_version"

    .line 186
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 187
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaf(Z)V
    .locals 5

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 18
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logging_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "vision"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 20
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 21
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzag(Z)V
    .locals 5

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 32
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logging_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "model"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 34
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 35
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "downloading_model_hash_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 56
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 57
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 58
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 59
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 60
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbs(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzor;
    .locals 4

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "downloading_model_type_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 52
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzbt(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_model_hash_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 64
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 66
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 67
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Lcom/google/android/gms/internal/firebase_ml/zzor;
    .locals 5

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 69
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_model_type_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 71
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 73
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzbt(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 78
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bad_hash_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 80
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 81
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 82
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 83
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)J
    .locals 5

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "downloading_begin_time_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 90
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 92
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 93
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)J
    .locals 5

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 95
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "model_first_use_time_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 97
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 99
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 100
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V
    .locals 8

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzb(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 112
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.firebase.ml.internal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "downloading_model_id_%s_%s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 114
    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 116
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "downloading_model_hash_%s_%s"

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 118
    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 119
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 120
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "downloading_model_type_%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 122
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "downloading_begin_time_%s_%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 123
    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 124
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 125
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "model_first_use_time_%s_%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 127
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 128
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    .line 129
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzi(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V
    .locals 7

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 134
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_model_hash_%s_%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 136
    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 138
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_model_type_%s_%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 140
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 141
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    .line 142
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzlr()Z
    .locals 5

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "logging_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "vision"

    aput-object v4, v3, v2

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 15
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzls()Z
    .locals 5

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 26
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "logging_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "model"

    aput-object v4, v3, v2

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 28
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 29
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzlt()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzob;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 85
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.ml.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_version"

    const/4 v2, 0x0

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
