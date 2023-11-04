package org.ton.api.adnl.message;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.ByteStringSerializer;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: AdnlMessageQuery.kt */
@Polymorphic
@Serializable
/* loaded from: classes6.dex */
public final class AdnlMessageQuery {
    public static final Companion Companion = new Companion(null);
    private final byte[] query;
    private final ByteString queryId;

    public String toString() {
        return "AdnlMessageQuery(queryId=" + this.queryId + ", query=" + Arrays.toString(this.query) + ')';
    }

    public /* synthetic */ AdnlMessageQuery(int i, ByteString byteString, byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, AdnlMessageQuery$$serializer.INSTANCE.getDescriptor());
        }
        this.queryId = byteString;
        this.query = bArr;
    }

    public AdnlMessageQuery(ByteString queryId, byte[] query) {
        Intrinsics.checkNotNullParameter(queryId, "queryId");
        Intrinsics.checkNotNullParameter(query, "query");
        this.queryId = queryId;
        this.query = query;
    }

    public static final /* synthetic */ void write$Self(AdnlMessageQuery adnlMessageQuery, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ByteStringSerializer.INSTANCE, adnlMessageQuery.queryId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ByteArraySerializer.INSTANCE, adnlMessageQuery.query);
    }

    public final ByteString getQueryId() {
        return this.queryId;
    }

    public final byte[] getQuery() {
        return this.query;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdnlMessageQuery) {
            AdnlMessageQuery adnlMessageQuery = (AdnlMessageQuery) obj;
            return Intrinsics.areEqual(this.queryId, adnlMessageQuery.queryId) && Arrays.equals(this.query, adnlMessageQuery.query);
        }
        return false;
    }

    public int hashCode() {
        return (this.queryId.hashCode() * 31) + Arrays.hashCode(this.query);
    }

    /* compiled from: AdnlMessageQuery.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<AdnlMessageQuery> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("adnl.message.query query_id:int256 query:bytes = adnl.Message", null, 2, null);
        }

        public final KSerializer<AdnlMessageQuery> serializer() {
            return AdnlMessageQuery$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter output, AdnlMessageQuery value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            output.writeRaw(value.getQueryId());
            TlWriter.writeBytes$default(output, value.getQuery(), 0, 0, 6, (Object) null);
        }

        @Override // org.ton.p045tl.TlDecoder
        public AdnlMessageQuery decode(TlReader input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return new AdnlMessageQuery(input.readByteString(32), input.readBytes());
        }
    }
}
