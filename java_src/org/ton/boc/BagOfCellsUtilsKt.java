package org.ton.boc;

import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.InputLittleEndianKt;
import io.ktor.utils.p032io.core.InputPrimitivesKt;
import io.ktor.utils.p032io.core.Output;
import io.ktor.utils.p032io.core.OutputKt;
import io.ktor.utils.p032io.core.OutputLittleEndianKt;
import io.ktor.utils.p032io.core.OutputPrimitivesKt;
import io.ktor.utils.p032io.core.StringsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.UShort;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.GlobalScope;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellDescriptor;
import org.ton.crypto.Crc32JvmKt;
/* compiled from: BagOfCellsUtils.kt */
/* loaded from: classes6.dex */
public final class BagOfCellsUtilsKt {
    private static final int readInt(Input input, int i) {
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return (UByte.m1952constructorimpl(input.readByte()) & 255) | ((UByte.m1952constructorimpl(input.readByte()) & 255) << 16) | ((UByte.m1952constructorimpl(input.readByte()) & 255) << 8);
                }
                return UInt.m1974constructorimpl(InputPrimitivesKt.readInt(input));
            }
            return UShort.m2018constructorimpl(InputPrimitivesKt.readShort(input)) & 65535;
        }
        return UByte.m1952constructorimpl(input.readByte()) & 255;
    }

    public static final BagOfCells readBagOfCell(ByteReadPacket byteReadPacket) {
        Object runBlocking$default;
        ByteReadPacket byteReadPacket2 = byteReadPacket;
        Intrinsics.checkNotNullParameter(byteReadPacket2, "<this>");
        int readInt = InputPrimitivesKt.readInt(byteReadPacket);
        boolean z = true;
        if (readInt != -1396463832) {
            if (readInt != -1242653582) {
                if (readInt == 1761568243) {
                    throw new NotImplementedError(null, 1, null);
                }
                throw new IllegalArgumentException("Unknown magic prefix: " + UStringsKt.m2060toStringV7xB4Y4(UInt.m1974constructorimpl(readInt), 16));
            }
            int readByte = byteReadPacket.readByte() & 255;
            boolean z2 = (readByte & 128) != 0;
            boolean z3 = (readByte & 64) != 0;
            boolean z4 = (readByte & 32) != 0;
            int i = readByte & 7;
            byte readByte2 = byteReadPacket.readByte();
            int readInt2 = readInt(byteReadPacket2, i);
            int readInt3 = readInt(byteReadPacket2, i);
            readInt(byteReadPacket2, i);
            readInt(byteReadPacket2, readByte2);
            int[] iArr = new int[readInt3];
            for (int i2 = 0; i2 < readInt3; i2++) {
                iArr[i2] = readInt(byteReadPacket2, i);
            }
            if (z2) {
                int[] iArr2 = new int[readInt2];
                int i3 = 0;
                int i4 = 0;
                while (i3 < readInt2) {
                    int readInt4 = readInt(byteReadPacket2, readByte2);
                    if (z4) {
                        readInt4 >>= 1;
                    }
                    if (!(i4 <= readInt4)) {
                        throw new IllegalStateException(("bag-of-cells error: offset of cell #" + i3 + " must be higher, than " + i4).toString());
                    }
                    iArr2[i3] = readInt4;
                    i3++;
                    i4 = readInt4;
                }
            }
            BitString[] bitStringArr = new BitString[readInt2];
            for (int i5 = 0; i5 < readInt2; i5++) {
                bitStringArr[i5] = BitString.Companion.m42of(Arrays.copyOf(new boolean[0], 0));
            }
            int[][] iArr3 = new int[readInt2];
            for (int i6 = 0; i6 < readInt2; i6++) {
                iArr3[i6] = new int[0];
            }
            CellDescriptor[] cellDescriptorArr = new CellDescriptor[readInt2];
            for (int i7 = 0; i7 < readInt2; i7++) {
                cellDescriptorArr[i7] = CellDescriptor.Companion.fromBytes((byte) 0, (byte) 0);
            }
            int i8 = 0;
            while (i8 < readInt2) {
                CellDescriptor fromBytes = CellDescriptor.Companion.fromBytes(byteReadPacket.readByte(), byteReadPacket.readByte());
                if (fromBytes.getHasHashes()) {
                    byteReadPacket2.discardExact(fromBytes.getHashCount() * 32);
                    byteReadPacket2.discardExact(fromBytes.getHashCount() * 2);
                }
                byte[] readBytes = StringsKt.readBytes(byteReadPacket2, fromBytes.getDataLength());
                bitStringArr[i8] = BitString.Companion.m43of(readBytes, fromBytes.isAligned() ? fromBytes.getDataLength() * 8 : findAugmentTag(readBytes));
                int referenceCount = fromBytes.getReferenceCount();
                int[] iArr4 = new int[referenceCount];
                int i9 = 0;
                while (i9 < referenceCount) {
                    int readInt5 = readInt(byteReadPacket2, i);
                    if (!(readInt5 > i8 ? z : false)) {
                        throw new IllegalStateException(("bag-of-cells error: reference #" + i9 + " of cell #" + i8 + " is to cell #" + readInt5 + " with smaller index").toString());
                    }
                    if (!(readInt5 < readInt2)) {
                        throw new IllegalStateException(("bag-of-cells error: reference #" + i9 + " of cell #" + i8 + " is to non-existent cell #" + readInt5 + ", only " + readInt2 + " cells are defined").toString());
                    }
                    iArr4[i9] = readInt5;
                    i9++;
                    byteReadPacket2 = byteReadPacket;
                    z = true;
                }
                iArr3[i8] = iArr4;
                cellDescriptorArr[i8] = fromBytes;
                i8++;
                byteReadPacket2 = byteReadPacket;
                z = true;
            }
            CompletableDeferred[] completableDeferredArr = new CompletableDeferred[readInt2];
            for (int i10 = 0; i10 < readInt2; i10++) {
                completableDeferredArr[i10] = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            }
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new BagOfCellsUtilsKt$readBagOfCell$3(readInt2, completableDeferredArr, bitStringArr, iArr3, cellDescriptorArr, null), 3, null);
            if (z3) {
                InputLittleEndianKt.readIntLittleEndian(byteReadPacket);
            }
            ArrayList arrayList = new ArrayList(readInt3);
            for (int i11 = 0; i11 < readInt3; i11++) {
                runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new BagOfCellsUtilsKt$readBagOfCell$roots$1$1(completableDeferredArr, iArr[i11], null), 1, null);
                arrayList.add((Cell) runBlocking$default);
            }
            return BagOfCellsKt.BagOfCells(arrayList);
        }
        throw new NotImplementedError(null, 1, null);
    }

    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.internal.DefaultConstructorMarker, io.ktor.utils.io.pool.ObjectPool] */
    private static final byte[] serializeBagOfCells(BagOfCells bagOfCells, boolean z, boolean z2, boolean z3, int i) {
        List list;
        int collectionSizeOrDefault;
        ?? r0 = 0;
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        try {
            list = CollectionsKt___CollectionsKt.toList(bagOfCells);
            int size = list.size();
            int size2 = bagOfCells.getRoots().size();
            int i2 = 0;
            while (size >= (1 << (i2 << 3))) {
                i2++;
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList<ByteReadPacket> arrayList = new ArrayList(collectionSizeOrDefault);
            int i3 = 0;
            for (Object obj : list) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Cell cell = (Cell) obj;
                BytePacketBuilder bytePacketBuilder2 = new BytePacketBuilder(r0, 1, r0);
                CellDescriptor descriptor = cell.getDescriptor();
                byte component1 = descriptor.component1();
                byte component2 = descriptor.component2();
                bytePacketBuilder2.writeByte(component1);
                bytePacketBuilder2.writeByte(component2);
                OutputKt.writeFully$default(bytePacketBuilder2, cell.getBits().toByteArray(((byte) (component2 & 1)) != 0), 0, 0, 6, null);
                for (Cell cell2 : cell.getRefs()) {
                    writeInt(bytePacketBuilder2, list.indexOf(cell2), i2);
                }
                arrayList.add(bytePacketBuilder2.build());
                i3 = i4;
                r0 = 0;
            }
            ArrayList arrayList2 = new ArrayList();
            int i5 = 0;
            for (ByteReadPacket byteReadPacket : arrayList) {
                arrayList2.add(Integer.valueOf(i5));
                i5 += (int) byteReadPacket.getRemaining();
            }
            int i6 = 0;
            while (i5 >= (1 << (i6 << 3))) {
                i6++;
            }
            OutputPrimitivesKt.writeInt(bytePacketBuilder, -1242653582);
            int i7 = z ? 128 : 0;
            if (z2) {
                i7 |= 64;
            }
            if (z3) {
                i7 |= 32;
            }
            bytePacketBuilder.writeByte((byte) (i7 | i | i2));
            bytePacketBuilder.writeByte((byte) i6);
            writeInt(bytePacketBuilder, size, i2);
            writeInt(bytePacketBuilder, size2, i2);
            writeInt(bytePacketBuilder, 0, i2);
            writeInt(bytePacketBuilder, i5, i6);
            for (Cell cell3 : bagOfCells.getRoots()) {
                writeInt(bytePacketBuilder, list.indexOf(cell3), i2);
            }
            if (z) {
                int i8 = 0;
                for (Object obj2 : arrayList) {
                    int i9 = i8 + 1;
                    if (i8 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    ByteReadPacket byteReadPacket2 = (ByteReadPacket) obj2;
                    Object obj3 = arrayList2.get(i8);
                    Intrinsics.checkNotNullExpressionValue(obj3, "sizeIndex[index]");
                    writeInt(bytePacketBuilder, ((Number) obj3).intValue(), i6);
                    i8 = i9;
                }
            }
            for (ByteReadPacket byteReadPacket3 : arrayList) {
                OutputKt.writeFully$default(bytePacketBuilder, StringsKt.readBytes$default(byteReadPacket3, 0, 1, null), 0, 0, 6, null);
            }
            return StringsKt.readBytes$default(bytePacketBuilder.build(), 0, 1, null);
        } catch (Throwable th) {
            bytePacketBuilder.release();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object createCell(int i, CompletableDeferred<Cell>[] completableDeferredArr, BitString[] bitStringArr, int[][] iArr, CellDescriptor[] cellDescriptorArr, Continuation<? super Boolean> continuation) {
        return CoroutineScopeKt.coroutineScope(new BagOfCellsUtilsKt$createCell$2(bitStringArr, i, iArr, completableDeferredArr, cellDescriptorArr, null), continuation);
    }

    public static final void writeBagOfCells(Output output, BagOfCells bagOfCells, boolean z, boolean z2, boolean z3, int i) {
        Intrinsics.checkNotNullParameter(output, "<this>");
        Intrinsics.checkNotNullParameter(bagOfCells, "bagOfCells");
        byte[] serializeBagOfCells = serializeBagOfCells(bagOfCells, z, z2, z3, i);
        if (z2) {
            int crc32c$default = Crc32JvmKt.crc32c$default(serializeBagOfCells, 0, 0, 6, null);
            OutputKt.writeFully$default(output, serializeBagOfCells, 0, 0, 6, null);
            OutputLittleEndianKt.writeIntLittleEndian(output, crc32c$default);
            return;
        }
        OutputKt.writeFully$default(output, serializeBagOfCells, 0, 0, 6, null);
    }

    private static final void writeInt(Output output, int i, int i2) {
        if (i2 == 1) {
            output.writeByte((byte) i);
        } else if (i2 == 2) {
            OutputPrimitivesKt.writeShort(output, (short) i);
        } else if (i2 == 3) {
            output.writeByte((byte) (i >> 16));
            OutputPrimitivesKt.writeShort(output, (short) i);
        } else {
            OutputPrimitivesKt.writeInt(output, i);
        }
    }

    private static final int findAugmentTag(byte[] bArr) {
        int lastIndex;
        byte b;
        if (bArr.length == 0) {
            return 0;
        }
        int length = bArr.length * 8;
        lastIndex = ArraysKt___ArraysKt.getLastIndex(bArr);
        while (true) {
            int i = lastIndex - 1;
            b = bArr[lastIndex];
            if (b != 0) {
                break;
            }
            length -= 8;
            lastIndex = i;
        }
        int i2 = 1;
        for (int i3 = 1; (b & i3) == 0; i3 <<= 1) {
            i2++;
        }
        return length - i2;
    }
}
