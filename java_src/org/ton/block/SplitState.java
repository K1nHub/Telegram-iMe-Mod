package org.ton.block;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: SplitState.kt */
@Serializable
/* loaded from: classes6.dex */
public final class SplitState implements ShardState {
    public static final Companion Companion = new Companion(null);
    private final ShardStateUnsplit left;
    private final ShardStateUnsplit right;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SplitState) {
            SplitState splitState = (SplitState) obj;
            return Intrinsics.areEqual(this.left, splitState.left) && Intrinsics.areEqual(this.right, splitState.right);
        }
        return false;
    }

    public int hashCode() {
        return (this.left.hashCode() * 31) + this.right.hashCode();
    }

    public /* synthetic */ SplitState(int i, ShardStateUnsplit shardStateUnsplit, ShardStateUnsplit shardStateUnsplit2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, SplitState$$serializer.INSTANCE.getDescriptor());
        }
        this.left = shardStateUnsplit;
        this.right = shardStateUnsplit2;
    }

    public SplitState(ShardStateUnsplit left, ShardStateUnsplit right) {
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(right, "right");
        this.left = left;
        this.right = right;
    }

    public static final /* synthetic */ void write$Self(SplitState splitState, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        ShardStateUnsplit$$serializer shardStateUnsplit$$serializer = ShardStateUnsplit$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, shardStateUnsplit$$serializer, splitState.left);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, shardStateUnsplit$$serializer, splitState.right);
    }

    public final ShardStateUnsplit getLeft() {
        return this.left;
    }

    public final ShardStateUnsplit getRight() {
        return this.right;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: SplitState.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<SplitState> {
        private final /* synthetic */ SplitStateTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public SplitState loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public SplitState loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, SplitState value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<SplitState> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = SplitStateTlbConstructor.INSTANCE;
        }

        public final KSerializer<SplitState> serializer() {
            return SplitState$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("split_state");
        open.field(TtmlNode.LEFT, this.left);
        open.field(TtmlNode.RIGHT, this.right);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
