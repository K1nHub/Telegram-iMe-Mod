package org.ton.boc;

import io.ktor.utils.p032io.core.ByteReadPacketExtensionsKt;
import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.StringsKt;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.ton.cell.Cell;
import org.ton.crypto.HexKt;
/* compiled from: BagOfCells.kt */
/* loaded from: classes6.dex */
public interface BagOfCells extends Iterable<Cell>, KMappedMarker {
    public static final Companion Companion = Companion.$$INSTANCE;

    List<Cell> getRoots();

    byte[] toByteArray();

    /* compiled from: BagOfCells.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* renamed from: of */
        public final BagOfCells m34of(Iterable<? extends Cell> roots) {
            List list;
            Intrinsics.checkNotNullParameter(roots, "roots");
            list = CollectionsKt___CollectionsKt.toList(roots);
            return new CachedBagOfCells(list);
        }

        /* renamed from: of */
        public final BagOfCells m32of(Cell... roots) {
            List list;
            Intrinsics.checkNotNullParameter(roots, "roots");
            list = ArraysKt___ArraysKt.toList(roots);
            return new CachedBagOfCells(list);
        }

        public final BagOfCells read(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            final byte[] readBytes = StringsKt.readBytes(input);
            ByteBuffer wrap = ByteBuffer.wrap(readBytes, 0, readBytes.length);
            Intrinsics.checkNotNullExpressionValue(wrap, "wrap(array, offset, length)");
            return BagOfCellsUtilsKt.readBagOfCell(ByteReadPacketExtensionsKt.ByteReadPacket(wrap, new Function1<ByteBuffer, Unit>() { // from class: org.ton.boc.BagOfCells$Companion$read$$inlined$ByteReadPacket$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(ByteBuffer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                    invoke2(byteBuffer);
                    return Unit.INSTANCE;
                }
            }));
        }

        /* renamed from: of */
        public final BagOfCells m33of(final byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            try {
                ByteBuffer wrap = ByteBuffer.wrap(byteArray, 0, byteArray.length);
                Intrinsics.checkNotNullExpressionValue(wrap, "wrap(array, offset, length)");
                return read(ByteReadPacketExtensionsKt.ByteReadPacket(wrap, new Function1<ByteBuffer, Unit>() { // from class: org.ton.boc.BagOfCells$Companion$of$$inlined$ByteReadPacket$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(ByteBuffer it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                        invoke2(byteBuffer);
                        return Unit.INSTANCE;
                    }
                }));
            } catch (Exception e) {
                throw new IllegalArgumentException("Can't load BoC: (" + byteArray.length + ") " + HexKt.hex(byteArray), e);
            }
        }
    }
}
