package org.ton.api.tonnode;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: TonNodeBlockId.kt */
/* loaded from: classes6.dex */
public interface TonNodeBlockId {
    public static final Companion Companion = Companion.$$INSTANCE;

    int getSeqno();

    long getShard();

    int getWorkchain();

    boolean isMasterchain();

    boolean isValid();

    /* compiled from: TonNodeBlockId.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static boolean isMasterchain(TonNodeBlockId tonNodeBlockId) {
            return tonNodeBlockId.getWorkchain() == -1;
        }

        public static boolean isValid(TonNodeBlockId tonNodeBlockId) {
            return tonNodeBlockId.getWorkchain() != Integer.MIN_VALUE;
        }

        public static boolean isValidFull(TonNodeBlockId tonNodeBlockId) {
            return tonNodeBlockId.isValid() && tonNodeBlockId.getShard() != 0 && (tonNodeBlockId.getShard() & 7) <= 0 && (!tonNodeBlockId.isMasterchain() || tonNodeBlockId.getShard() == Long.MIN_VALUE);
        }
    }

    /* compiled from: TonNodeBlockId.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<TonNodeBlockId> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ TonNodeBlockIdTlbConstructor $$delegate_0 = TonNodeBlockIdTlbConstructor.INSTANCE;

        @Override // org.ton.p044tl.TlDecoder
        public TonNodeBlockId decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p044tl.TlDecoder
        public TonNodeBlockId decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p044tl.TlDecoder
        public TonNodeBlockId decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(Output output, TonNodeBlockId value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, TonNodeBlockId value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(Output output, TonNodeBlockId value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(TlWriter writer, TonNodeBlockId value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public byte[] encodeToByteArray(TonNodeBlockId value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
        }

        /* renamed from: of */
        public final TonNodeBlockId m47of(int i, long j, int i2) {
            return new TonNodeBlockIdImpl(i, j, i2);
        }
    }
}
