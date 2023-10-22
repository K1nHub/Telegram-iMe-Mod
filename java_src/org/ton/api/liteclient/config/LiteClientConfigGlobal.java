package org.ton.api.liteclient.config;

import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.dht.DhtNodes;
import org.ton.api.dht.config.DhtConfigGlobal;
import org.ton.api.dht.config.DhtConfigGlobal$$serializer;
import org.ton.api.liteserver.LiteServerDesc;
import org.ton.api.liteserver.LiteServerDesc$$serializer;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.validator.config.ValidatorConfigGlobal;
import org.ton.api.validator.config.ValidatorConfigGlobal$$serializer;
/* compiled from: LiteClientConfigGlobal.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteClientConfigGlobal {
    private final DhtConfigGlobal dht;
    private final Collection<LiteServerDesc> liteServers;
    private final ValidatorConfigGlobal validator;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new ArrayListSerializer(LiteServerDesc$$serializer.INSTANCE), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteClientConfigGlobal) {
            LiteClientConfigGlobal liteClientConfigGlobal = (LiteClientConfigGlobal) obj;
            return Intrinsics.areEqual(this.dht, liteClientConfigGlobal.dht) && Intrinsics.areEqual(this.liteServers, liteClientConfigGlobal.liteServers) && Intrinsics.areEqual(this.validator, liteClientConfigGlobal.validator);
        }
        return false;
    }

    public int hashCode() {
        return (((this.dht.hashCode() * 31) + this.liteServers.hashCode()) * 31) + this.validator.hashCode();
    }

    public String toString() {
        return "LiteClientConfigGlobal(dht=" + this.dht + ", liteServers=" + this.liteServers + ", validator=" + this.validator + ')';
    }

    /* compiled from: LiteClientConfigGlobal.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<LiteClientConfigGlobal> serializer() {
            return LiteClientConfigGlobal$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ LiteClientConfigGlobal(int i, DhtConfigGlobal dhtConfigGlobal, Collection collection, ValidatorConfigGlobal validatorConfigGlobal, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i & 2)) {
            PluginExceptionsKt.throwMissingFieldException(i, 2, LiteClientConfigGlobal$$serializer.INSTANCE.getDescriptor());
        }
        this.dht = (i & 1) == 0 ? new DhtConfigGlobal((DhtNodes) null, 0, 0, 7, (DefaultConstructorMarker) null) : dhtConfigGlobal;
        this.liteServers = collection;
        if ((i & 4) == 0) {
            this.validator = new ValidatorConfigGlobal((TonNodeBlockIdExt) null, (TonNodeBlockIdExt) null, (Collection) null, 7, (DefaultConstructorMarker) null);
        } else {
            this.validator = validatorConfigGlobal;
        }
    }

    public static final /* synthetic */ void write$Self(LiteClientConfigGlobal liteClientConfigGlobal, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || !Intrinsics.areEqual(liteClientConfigGlobal.dht, new DhtConfigGlobal((DhtNodes) null, 0, 0, 7, (DefaultConstructorMarker) null))) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, DhtConfigGlobal$$serializer.INSTANCE, liteClientConfigGlobal.dht);
        }
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], liteClientConfigGlobal.liteServers);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || !Intrinsics.areEqual(liteClientConfigGlobal.validator, new ValidatorConfigGlobal((TonNodeBlockIdExt) null, (TonNodeBlockIdExt) null, (Collection) null, 7, (DefaultConstructorMarker) null))) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 2, ValidatorConfigGlobal$$serializer.INSTANCE, liteClientConfigGlobal.validator);
        }
    }

    public final Collection<LiteServerDesc> getLiteServers() {
        return this.liteServers;
    }

    public final ValidatorConfigGlobal getValidator() {
        return this.validator;
    }
}
