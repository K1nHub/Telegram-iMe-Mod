package org.ton.api.adnl;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.Json;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: AdnlAddress.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AdnlAddressUdp implements AdnlAddress {
    public static final Companion Companion = new Companion(null);

    /* renamed from: ip */
    private final int f2025ip;
    private final int port;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdnlAddressUdp) {
            AdnlAddressUdp adnlAddressUdp = (AdnlAddressUdp) obj;
            return this.f2025ip == adnlAddressUdp.f2025ip && this.port == adnlAddressUdp.port;
        }
        return false;
    }

    public int hashCode() {
        return (this.f2025ip * 31) + this.port;
    }

    public AdnlAddressUdp(int i, int i2) {
        this.f2025ip = i;
        this.port = i2;
    }

    public /* synthetic */ AdnlAddressUdp(int i, int i2, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, AdnlAddressUdp$$serializer.INSTANCE.getDescriptor());
        }
        this.f2025ip = i2;
        this.port = i3;
    }

    public static final /* synthetic */ void write$Self(AdnlAddressUdp adnlAddressUdp, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, adnlAddressUdp.getIp());
        compositeEncoder.encodeIntElement(serialDescriptor, 1, adnlAddressUdp.getPort());
    }

    public int getIp() {
        return this.f2025ip;
    }

    public int getPort() {
        return this.port;
    }

    /* compiled from: AdnlAddress.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<AdnlAddressUdp> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("adnl.address.udp ip:int port:int = adnl.Address", null, 2, null);
        }

        public final KSerializer<AdnlAddressUdp> serializer() {
            return AdnlAddressUdp$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, AdnlAddressUdp value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeInt(value.getIp());
            writer.writeInt(value.getPort());
        }

        @Override // org.ton.p045tl.TlDecoder
        public AdnlAddressUdp decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new AdnlAddressUdp(reader.readInt(), reader.readInt());
        }
    }

    public String toString() {
        Json.Default r0 = Json.Default;
        r0.getSerializersModule();
        return r0.encodeToString(Companion.serializer(), this);
    }
}
