package org.ton.api.adnl.message;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: AdnlMessageAnswer.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AdnlMessageAnswer {
    public static final Companion Companion = new Companion(null);
    private final byte[] answer;
    private final BitString queryId;

    public String toString() {
        return "AdnlMessageAnswer(queryId=" + this.queryId + ", answer=" + Arrays.toString(this.answer) + ')';
    }

    public /* synthetic */ AdnlMessageAnswer(int i, BitString bitString, byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, AdnlMessageAnswer$$serializer.INSTANCE.getDescriptor());
        }
        this.queryId = bitString;
        this.answer = bArr;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public AdnlMessageAnswer(BitString queryId, byte[] answer) {
        Intrinsics.checkNotNullParameter(queryId, "queryId");
        Intrinsics.checkNotNullParameter(answer, "answer");
        this.queryId = queryId;
        this.answer = answer;
        if (!(queryId.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static final /* synthetic */ void write$Self(AdnlMessageAnswer adnlMessageAnswer, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, adnlMessageAnswer.queryId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ByteArraySerializer.INSTANCE, adnlMessageAnswer.answer);
    }

    public final BitString getQueryId() {
        return this.queryId;
    }

    public final byte[] getAnswer() {
        return this.answer;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdnlMessageAnswer(byte[] queryId, byte[] answer) {
        this(BitString.Companion.m43of(queryId, queryId.length * 8), answer);
        Intrinsics.checkNotNullParameter(queryId, "queryId");
        Intrinsics.checkNotNullParameter(answer, "answer");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdnlMessageAnswer) {
            AdnlMessageAnswer adnlMessageAnswer = (AdnlMessageAnswer) obj;
            return Intrinsics.areEqual(this.queryId, adnlMessageAnswer.queryId) && Arrays.equals(this.answer, adnlMessageAnswer.answer);
        }
        return false;
    }

    public int hashCode() {
        return (this.queryId.hashCode() * 31) + Arrays.hashCode(this.answer);
    }

    /* compiled from: AdnlMessageAnswer.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<AdnlMessageAnswer> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("adnl.message.answer query_id:int256 answer:bytes = adnl.Message", null, 2, null);
        }

        public final KSerializer<AdnlMessageAnswer> serializer() {
            return AdnlMessageAnswer$$serializer.INSTANCE;
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, AdnlMessageAnswer value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeRaw(BitString.DefaultImpls.toByteArray$default(value.getQueryId(), false, 1, null));
            TlWriter.writeBytes$default(writer, value.getAnswer(), 0, 0, 6, (Object) null);
        }

        @Override // org.ton.p044tl.TlDecoder
        public AdnlMessageAnswer decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new AdnlMessageAnswer(reader.readRaw(32), reader.readBytes());
        }
    }
}
