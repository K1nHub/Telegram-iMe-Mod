package org.ton.api.dht.config;

import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.dht.DhtNodes;
import org.ton.api.dht.DhtNodes$$serializer;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: DhtConfigGlobal.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public final class DhtConfigGlobal {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    private final int f2030a;

    /* renamed from: k */
    private final int f2031k;
    private final DhtNodes staticNodes;

    public DhtConfigGlobal() {
        this((DhtNodes) null, 0, 0, 7, (DefaultConstructorMarker) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DhtConfigGlobal) {
            DhtConfigGlobal dhtConfigGlobal = (DhtConfigGlobal) obj;
            return Intrinsics.areEqual(this.staticNodes, dhtConfigGlobal.staticNodes) && this.f2031k == dhtConfigGlobal.f2031k && this.f2030a == dhtConfigGlobal.f2030a;
        }
        return false;
    }

    public int hashCode() {
        return (((this.staticNodes.hashCode() * 31) + this.f2031k) * 31) + this.f2030a;
    }

    public String toString() {
        return "DhtConfigGlobal(staticNodes=" + this.staticNodes + ", k=" + this.f2031k + ", a=" + this.f2030a + ')';
    }

    public /* synthetic */ DhtConfigGlobal(int i, DhtNodes dhtNodes, int i2, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, DhtConfigGlobal$$serializer.INSTANCE.getDescriptor());
        }
        this.staticNodes = (i & 1) == 0 ? new DhtNodes((Collection) null, 1, (DefaultConstructorMarker) null) : dhtNodes;
        if ((i & 2) == 0) {
            this.f2031k = 0;
        } else {
            this.f2031k = i2;
        }
        if ((i & 4) == 0) {
            this.f2030a = 0;
        } else {
            this.f2030a = i3;
        }
    }

    public DhtConfigGlobal(DhtNodes staticNodes, int i, int i2) {
        Intrinsics.checkNotNullParameter(staticNodes, "staticNodes");
        this.staticNodes = staticNodes;
        this.f2031k = i;
        this.f2030a = i2;
    }

    public static final /* synthetic */ void write$Self(DhtConfigGlobal dhtConfigGlobal, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || !Intrinsics.areEqual(dhtConfigGlobal.staticNodes, new DhtNodes((Collection) null, 1, (DefaultConstructorMarker) null))) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, DhtNodes$$serializer.INSTANCE, dhtConfigGlobal.staticNodes);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || dhtConfigGlobal.f2031k != 0) {
            compositeEncoder.encodeIntElement(serialDescriptor, 1, dhtConfigGlobal.f2031k);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || dhtConfigGlobal.f2030a != 0) {
            compositeEncoder.encodeIntElement(serialDescriptor, 2, dhtConfigGlobal.f2030a);
        }
    }

    public /* synthetic */ DhtConfigGlobal(DhtNodes dhtNodes, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? new DhtNodes((Collection) null, 1, (DefaultConstructorMarker) null) : dhtNodes, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2);
    }

    public final DhtNodes getStaticNodes() {
        return this.staticNodes;
    }

    public final int getK() {
        return this.f2031k;
    }

    public final int getA() {
        return this.f2030a;
    }

    /* compiled from: DhtConfigGlobal.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<DhtConfigGlobal> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("dht.config.global static_nodes:dht.nodes k:int a:int = dht.config.Global", null, 2, null);
        }

        public final KSerializer<DhtConfigGlobal> serializer() {
            return DhtConfigGlobal$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter output, DhtConfigGlobal value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            DhtNodes.Companion.encode(output, (TlWriter) value.getStaticNodes());
            output.writeInt(value.getK());
            output.writeInt(value.getA());
        }

        @Override // org.ton.p045tl.TlDecoder
        public DhtConfigGlobal decode(TlReader input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return new DhtConfigGlobal(DhtNodes.Companion.decode(input), input.readInt(), input.readInt());
        }
    }
}
