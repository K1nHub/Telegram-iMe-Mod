package com.iMe.storage.domain.model.crypto.send;

import com.iMe.storage.domain.model.crypto.send.TonTransactionPayload;
import io.ktor.util.Base64Kt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.ton.boc.BagOfCellsKt;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
/* compiled from: TonTransactionPayload.kt */
/* loaded from: classes3.dex */
public abstract class TonTransactionPayload {
    public /* synthetic */ TonTransactionPayload(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract Cell getCell();

    private TonTransactionPayload() {
    }

    /* compiled from: TonTransactionPayload.kt */
    /* loaded from: classes3.dex */
    public static final class Message extends TonTransactionPayload {
        private final boolean isUnencrypted;
        private final String message;

        public final String getMessage() {
            return this.message;
        }

        public final boolean isUnencrypted() {
            return this.isUnencrypted;
        }

        public Message(String str, boolean z) {
            super(null);
            this.message = str;
            this.isUnencrypted = z;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TonTransactionPayload
        public Cell getCell() {
            String str = this.message;
            if (str == null || str.length() == 0) {
                return null;
            }
            return CellBuilder.Companion.createCell(new Function1<CellBuilder, Unit>() { // from class: com.iMe.storage.domain.model.crypto.send.TonTransactionPayload$Message$cell$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder) {
                    invoke2(cellBuilder);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(CellBuilder createCell) {
                    byte[] encodeToByteArray;
                    List<Byte> take;
                    byte[] byteArray;
                    Intrinsics.checkNotNullParameter(createCell, "$this$createCell");
                    createCell.storeUInt(0, 32);
                    encodeToByteArray = StringsKt__StringsJVMKt.encodeToByteArray(TonTransactionPayload.Message.this.getMessage());
                    take = ArraysKt___ArraysKt.take(encodeToByteArray, 1024);
                    byteArray = CollectionsKt___CollectionsKt.toByteArray(take);
                    createCell.storeBytes(byteArray);
                }
            });
        }
    }

    /* compiled from: TonTransactionPayload.kt */
    /* loaded from: classes3.dex */
    public static final class Raw extends TonTransactionPayload {
        private final String data;

        public final String getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Raw(String data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TonTransactionPayload
        public Cell getCell() {
            return (Cell) CollectionsKt.firstOrNull(BagOfCellsKt.BagOfCells(Base64Kt.decodeBase64Bytes(this.data)));
        }
    }
}
