package org.ton.api.adnl;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: AdnlIdShort.kt */
/* loaded from: classes6.dex */
public interface AdnlIdShort extends Comparable<AdnlIdShort> {
    public static final Companion Companion = Companion.$$INSTANCE;

    byte[] getId();

    /* compiled from: AdnlIdShort.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<AdnlIdShort> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ AdnlIdShortTlConstructor $$delegate_0 = AdnlIdShortTlConstructor.INSTANCE;

        @Override // org.ton.p044tl.TlDecoder
        public AdnlIdShort decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p044tl.TlDecoder
        public AdnlIdShort decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p044tl.TlDecoder
        public AdnlIdShort decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(Output output, AdnlIdShort value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, AdnlIdShort value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(Output output, AdnlIdShort value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(TlWriter writer, AdnlIdShort value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public byte[] encodeToByteArray(AdnlIdShort value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
        }

        /* renamed from: of */
        public final AdnlIdShort m50of(byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            return new AdnlIdShortImpl(byteArray);
        }
    }
}
