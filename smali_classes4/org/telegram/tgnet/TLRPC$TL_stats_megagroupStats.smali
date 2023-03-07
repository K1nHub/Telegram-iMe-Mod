.class public Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x108006ea


# instance fields
.field public actions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public members:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

.field public members_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public messages:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

.field public messages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public new_members_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

.field public posters:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

.field public top_admins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;",
            ">;"
        }
    .end annotation
.end field

.field public top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

.field public top_inviters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;",
            ">;"
        }
    .end annotation
.end field

.field public top_posters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field public viewers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

.field public weekdays_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;
    .locals 1

    .line 100
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_stats_megagroupStats"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;-><init>()V

    .line 108
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 113
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    .line 114
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    .line 115
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    .line 116
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->viewers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    .line 117
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->posters:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    .line 118
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 119
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 120
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 121
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 122
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 123
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->actions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 124
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 125
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    .line 126
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const-string v1, "wrong Vector magic, got %x"

    const v2, 0x1cb5c415

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 135
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    .line 139
    :cond_2
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v2, :cond_5

    if-nez p2, :cond_4

    return-void

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_7

    .line 150
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    .line 154
    :cond_6
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 159
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_b

    .line 165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;

    move-result-object v6

    if-nez v6, :cond_a

    return-void

    .line 169
    :cond_a
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 171
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v2, :cond_d

    if-nez p2, :cond_c

    return-void

    .line 174
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_3
    if-ge v4, v0, :cond_f

    .line 180
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 184
    :cond_e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 189
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 191
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 192
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 193
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->viewers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->posters:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 195
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 196
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 197
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 199
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 200
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->actions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 202
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const v0, 0x1cb5c415

    .line 203
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 204
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 205
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 207
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 210
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 211
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 213
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 216
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 217
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 219
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_3
    if-ge v2, v0, :cond_3

    .line 225
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
