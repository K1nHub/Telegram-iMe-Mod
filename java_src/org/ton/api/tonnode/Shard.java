package org.ton.api.tonnode;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellSlice;
/* compiled from: Shard.kt */
/* loaded from: classes6.dex */
public final class Shard {
    public static final Companion Companion = new Companion(null);

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m5239constructorimpl(long j) {
        return j;
    }

    /* compiled from: Shard.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean containsShard(long j, long j2) {
            return ((j ^ j2) & (((~(((~j) + 1) & j)) + 1) << 1)) == 0;
        }

        public final long extractShard(BitString bits) {
            List<? extends Cell> emptyList;
            Intrinsics.checkNotNullParameter(bits, "bits");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return CellSlice.Companion.m31of(bits, emptyList).mo5388loadUInt64sVKNKU();
        }

        private Companion() {
        }
    }

    static {
        m5239constructorimpl(Long.MIN_VALUE);
    }
}
