.class public Lio/ktor/utils/io/ByteBufferChannel;
.super Ljava/lang/Object;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lio/ktor/utils/io/ByteChannel;
.implements Lio/ktor/utils/io/ByteReadChannel;
.implements Lio/ktor/utils/io/ByteWriteChannel;
.implements Lio/ktor/utils/io/LookAheadSuspendSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteBufferChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n+ 2 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 8 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 9 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,2407:1\n2106#1,2:2432\n457#1,4:2439\n464#1,2:2444\n462#1:2446\n457#1,4:2447\n464#1,2:2452\n462#1:2454\n457#1,4:2459\n464#1,2:2464\n462#1:2466\n457#1,4:2468\n464#1,2:2473\n462#1:2475\n843#1,4:2477\n457#1,4:2481\n464#1,2:2486\n462#1:2488\n847#1,15:2489\n843#1,4:2504\n457#1,4:2508\n464#1,2:2513\n462#1:2515\n847#1,15:2516\n843#1,4:2531\n457#1,4:2535\n464#1,2:2540\n462#1:2542\n847#1,15:2543\n843#1,4:2558\n457#1,4:2562\n464#1,2:2567\n462#1:2569\n847#1,15:2570\n843#1,4:2585\n457#1,4:2589\n464#1,2:2594\n462#1:2596\n847#1,15:2597\n843#1,4:2612\n457#1,4:2616\n464#1,2:2621\n462#1:2623\n847#1,15:2624\n457#1,4:2639\n464#1,2:2644\n462#1:2646\n958#1:2647\n960#1:2649\n1030#1,7:2650\n923#1,2:2657\n1037#1,2:2659\n925#1:2661\n1039#1:2662\n961#1,76:2663\n923#1,2:2739\n1037#1,2:2741\n925#1:2743\n1039#1:2744\n1024#1,3:2745\n973#1,32:2748\n1027#1:2780\n966#1:2781\n958#1:2782\n960#1:2784\n1030#1,7:2785\n923#1,2:2792\n1037#1,2:2794\n925#1:2796\n1039#1:2797\n961#1,76:2798\n923#1,2:2874\n1037#1,2:2876\n925#1:2878\n1039#1:2879\n1024#1,3:2880\n973#1,32:2883\n1027#1:2915\n966#1:2916\n958#1:2917\n960#1:2919\n1030#1,7:2920\n923#1,2:2927\n1037#1,2:2929\n925#1:2931\n1039#1:2932\n961#1,76:2933\n923#1,2:3009\n1037#1,2:3011\n925#1:3013\n1039#1:3014\n1024#1,3:3015\n973#1,32:3018\n1027#1:3050\n966#1:3051\n958#1:3052\n960#1:3054\n1030#1,7:3055\n923#1,2:3062\n1037#1,2:3064\n925#1:3066\n1039#1:3067\n961#1,76:3068\n923#1,2:3144\n1037#1,2:3146\n925#1:3148\n1039#1:3149\n1024#1,3:3150\n973#1,32:3153\n1027#1:3185\n966#1:3186\n1030#1,7:3187\n923#1,2:3194\n1037#1,2:3196\n925#1:3198\n1039#1:3199\n973#1,32:3200\n1013#1,24:3232\n923#1,2:3256\n1037#1,2:3258\n925#1:3260\n1039#1:3261\n1024#1,3:3262\n973#1,32:3265\n1027#1:3297\n987#1,18:3298\n1030#1,7:3316\n923#1,2:3323\n1037#1,2:3325\n925#1:3327\n1039#1:3328\n973#1,32:3329\n923#1,3:3361\n438#1:3366\n439#1,7:3368\n457#1,4:3377\n464#1,2:3382\n462#1:3384\n447#1,8:3385\n438#1:3393\n439#1,7:3395\n447#1,8:3403\n438#1:3411\n439#1,7:3413\n447#1,8:3422\n438#1:3430\n439#1,7:3432\n447#1,8:3440\n438#1:3448\n439#1,16:3450\n438#1:3466\n439#1,16:3468\n438#1:3484\n439#1,16:3486\n457#1,4:3502\n464#1,2:3507\n462#1:3509\n457#1,4:3511\n464#1,2:3516\n462#1:3518\n457#1,4:3519\n464#1,2:3524\n462#1:3526\n438#1:3529\n439#1,16:3531\n457#1,4:3547\n464#1,2:3552\n462#1:3554\n457#1,4:3555\n464#1,2:3560\n462#1:3562\n457#1,4:3565\n464#1,2:3570\n462#1:3572\n2193#1,3:3624\n2197#1,3:3628\n2337#1,3:3632\n2341#1:3636\n2193#1,3:3637\n2197#1,3:3641\n2342#1,5:3644\n2193#1,7:3649\n2193#1,3:3656\n2197#1,3:3660\n2337#1,3:3675\n2341#1,6:3679\n12#2:2408\n18#2:2409\n18#2:2411\n12#2:2412\n18#2:2417\n12#2:2425\n12#2:2427\n12#2:2438\n12#2:2443\n12#2:2451\n12#2:2457\n12#2:2463\n12#2:2472\n12#2:2485\n12#2:2512\n12#2:2539\n12#2:2566\n12#2:2593\n12#2:2620\n12#2:2643\n18#2:3375\n18#2:3376\n12#2:3381\n18#2:3402\n18#2:3421\n18#2:3439\n12#2:3506\n12#2:3510\n12#2:3515\n12#2:3523\n12#2:3551\n12#2:3559\n12#2:3563\n12#2:3564\n12#2:3569\n12#2:3573\n12#2:3618\n12#2:3619\n12#2:3620\n12#2:3621\n12#2:3622\n12#2:3623\n12#2:3627\n12#2:3631\n12#2:3640\n12#2:3659\n18#2:3663\n1#3:2410\n1#3:2648\n1#3:2783\n1#3:2918\n1#3:3053\n1#3:3367\n1#3:3394\n1#3:3412\n1#3:3431\n1#3:3449\n1#3:3467\n1#3:3485\n1#3:3530\n1#3:3635\n1#3:3678\n186#4,4:2413\n186#4,4:2418\n186#4,3:2422\n189#4:2426\n186#4,4:2428\n164#4,4:2434\n71#5:2455\n71#5:2458\n66#5:3420\n71#5:3585\n71#5:3607\n355#6:2456\n355#6:2467\n355#6:2476\n350#6:3364\n350#6:3365\n42#7:3527\n42#7:3528\n12#8,7:3574\n19#8,4:3592\n12#8,7:3596\n19#8,4:3614\n470#9,4:3581\n474#9,6:3586\n470#9,4:3603\n474#9,6:3608\n314#10,11:3664\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n375#1:2432,2\n472#1:2439,4\n472#1:2444,2\n472#1:2446\n506#1:2447,4\n506#1:2452,2\n506#1:2454\n533#1:2459,4\n533#1:2464,2\n533#1:2466\n631#1:2468,4\n631#1:2473,2\n631#1:2475\n816#1:2477,4\n816#1:2481,4\n816#1:2486,2\n816#1:2488\n816#1:2489,15\n820#1:2504,4\n820#1:2508,4\n820#1:2513,2\n820#1:2515\n820#1:2516,15\n824#1:2531,4\n824#1:2535,4\n824#1:2540,2\n824#1:2542\n824#1:2543,15\n828#1:2558,4\n828#1:2562,4\n828#1:2567,2\n828#1:2569\n828#1:2570,15\n832#1:2585,4\n832#1:2589,4\n832#1:2594,2\n832#1:2596\n832#1:2597,15\n836#1:2612,4\n836#1:2616,4\n836#1:2621,2\n836#1:2623\n836#1:2624,15\n846#1:2639,4\n846#1:2644,2\n846#1:2646\n930#1:2647\n930#1:2649\n930#1:2650,7\n930#1:2657,2\n930#1:2659,2\n930#1:2661\n930#1:2662\n930#1:2663,76\n930#1:2739,2\n930#1:2741,2\n930#1:2743\n930#1:2744\n930#1:2745,3\n930#1:2748,32\n930#1:2780\n930#1:2781\n934#1:2782\n934#1:2784\n934#1:2785,7\n934#1:2792,2\n934#1:2794,2\n934#1:2796\n934#1:2797\n934#1:2798,76\n934#1:2874,2\n934#1:2876,2\n934#1:2878\n934#1:2879\n934#1:2880,3\n934#1:2883,32\n934#1:2915\n934#1:2916\n938#1:2917\n938#1:2919\n938#1:2920,7\n938#1:2927,2\n938#1:2929,2\n938#1:2931\n938#1:2932\n938#1:2933,76\n938#1:3009,2\n938#1:3011,2\n938#1:3013\n938#1:3014\n938#1:3015,3\n938#1:3018,32\n938#1:3050\n938#1:3051\n942#1:3052\n942#1:3054\n942#1:3055,7\n942#1:3062,2\n942#1:3064,2\n942#1:3066\n942#1:3067\n942#1:3068,76\n942#1:3144,2\n942#1:3146,2\n942#1:3148\n942#1:3149\n942#1:3150,3\n942#1:3153,32\n942#1:3185\n942#1:3186\n960#1:3187,7\n960#1:3194,2\n960#1:3196,2\n960#1:3198\n960#1:3199\n963#1:3200,32\n964#1:3232,24\n964#1:3256,2\n964#1:3258,2\n964#1:3260\n964#1:3261\n964#1:3262,3\n964#1:3265,32\n964#1:3297\n977#1:3298,18\n1023#1:3316,7\n1023#1:3323,2\n1023#1:3325,2\n1023#1:3327\n1023#1:3328\n1026#1:3329,32\n1036#1:3361,3\n1192#1:3366\n1192#1:3368,7\n1205#1:3377,4\n1205#1:3382,2\n1205#1:3384\n1192#1:3385,8\n1318#1:3393\n1318#1:3395,7\n1318#1:3403,8\n1348#1:3411\n1348#1:3413,7\n1348#1:3422,8\n1372#1:3430\n1372#1:3432,7\n1372#1:3440,8\n1451#1:3448\n1451#1:3450,16\n1521#1:3466\n1521#1:3468,16\n1531#1:3484\n1531#1:3486,16\n1636#1:3502,4\n1636#1:3507,2\n1636#1:3509\n1671#1:3511,4\n1671#1:3516,2\n1671#1:3518\n1689#1:3519,4\n1689#1:3524,2\n1689#1:3526\n1750#1:3529\n1750#1:3531,16\n1771#1:3547,4\n1771#1:3552,2\n1771#1:3554\n1792#1:3555,4\n1792#1:3560,2\n1792#1:3562\n1898#1:3565,4\n1898#1:3570,2\n1898#1:3572\n2205#1:3624,3\n2205#1:3628,3\n2221#1:3632,3\n2221#1:3636\n2221#1:3637,3\n2221#1:3641,3\n2221#1:3644,5\n2221#1:3649,7\n2227#1:3656,3\n2227#1:3660,3\n2322#1:3675,3\n2322#1:3679,6\n93#1:2408\n96#1:2409\n179#1:2411\n180#1:2412\n267#1:2417\n300#1:2425\n307#1:2427\n460#1:2438\n472#1:2443\n506#1:2451\n525#1:2457\n533#1:2463\n631#1:2472\n816#1:2485\n820#1:2512\n824#1:2539\n828#1:2566\n832#1:2593\n836#1:2620\n846#1:2643\n1194#1:3375\n1198#1:3376\n1205#1:3381\n1334#1:3402\n1360#1:3421\n1383#1:3439\n1636#1:3506\n1637#1:3510\n1671#1:3515\n1689#1:3523\n1771#1:3551\n1792#1:3559\n1854#1:3563\n1876#1:3564\n1898#1:3569\n1926#1:3573\n2135#1:3618\n2154#1:3619\n2160#1:3620\n2175#1:3621\n2180#1:3622\n2195#1:3623\n2205#1:3627\n2217#1:3631\n2221#1:3640\n2227#1:3659\n2254#1:3663\n930#1:2648\n934#1:2783\n938#1:2918\n942#1:3053\n1192#1:3367\n1318#1:3394\n1348#1:3412\n1372#1:3431\n1451#1:3449\n1521#1:3467\n1531#1:3485\n1750#1:3530\n2221#1:3635\n2322#1:3678\n222#1:2413,4\n274#1:2418,4\n290#1:2422,3\n290#1:2426\n314#1:2428,4\n396#1:2434,4\n507#1:2455\n500#1:2458\n1352#1:3420\n2068#1:3585\n2083#1:3607\n525#1:2456\n601#1:2467\n717#1:2476\n1093#1:3364\n1116#1:3365\n1721#1:3527\n1737#1:3528\n2065#1:3574,7\n2065#1:3592,4\n2080#1:3596,7\n2080#1:3614,4\n2067#1:3581,4\n2067#1:3586,6\n2082#1:3603,4\n2082#1:3608,6\n2307#1:3664,11\n*E\n"
.end annotation


