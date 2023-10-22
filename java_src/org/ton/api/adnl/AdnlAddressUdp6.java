package org.ton.api.adnl;

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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: AdnlAddress.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public final class AdnlAddressUdp6 implements AdnlAddress {
    public static final Companion Companion = new Companion(null);

    /* renamed from: ip */
    private final byte[] f2014ip;
    private final int port;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdnlAddressUdp6) {
            AdnlAddressUdp6 adnlAddressUdp6 = (AdnlAddressUdp6) obj;
            return Intrinsics.areEqual(this.f2014ip, adnlAddressUdp6.f2014ip) && this.port == adnlAddressUdp6.port;
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f2014ip) * 31) + this.port;
    }

    public String toString() {
        return "AdnlAddressUdp6(ip=" + Arrays.toString(this.f2014ip) + ", port=" + this.port + ')';
    }

    public /* synthetic */ AdnlAddressUdp6(int i, byte[] bArr, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, AdnlAddressUdp6$$serializer.INSTANCE.getDescriptor());
        }
        this.f2014ip = bArr;
        this.port = i2;
    }

    public AdnlAddressUdp6(byte[] ip, int i) {
        Intrinsics.checkNotNullParameter(ip, "ip");
        this.f2014ip = ip;
        this.port = i;
    }

    public static final /* synthetic */ void write$Self(AdnlAddressUdp6 adnlAddressUdp6, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ByteArraySerializer.INSTANCE, adnlAddressUdp6.getIp());
        compositeEncoder.encodeIntElement(serialDescriptor, 1, adnlAddressUdp6.getPort());
    }

    public byte[] getIp() {
        return this.f2014ip;
    }

    public int getPort() {
        return this.port;
    }

    /* compiled from: AdnlAddress.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<AdnlAddressUdp6> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("adnl.address.udp6 ip:int128 port:int = adnl.Address", null, 2, null);
        }

        public final KSerializer<AdnlAddressUdp6> serializer() {
            return AdnlAddressUdp6$$serializer.INSTANCE;
        }

        @Override // org.ton.p044tl.TlDecoder
        public AdnlAddressUdp6 decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new AdnlAddressUdp6(reader.readRaw(16), reader.readInt());
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, AdnlAddressUdp6 value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeRaw(value.getIp());
            writer.writeInt(value.getPort());
        }
    }
}