# static fields
.field private static final synthetic _closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic _writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closed:Ljava/lang/Object;

.field private volatile synthetic _readOp:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;

.field volatile synthetic _writeOp:Ljava/lang/Object;

.field private volatile attachedJob:Lkotlinx/coroutines/Job;

.field private final autoFlush:Z

.field private volatile joining:Lio/ktor/utils/io/internal/JoiningState;

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
            ">;"
        }
    .end annotation
.end field

.field private readPosition:I

.field private final readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/CancellableReusableContinuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedSize:I

.field private volatile totalBytesRead:J

.field private volatile totalBytesWritten:J

.field private writePosition:I

.field private final writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/CancellableReusableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final writeSuspension:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile writeSuspensionSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Object;

    const-class v1, Lio/ktor/utils/io/ByteBufferChannel;

    new-instance v2, Lio/ktor/utils/io/ByteBufferChannel$Companion;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/ktor/utils/io/ByteBufferChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_closed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_readOp"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_writeOp"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->autoFlush:Z

    .line 27
    iput-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 28
    iput p3, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    .line 40
    sget-object p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_closed:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp:Ljava/lang/Object;

    .line 1585
    new-instance p1, Lio/ktor/utils/io/internal/ReadSessionImpl;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/ReadSessionImpl;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    .line 1823
    new-instance p1, Lio/ktor/utils/io/internal/WriteSessionImpl;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/WriteSessionImpl;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    .line 2189
    new-instance p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2262
    new-instance p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2267
    new-instance p1, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspension:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/ktor/utils/io/pool/ObjectPool;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 27
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferObjectPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x8

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V

    return-void
.end method

.method public static final synthetic access$awaitAtLeastSuspend(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->awaitAtLeastSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$awaitFreeSpaceOrDelegate(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->awaitFreeSpaceOrDelegate(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flushImpl(Lio/ktor/utils/io/ByteBufferChannel;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->flushImpl(I)V

    return-void
.end method

.method public static final synthetic access$getClosed(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ClosedElement;
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWriteOp(Lio/ktor/utils/io/ByteBufferChannel;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWriteSuspensionSize$p(Lio/ktor/utils/io/ByteBufferChannel;)I
    .locals 0

    .line 24
    iget p0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspensionSize:I

    return p0
.end method

.method public static final synthetic access$readFullySuspend(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readFullySuspend(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readPacketSuspend(Lio/ktor/utils/io/ByteBufferChannel;ILio/ktor/utils/io/core/BytePacketBuilder;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->readPacketSuspend(ILio/ktor/utils/io/core/BytePacketBuilder;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readSuspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readSuspendLoop(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendLoop(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    return-void
.end method

.method public static final synthetic access$setAttachedJob$p(Lio/ktor/utils/io/ByteBufferChannel;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$shouldResumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->shouldResumeReadOp()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$writeFullySuspend(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeFullySuspend(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writePacketSuspend(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writePacketSuspend(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeSuspend(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeSuspend(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeSuspendBlock(Lio/ktor/utils/io/ByteBufferChannel;ILkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendBlock(ILkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result p0

    return p0
.end method

.method private final awaitAtLeastSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1866
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1867
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitAtLeastSuspend$1;->label:I

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1868
    invoke-direct {p1}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1869
    invoke-direct {p1}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    .line 1871
    :cond_4
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final awaitFreeSpaceOrDelegate(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1507
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

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
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->I$0:I

    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1508
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->I$0:I

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 1509
    :goto_1
    iget-object p3, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz p3, :cond_6

    invoke-direct {v2, v2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object p3

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lio/ktor/utils/io/ByteBufferChannel;->write(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1510
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    .locals 2

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 897
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    add-int/2addr v0, p3

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    .line 898
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeRead(I)V

    .line 899
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesRead()J

    move-result-wide p1

    int-to-long v0, p3

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesRead$ktor_io(J)V

    .line 900
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    return-void

    .line 895
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    .locals 2

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 889
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    add-int/2addr v0, p3

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    .line 890
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeWrite(I)V

    .line 891
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide p1

    int-to-long v0, p3

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    return-void

    .line 887
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final carryIndex(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 435
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, p1

    :cond_0
    return p2
.end method

.method private final ensureClosedJoined(Lio/ktor/utils/io/internal/JoiningState;)V
    .locals 3

    .line 1291
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1292
    iput-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    .line 1294
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->getDelegateClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 1296
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->complete()V

    return-void

    .line 1305
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v1

    invoke-direct {v1}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    .line 1306
    instance-of v2, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    if-nez v2, :cond_3

    instance-of v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 1308
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 1311
    :cond_4
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    goto :goto_3

    .line 1309
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v1

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->close(Ljava/lang/Throwable;)Z

    .line 1314
    :goto_3
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/JoiningState;->complete()V

    return-void
.end method

.method private final flushImpl(I)V
    .locals 4

    .line 166
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/JoiningState;->getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 172
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 173
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v0, v1, :cond_1

    return-void

    .line 177
    :cond_1
    iget-object v2, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    .line 178
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 179
    iget-object v2, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 18
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 180
    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    .line 186
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    .line 189
    :cond_2
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-lt v2, p1, :cond_4

    if-eqz v0, :cond_3

    .line 190
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    if-ne p1, v1, :cond_4

    .line 191
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    :cond_4
    return-void
.end method

.method private final getClosed()Lio/ktor/utils/io/internal/ClosedElement;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_closed:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/internal/ClosedElement;

    return-object v0
.end method

.method private final getReadOp()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method private final getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    return-object v0
.end method

.method private final getWriteOp()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method static synthetic lookAheadSuspend$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1785
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :pswitch_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1786
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p0, Lio/ktor/utils/io/internal/FailedLookAhead;

    invoke-direct {p0, p2}, Lio/ktor/utils/io/internal/FailedLookAhead;-><init>(Ljava/lang/Throwable;)V

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    return-object p2

    .line 1787
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    sget-object v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne p2, v2, :cond_4

    .line 1788
    sget-object p0, Lio/ktor/utils/io/internal/TerminatedLookAhead;->INSTANCE:Lio/ktor/utils/io/internal/TerminatedLookAhead;

    const/4 p2, 0x2

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    return-object p2

    .line 1791
    :cond_4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 457
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_4

    .line 458
    :cond_5
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    :try_start_2
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v2, :cond_6

    .line 464
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 465
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    goto :goto_4

    .line 1793
    :cond_6
    :try_start_3
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, p0

    move-object v3, p1

    move-object p1, v5

    move-object p0, p2

    move-object p2, v2

    move-object v2, p0

    :goto_3
    :try_start_4
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 464
    invoke-direct {p1}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 465
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    move-object p2, v2

    move-object p1, v3

    move v3, v4

    move-object p0, v5

    :goto_4
    if-nez v3, :cond_13

    .line 1798
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    new-instance p0, Lio/ktor/utils/io/internal/FailedLookAhead;

    invoke-direct {p0, v2}, Lio/ktor/utils/io/internal/FailedLookAhead;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$4:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_5
    return-object p2

    .line 1799
    :cond_9
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    sget-object v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v2, v4, :cond_b

    .line 1800
    sget-object p0, Lio/ktor/utils/io/internal/TerminatedLookAhead;->INSTANCE:Lio/ktor/utils/io/internal/TerminatedLookAhead;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$4:Ljava/lang/Object;

    const/4 p2, 0x5

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_6
    return-object p2

    .line 1804
    :cond_b
    :try_start_5
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v0, Lio/ktor/utils/io/ByteBufferChannel$lookAheadSuspend$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    move-object v0, p0

    move-object p0, p2

    move-object p2, p1

    move-object p1, p0

    .line 1785
    :goto_7
    :try_start_6
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1806
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p0

    .line 1808
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getIdle()Z

    move-result p2

    if-nez p2, :cond_f

    sget-object p2, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-eq p0, p2, :cond_f

    .line 1809
    instance-of p2, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    if-nez p2, :cond_d

    .line 1810
    instance-of p0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    if-eqz p0, :cond_e

    .line 1812
    :cond_d
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 1814
    :cond_e
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    :cond_f
    move-object p2, p1

    goto :goto_9

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 1806
    :goto_8
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    .line 1808
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getIdle()Z

    move-result p2

    if-nez p2, :cond_12

    sget-object p2, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-eq p1, p2, :cond_12

    .line 1809
    instance-of p2, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    if-nez p2, :cond_10

    .line 1810
    instance-of p1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    if-eqz p1, :cond_11

    .line 1812
    :cond_10
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 1814
    :cond_11
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    :cond_12
    throw p0

    .line 1820
    :cond_13
    :goto_9
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :catchall_3
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 464
    :goto_a
    invoke-direct {p1}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 465
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final newBuffer()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 2

    .line 2351
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 2352
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    return-object v0
.end method

.method private final prepareBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v2, :cond_3

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr v0, v1

    add-int/2addr p3, p2

    .line 210
    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 211
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 205
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readAsMuchAsPossible(Ljava/nio/ByteBuffer;)I
    .locals 7

    .line 457
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 458
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-nez v3, :cond_1

    goto :goto_1

    .line 474
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget v4, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr v3, v4

    .line 477
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-eqz v4, :cond_2

    .line 480
    iget v5, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    sub-int v6, v3, v5

    .line 483
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryReadAtMost(I)I

    move-result v4

    if-eqz v4, :cond_2

    add-int v6, v5, v4

    .line 486
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 487
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 488
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 490
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/ByteBufferChannel;->bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v4

    goto :goto_0

    .line 464
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 465
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    :goto_2
    return v1

    :catchall_0
    move-exception p1

    .line 464
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 465
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method private final readFullySuspend(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 575
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->I$0:I

    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 578
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 579
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readFullySuspend$1;->label:I

    invoke-direct {v2, v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move v4, p2

    move-object p2, p1

    move p1, v4

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 583
    invoke-direct {v2, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible(Ljava/nio/ByteBuffer;)I

    move-result p3

    add-int/2addr p1, p3

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    goto :goto_1

    .line 580
    :cond_4
    new-instance p1, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected EOF: expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " more bytes"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_5
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic readPacket$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 747
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 749
    sget-object p0, Lio/ktor/utils/io/core/ByteReadPacket;->Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket$Companion;->getEmpty()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0

    .line 751
    :cond_2
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 752
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    :goto_1
    if-lez p1, :cond_4

    .line 757
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 758
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, p1, :cond_3

    .line 759
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 762
    :cond_3
    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 765
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 766
    invoke-static {v0, v1}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 771
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 772
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->release()V

    .line 773
    throw p0

    :cond_4
    if-nez p1, :cond_5

    .line 777
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p0

    invoke-interface {p0, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 778
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0

    .line 780
    :cond_5
    invoke-direct {p0, p1, v0, v1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readPacketSuspend(ILio/ktor/utils/io/core/BytePacketBuilder;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final readPacketSuspend(ILio/ktor/utils/io/core/BytePacketBuilder;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 784
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->I$0:I

    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/core/BytePacketBuilder;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    :goto_1
    if-lez p1, :cond_5

    .line 789
    :try_start_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 790
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-le p4, p1, :cond_3

    .line 791
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 794
    :cond_3
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readPacketSuspend$1;->label:I

    invoke-virtual {v2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 796
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 797
    invoke-static {p2, p3}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    sub-int/2addr p1, p4

    goto :goto_1

    .line 802
    :cond_5
    invoke-virtual {p2}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 807
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    invoke-interface {p2, p3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 804
    :goto_3
    :try_start_2
    invoke-virtual {p3}, Lio/ktor/utils/io/core/Output;->release()V

    .line 805
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 807
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw p1
.end method

.method private final readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2153
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    const/4 v1, 0x1

    if-lt v0, p1, :cond_0

    .line 2154
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2156
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2157
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_3

    .line 2158
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 2159
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2161
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getReadOp()Lkotlin/coroutines/Continuation;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2162
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2161
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read operation is already in progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2157
    :cond_3
    invoke-static {p2}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_4
    if-ne p1, v1, :cond_5

    .line 2166
    invoke-direct {p0, v1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2169
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendLoop(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2226
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2193
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    .line 2195
    iget-object v2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge v2, p1, :cond_4

    .line 2197
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v2, :cond_3

    .line 2198
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2199
    sget-object v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq p2, v2, :cond_4

    instance-of p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-nez p2, :cond_4

    :cond_3
    move p2, v3

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_5

    .line 2228
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2232
    :cond_5
    :try_start_1
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    .line 2233
    iget-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2234
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->suspensionForSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2235
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->completeSuspendBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .line 2232
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_6

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    return-object p2

    :catchall_1
    move-exception p2

    move-object p1, p0

    :goto_3
    const/4 v0, 0x0

    .line 2238
    invoke-direct {p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->setReadOp(Lkotlin/coroutines/Continuation;)V

    .line 2240
    throw p2
.end method

.method private final readSuspendLoop(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2172
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->I$0:I

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 2174
    :cond_3
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt p2, p1, :cond_4

    .line 2175
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2177
    :cond_4
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 2178
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2179
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 2180
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt p2, p1, :cond_5

    move v3, v4

    .line 2181
    :cond_5
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getReadOp()Lkotlin/coroutines/Continuation;

    move-result-object p1

    if-nez p1, :cond_6

    .line 2182
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2181
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read operation is already in progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2178
    :cond_7
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2185
    :cond_8
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->I$0:I

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    invoke-direct {v2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 1

    .line 2356
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0, p1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method private final resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;
    .locals 1

    .line 912
    :cond_0
    invoke-direct {p1}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 916
    :cond_1
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/JoiningState;->getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object p1

    .line 917
    iget-object p2, p1, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-nez p2, :cond_0

    return-object p1
.end method

.method private final restoreStateAfterRead()V
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 187
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 188
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 315
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v4, :cond_1

    .line 316
    iget-object v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    .line 317
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    move-object v1, v0

    .line 321
    :cond_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v4

    .line 323
    instance-of v5, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v5, :cond_2

    .line 324
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v5

    if-ne v5, v3, :cond_2

    iget-object v3, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    .line 189
    :cond_2
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v4, v0, :cond_4

    .line 334
    check-cast v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 335
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    return-void

    .line 339
    :cond_4
    instance-of v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_5

    .line 340
    iget-object v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    iget-object v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    invoke-virtual {v3, p0, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    iget-object v0, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    .line 345
    check-cast v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 346
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    :cond_5
    return-void
.end method

.method private final resumeClosed(Ljava/lang/Throwable;)V
    .locals 4

    .line 2131
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2133
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2135
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2135
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2139
    :cond_2
    :goto_1
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_4

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez p1, :cond_3

    .line 2140
    new-instance p1, Lio/ktor/utils/io/ClosedWriteChannelException;

    const-string v1, "Byte channel was closed"

    invoke-direct {p1, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final resumeReadOp()V
    .locals 3

    .line 2096
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_2

    .line 2097
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 2099
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 2100
    :cond_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final resumeWriteOp()V
    .locals 4

    .line 2111
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2112
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2113
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v2, :cond_2

    .line 2114
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    .line 2115
    instance-of v3, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    if-nez v3, :cond_2

    .line 2116
    instance-of v3, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    if-nez v3, :cond_2

    .line 2117
    sget-object v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-eq v2, v3, :cond_2

    return-void

    .line 2123
    :cond_2
    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_3

    .line 2124
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final setReadOp(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    return-void
.end method

.method private final setupStateForRead()Ljava/nio/ByteBuffer;
    .locals 4

    .line 187
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 188
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 292
    sget-object v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 293
    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 294
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return-object v3

    .line 299
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 300
    :cond_6
    :goto_2
    iget-object v2, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-nez v2, :cond_7

    return-object v3

    .line 301
    :cond_7
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    .line 189
    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 307
    iget v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 307
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    return-object v0
.end method

.method private final shouldResumeReadOp()Z
    .locals 2

    .line 2244
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_1

    .line 2245
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    instance-of v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final suspensionForSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2193
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 2195
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_2

    .line 2197
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v1, :cond_1

    .line 2198
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2199
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq v0, v1, :cond_2

    instance-of v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    .line 2206
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2210
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2211
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2212
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2213
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2216
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v0

    .line 2217
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt v1, p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v3

    .line 2218
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2219
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2221
    :cond_7
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getReadOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v3

    :goto_3
    if-eqz v0, :cond_12

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2193
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 2195
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge v1, p1, :cond_a

    .line 2197
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v1, :cond_9

    .line 2198
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2199
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq v0, v1, :cond_a

    instance-of v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-nez v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v3

    :goto_5
    if-nez v0, :cond_d

    :cond_c
    move v2, v3

    goto :goto_8

    .line 3647
    :cond_d
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2221
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v4

    if-nez v4, :cond_10

    .line 2193
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v4

    .line 2195
    iget-object v5, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v5, v5, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge v5, p1, :cond_f

    .line 2197
    iget-object v5, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v5, :cond_e

    .line 2198
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 2199
    sget-object v5, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq v4, v5, :cond_f

    instance-of v4, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-nez v4, :cond_f

    :cond_e
    move v4, v2

    goto :goto_6

    :cond_f
    move v4, v3

    :goto_6
    if-eqz v4, :cond_10

    move v4, v2

    goto :goto_7

    :cond_10
    move v4, v3

    :goto_7
    if-nez v4, :cond_11

    .line 3648
    invoke-virtual {v0, p0, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_11
    :goto_8
    if-eqz v2, :cond_0

    .line 2223
    :goto_9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3634
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation is already in progress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final tryReleaseBuffer(Z)Z
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    .line 165
    :goto_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 166
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 397
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v4

    if-eqz v1, :cond_2

    if-eqz v4, :cond_0

    .line 401
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v0

    :goto_1
    if-nez v5, :cond_1

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    .line 402
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    move-object v1, v0

    .line 406
    :cond_2
    sget-object v5, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3

    return v6

    .line 407
    :cond_3
    sget-object v7, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v3, v7, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_7

    .line 408
    instance-of v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_7

    .line 409
    iget-object v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 410
    :cond_5
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->forceLockForRelease()V

    .line 411
    :cond_6
    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v1

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_a

    .line 415
    instance-of v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_a

    .line 416
    iget-object v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 417
    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v1

    .line 167
    :goto_2
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 426
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    if-ne p1, v5, :cond_9

    .line 427
    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    :cond_9
    return v6

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private final tryWritePacketPart(Lio/ktor/utils/io/core/ByteReadPacket;)I
    .locals 9

    .line 438
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 439
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 440
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 441
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v3

    .line 444
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v5

    if-nez v5, :cond_7

    .line 1751
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v5}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtMost(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 1753
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1754
    invoke-static {p1, v1}, Lio/ktor/utils/io/core/ByteBuffersKt;->readFully(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;)I

    .line 1755
    invoke-direct {v0, v1, v2, v5}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_3
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_5
    if-eq v0, p0, :cond_6

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v6

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_6
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    move p1, v5

    :goto_0
    return p1

    .line 444
    :cond_7
    :try_start_1
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 447
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_9
    if-eq v0, p0, :cond_a

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v5

    sub-long/2addr v5, v3

    add-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_a
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method static synthetic write$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$write$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$write$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1493
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->I$0:I

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    move p1, p0

    move-object p0, p2

    move-object p2, v4

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-lez p1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, p3

    :goto_1
    if-eqz v2, :cond_8

    const/16 v2, 0xff8

    if-gt p1, v2, :cond_4

    move p3, v3

    :cond_4
    if-eqz p3, :cond_7

    .line 1498
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable(ILkotlin/jvm/functions/Function1;)I

    move-result p3

    if-ltz p3, :cond_6

    .line 1505
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1503
    :cond_6
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lio/ktor/utils/io/ByteBufferChannel;->awaitFreeSpaceOrDelegate(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    .line 1495
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Min("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should\'nt be greater than (4088)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1494
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "min should be positive"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeAsMuchAsPossible(Ljava/nio/ByteBuffer;)I
    .locals 10

    .line 438
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 439
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 440
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v3

    iget-object v3, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 441
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v4

    .line 444
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move v7, v2

    .line 1323
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int v8, v6, v8

    if-eqz v8, :cond_5

    .line 1325
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3, v8}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtMost(I)I

    move-result v8

    if-eqz v8, :cond_5

    if-lez v8, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    move v9, v2

    :goto_1
    if-eqz v9, :cond_4

    .line 1329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1330
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/2addr v7, v8

    .line 1334
    iget v8, v0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    add-int/2addr v8, v7

    invoke-direct {v0, v1, v8}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 18
    iget v9, v3, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 1334
    invoke-direct {v0, v1, v8, v9}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    goto :goto_0

    :cond_4
    const-string p1, "Failed requirement."

    .line 1327
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_5
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1339
    invoke-direct {v0, v1, v3, v7}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_7
    if-eq v0, p0, :cond_8

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v1, v8

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_8
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    return v7

    .line 444
    :cond_9
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 447
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_b
    if-eq v0, p0, :cond_c

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_c
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method private final writeAsMuchAsPossible([BII)I
    .locals 9

    .line 438
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 439
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 440
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v3

    iget-object v3, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 441
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v4

    .line 444
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v6

    if-nez v6, :cond_9

    move v6, v2

    :goto_0
    sub-int v7, p3, v6

    .line 1376
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtMost(I)I

    move-result v7

    if-eqz v7, :cond_5

    if-lez v7, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v2

    :goto_1
    if-eqz v8, :cond_4

    add-int v8, p2, v6

    .line 1380
    invoke-virtual {v1, p1, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v7

    .line 1383
    iget v7, v0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    add-int/2addr v7, v6

    invoke-direct {v0, v1, v7}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 18
    iget v8, v3, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 1383
    invoke-direct {v0, v1, v7, v8}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    goto :goto_0

    :cond_4
    const-string p1, "Failed requirement."

    .line 1378
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1386
    :cond_5
    invoke-direct {v0, v1, v3, v6}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_7
    if-eq v0, p0, :cond_8

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide p1

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    sub-long/2addr v1, v4

    add-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_8
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    return v6

    .line 444
    :cond_9
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 447
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_b
    if-eq v0, p0, :cond_c

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide p2

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    sub-long/2addr v1, v4

    add-long/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_c
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method static synthetic writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "[BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1428
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 1429
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1430
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_1

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1084
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible(Ljava/nio/ByteBuffer;)I

    .line 1085
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1087
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "[BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1395
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_1

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 1401
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible([BII)I

    move-result v0

    if-eqz v0, :cond_2

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 1408
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1410
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeFullySuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1105
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 1106
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1107
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->label:I

    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 1109
    :cond_4
    :goto_2
    iget-object p2, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz p2, :cond_6

    invoke-direct {v2, v2, p2}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 v2, 0x0

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->label:I

    invoke-virtual {p2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1111
    :cond_6
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 1113
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final writeFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1413
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$1:I

    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$0:I

    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$1:Ljava/lang/Object;

    check-cast p3, [B

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    :goto_1
    if-lez p3, :cond_4

    .line 1418
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$1:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$0:I

    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$1:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move v4, p3

    move-object p3, p1

    move p1, v4

    :goto_2
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    add-int/2addr p2, p4

    sub-int/2addr p1, p4

    move-object v4, p3

    move p3, p1

    move-object p1, v4

    goto :goto_1

    .line 1423
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic writePacket$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1718
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_1

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1722
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->tryWritePacketPart(Lio/ktor/utils/io/core/ByteReadPacket;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1729
    :cond_2
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 1730
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_4

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1731
    :cond_4
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writePacketSuspend(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1733
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    .line 1725
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->release()V

    .line 1726
    throw p0
.end method

.method private final writePacketSuspend(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1735
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteReadPacket;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteReadPacket;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 42
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result p2

    xor-int/2addr p2, v4

    if-eqz p2, :cond_7

    .line 1738
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->label:I

    invoke-direct {v2, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 1740
    :cond_4
    :goto_2
    iget-object p2, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz p2, :cond_6

    invoke-direct {v2, v2, p2}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object p2

    if-eqz p2, :cond_6

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writePacketSuspend$1;->label:I

    invoke-virtual {p2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 1744
    :cond_5
    :goto_3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->release()V

    return-object p2

    .line 1741
    :cond_6
    :try_start_3
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->tryWritePacketPart(Lio/ktor/utils/io/core/ByteReadPacket;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1744
    :cond_7
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->release()V

    .line 1746
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1744
    :goto_4
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->release()V

    throw p2
.end method

.method private final writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2305
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->I$0:I

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 2306
    :cond_3
    :goto_1
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 314
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    .line 315
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {p2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 2308
    invoke-static {v2, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendBlock(Lio/ktor/utils/io/ByteBufferChannel;ILkotlinx/coroutines/CancellableContinuation;)V

    .line 323
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne p2, v1, :cond_3

    return-object v1

    .line 2312
    :cond_5
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2313
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1433
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$1:I

    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$0:I

    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p3, [B

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    move p3, p1

    move-object p1, v5

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 1435
    :cond_4
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$0:I

    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$1:I

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    .line 1437
    :cond_5
    :goto_1
    iget-object p4, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz p4, :cond_7

    invoke-direct {v2, v2, p4}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object p4

    if-eqz p4, :cond_7

    const/4 v2, 0x0

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    invoke-direct {p4, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p4

    .line 1439
    :cond_7
    invoke-direct {v2, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible([BII)I

    move-result p4

    if-lez p4, :cond_4

    .line 1440
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final writeSuspendBlock(ILkotlinx/coroutines/CancellableContinuation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2317
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2318
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2319
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    .line 2322
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v1, v2

    goto :goto_2

    .line 3683
    :cond_6
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2322
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3684
    invoke-virtual {v0, p0, p2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_7
    :goto_2
    if-eqz v1, :cond_0

    .line 2324
    :goto_3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->flushImpl(I)V

    .line 2326
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->shouldResumeReadOp()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2327
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    :cond_8
    return-void

    .line 3677
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation is already in progress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeSuspendPredicate(I)Z
    .locals 5

    .line 2248
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    .line 2249
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    .line 2250
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 2254
    iget-object v0, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 18
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    if-ge v0, p1, :cond_0

    .line 2254
    sget-object p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 2256
    :cond_2
    sget-object p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-eq v1, p1, :cond_0

    .line 2257
    instance-of p1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    if-nez p1, :cond_0

    .line 2258
    instance-of p1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    if-nez p1, :cond_0

    :goto_0
    return v3
.end method


# virtual methods
.method public attachJob(Lkotlinx/coroutines/Job;)V
    .locals 9

    const-string/jumbo v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 84
    :cond_0
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;

    invoke-direct {v6, p0}, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public final awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_9

    const/16 v2, 0xff8

    if-gt p1, v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_8

    .line 1854
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt v0, p1, :cond_4

    .line 1855
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getIdle()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    instance-of p1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    if-eqz p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    .line 1856
    :cond_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1860
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getIdle()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    instance-of v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 1861
    invoke-direct {p0, v1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1862
    :cond_6
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1860
    :cond_7
    :goto_1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->awaitAtLeastSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1852
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "atLeast parameter shouldn\'t be larger than max buffer size of 4088: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1851
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "atLeast parameter shouldn\'t be negative: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 162
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel has been cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 4

    .line 116
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 121
    sget-object v0, Lio/ktor/utils/io/internal/ClosedElement;->Companion:Lio/ktor/utils/io/internal/ClosedElement$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement$Companion;->getEmptyCause()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lio/ktor/utils/io/internal/ClosedElement;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/internal/ClosedElement;-><init>(Ljava/lang/Throwable;)V

    .line 126
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    .line 127
    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 131
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    .line 132
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    .line 133
    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    .line 136
    :cond_4
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->resumeClosed(Ljava/lang/Throwable;)V

    .line 138
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v0, v1, :cond_5

    .line 139
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->ensureClosedJoined(Lio/ktor/utils/io/internal/JoiningState;)V

    :cond_5
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 143
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_6

    invoke-static {v1, v3, v0, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 145
    :cond_6
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Throwable;)V

    .line 146
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Throwable;)V

    return v0

    .line 154
    :cond_7
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    new-instance v1, Lio/ktor/utils/io/ClosedWriteChannelException;

    const-string v2, "Byte channel was closed"

    invoke-direct {v1, v2}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Throwable;)V

    .line 157
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Object;)V

    return v0
.end method

.method public consumed(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1840
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 1841
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryReadExact(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez p1, :cond_1

    .line 1845
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-direct {p0, v1, v0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V

    :cond_1
    return-void

    .line 1842
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to consume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes: not enough available bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1838
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final currentState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 76
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x1

    .line 196
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->flushImpl(I)V

    return-void
.end method

.method public getAutoFlush()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->autoFlush:Z

    return v0
.end method

.method public getClosedCause()Ljava/lang/Throwable;
    .locals 1

    .line 113
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTotalBytesRead()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesRead:J

    return-wide v0
.end method

.method public getTotalBytesWritten()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesWritten:J

    return-wide v0
.end method

.method public isClosedForWrite()Z
    .locals 1

    .line 102
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->lookAheadSuspend$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final readFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 569
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 570
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 572
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readFullySuspend(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readPacket$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public request(II)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1875
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 1876
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 1877
    iget v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    add-int v3, p2, p1

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    return-object v4

    .line 1880
    :cond_0
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getIdle()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    if-nez v3, :cond_1

    instance-of v3, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    if-nez v3, :cond_1

    goto :goto_0

    .line 1885
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/2addr v2, p1

    .line 1887
    invoke-direct {p0, v0, v2}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result v2

    sub-int/2addr v1, p1

    .line 1888
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    .line 1890
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lt p1, p2, :cond_2

    move-object v4, v0

    :cond_2
    return-object v4

    .line 1881
    :cond_3
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v4

    .line 1882
    :cond_4
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->request(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final resolveChannelInstance$ktor_io()Lio/ktor/utils/io/ByteBufferChannel;
    .locals 1

    .line 904
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public final restoreStateAfterWrite$ktor_io()V
    .locals 5

    const/4 v0, 0x0

    .line 187
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 188
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 275
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->stopWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    .line 276
    instance-of v3, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 189
    :cond_1
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v2, v1, :cond_2

    .line 285
    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    :cond_2
    return-void
.end method

.method public setTotalBytesRead$ktor_io(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesRead:J

    return-void
.end method

.method public setTotalBytesWritten$ktor_io(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesWritten:J

    return-void
.end method

.method public final setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;
    .locals 7

    .line 215
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    move-object v0, v1

    .line 187
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 188
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 225
    iget-object v4, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    :cond_1
    return-object v1

    .line 230
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    .line 231
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 232
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 235
    :cond_4
    sget-object v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v3, v4, :cond_6

    if-nez v0, :cond_5

    .line 236
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->newBuffer()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    .line 237
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v5

    goto :goto_0

    .line 240
    :cond_6
    sget-object v5, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v3, v5, :cond_9

    if-eqz v0, :cond_7

    .line 241
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 242
    :cond_7
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_8

    return-object v1

    .line 243
    :cond_8
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 247
    :cond_9
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v5

    .line 189
    :goto_0
    sget-object v6, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-nez v2, :cond_c

    .line 259
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getWriteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v0, :cond_b

    if-nez v3, :cond_a

    const-string/jumbo v3, "old"

    .line 262
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v1, v3

    :goto_1
    if-eq v1, v4, :cond_b

    .line 263
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 267
    :cond_b
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    iget-object v1, v5, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 18
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 267
    invoke-direct {p0, v2, v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    return-object v2

    .line 253
    :cond_c
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 254
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    .line 256
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 216
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write operation is already in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteBufferChannel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryTerminate$ktor_io()Z
    .locals 2

    .line 382
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->tryReleaseBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->ensureClosedJoined(Lio/ktor/utils/io/internal/JoiningState;)V

    .line 388
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    .line 389
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2288
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2289
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2290
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2293
    :cond_2
    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspensionSize:I

    .line 2294
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_5

    .line 2295
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspension:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2299
    :cond_5
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2300
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspension:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->completeSuspendBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 2298
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public write(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->write$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeAvailable(ILkotlin/jvm/functions/Function1;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_15

    const/16 v2, 0xff8

    if-gt p1, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_14

    .line 438
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/JoiningState;

    if-eqz v2, :cond_2

    invoke-direct {p0, p0, v2}, Lio/ktor/utils/io/ByteBufferChannel;->resolveDelegation(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, p0

    .line 439
    :cond_3
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_4

    move p1, v1

    goto/16 :goto_4

    .line 440
    :cond_4
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v4

    iget-object v4, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 441
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v5

    .line 444
    :try_start_0
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v7

    if-nez v7, :cond_10

    .line 1452
    invoke-virtual {v4, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtLeast(I)I

    move-result p1

    if-gtz p1, :cond_5

    move v0, v1

    goto :goto_3

    .line 1464
    :cond_5
    iget v7, v2, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    invoke-direct {v2, v3, v7, p1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    .line 1466
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 1467
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    .line 1468
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-ne v8, p2, :cond_6

    move p2, v0

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    if-eqz p2, :cond_f

    .line 1471
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr p2, v7

    if-ltz p2, :cond_7

    move v1, v0

    :cond_7
    if-eqz v1, :cond_e

    if-ltz p2, :cond_d

    .line 1475
    invoke-direct {v2, v3, v4, p2}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V

    if-ge p2, p1, :cond_8

    sub-int/2addr p1, p2

    .line 1478
    invoke-virtual {v4, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    move v1, p2

    .line 447
    :goto_3
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_a
    if-eq v2, p0, :cond_b

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide p1

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v3

    sub-long/2addr v3, v5

    add-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_b
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    move p1, v1

    move v1, v0

    :goto_4
    if-nez v1, :cond_c

    const/4 p1, -0x1

    :cond_c
    return p1

    .line 1473
    :cond_d
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_e
    const-string p1, "Position has been moved backward: pushback is not supported"

    .line 1472
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    const-string p1, "Buffer limit modified"

    .line 1469
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 444
    :cond_10
    invoke-virtual {v7}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 447
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p2

    if-eqz p2, :cond_12

    :cond_11
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_12
    if-eq v2, p0, :cond_13

    .line 449
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v0

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v3

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 451
    :cond_13
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 452
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1

    .line 1446
    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Min("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") shouldn\'t be greater than 4088"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1445
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "min should be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writePacket$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
