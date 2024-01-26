package org.ton.api.validator.config;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.tonnode.TonNodeBlockId;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: ValidatorConfigGlobal.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public final class ValidatorConfigGlobal {
    private final Collection<TonNodeBlockIdExt> hardforks;
    private final TonNodeBlockIdExt initBlock;
    private final TonNodeBlockIdExt zeroState;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new ArrayListSerializer(TonNodeBlockIdExt$$serializer.INSTANCE)};

    public ValidatorConfigGlobal() {
        this((TonNodeBlockIdExt) null, (TonNodeBlockIdExt) null, (Collection) null, 7, (DefaultConstructorMarker) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ValidatorConfigGlobal) {
            ValidatorConfigGlobal validatorConfigGlobal = (ValidatorConfigGlobal) obj;
            return Intrinsics.areEqual(this.zeroState, validatorConfigGlobal.zeroState) && Intrinsics.areEqual(this.initBlock, validatorConfigGlobal.initBlock) && Intrinsics.areEqual(this.hardforks, validatorConfigGlobal.hardforks);
        }
        return false;
    }

    public int hashCode() {
        return (((this.zeroState.hashCode() * 31) + this.initBlock.hashCode()) * 31) + this.hardforks.hashCode();
    }

    public String toString() {
        return "ValidatorConfigGlobal(zeroState=" + this.zeroState + ", initBlock=" + this.initBlock + ", hardforks=" + this.hardforks + ')';
    }

    public /* synthetic */ ValidatorConfigGlobal(int i, TonNodeBlockIdExt tonNodeBlockIdExt, TonNodeBlockIdExt tonNodeBlockIdExt2, Collection collection, SerializationConstructorMarker serializationConstructorMarker) {
        List emptyList;
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, ValidatorConfigGlobal$$serializer.INSTANCE.getDescriptor());
        }
        this.zeroState = (i & 1) == 0 ? new TonNodeBlockIdExt((TonNodeBlockId) null, (ByteString) null, (ByteString) null, 7, (DefaultConstructorMarker) null) : tonNodeBlockIdExt;
        if ((i & 2) == 0) {
            this.initBlock = new TonNodeBlockIdExt((TonNodeBlockId) null, (ByteString) null, (ByteString) null, 7, (DefaultConstructorMarker) null);
        } else {
            this.initBlock = tonNodeBlockIdExt2;
        }
        if ((i & 4) != 0) {
            this.hardforks = collection;
            return;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.hardforks = emptyList;
    }

    public ValidatorConfigGlobal(TonNodeBlockIdExt zeroState, TonNodeBlockIdExt initBlock, Collection<TonNodeBlockIdExt> hardforks) {
        Intrinsics.checkNotNullParameter(zeroState, "zeroState");
        Intrinsics.checkNotNullParameter(initBlock, "initBlock");
        Intrinsics.checkNotNullParameter(hardforks, "hardforks");
        this.zeroState = zeroState;
        this.initBlock = initBlock;
        this.hardforks = hardforks;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4, r5) == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void write$Self(org.ton.api.validator.config.ValidatorConfigGlobal r11, kotlinx.serialization.encoding.CompositeEncoder r12, kotlinx.serialization.descriptors.SerialDescriptor r13) {
        /*
            kotlinx.serialization.KSerializer<java.lang.Object>[] r0 = org.ton.api.validator.config.ValidatorConfigGlobal.$childSerializers
            r1 = 0
            boolean r2 = r12.shouldEncodeElementDefault(r13, r1)
            r3 = 1
            if (r2 == 0) goto Lc
        La:
            r2 = r3
            goto L21
        Lc:
            org.ton.api.tonnode.TonNodeBlockIdExt r2 = r11.zeroState
            org.ton.api.tonnode.TonNodeBlockIdExt r10 = new org.ton.api.tonnode.TonNodeBlockIdExt
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 7
            r9 = 0
            r4 = r10
            r4.<init>(r5, r6, r7, r8, r9)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r10)
            if (r2 != 0) goto L20
            goto La
        L20:
            r2 = r1
        L21:
            if (r2 == 0) goto L2a
            org.ton.api.tonnode.TonNodeBlockIdExt$$serializer r2 = org.ton.api.tonnode.TonNodeBlockIdExt$$serializer.INSTANCE
            org.ton.api.tonnode.TonNodeBlockIdExt r4 = r11.zeroState
            r12.encodeSerializableElement(r13, r1, r2, r4)
        L2a:
            boolean r2 = r12.shouldEncodeElementDefault(r13, r3)
            if (r2 == 0) goto L32
        L30:
            r2 = r3
            goto L47
        L32:
            org.ton.api.tonnode.TonNodeBlockIdExt r2 = r11.initBlock
            org.ton.api.tonnode.TonNodeBlockIdExt r10 = new org.ton.api.tonnode.TonNodeBlockIdExt
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 7
            r9 = 0
            r4 = r10
            r4.<init>(r5, r6, r7, r8, r9)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r10)
            if (r2 != 0) goto L46
            goto L30
        L46:
            r2 = r1
        L47:
            if (r2 == 0) goto L50
            org.ton.api.tonnode.TonNodeBlockIdExt$$serializer r2 = org.ton.api.tonnode.TonNodeBlockIdExt$$serializer.INSTANCE
            org.ton.api.tonnode.TonNodeBlockIdExt r4 = r11.initBlock
            r12.encodeSerializableElement(r13, r3, r2, r4)
        L50:
            r2 = 2
            boolean r4 = r12.shouldEncodeElementDefault(r13, r2)
            if (r4 == 0) goto L59
        L57:
            r1 = r3
            goto L66
        L59:
            java.util.Collection<org.ton.api.tonnode.TonNodeBlockIdExt> r4 = r11.hardforks
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L66
            goto L57
        L66:
            if (r1 == 0) goto L6f
            r0 = r0[r2]
            java.util.Collection<org.ton.api.tonnode.TonNodeBlockIdExt> r11 = r11.hardforks
            r12.encodeSerializableElement(r13, r2, r0, r11)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.api.validator.config.ValidatorConfigGlobal.write$Self(org.ton.api.validator.config.ValidatorConfigGlobal, kotlinx.serialization.encoding.CompositeEncoder, kotlinx.serialization.descriptors.SerialDescriptor):void");
    }

    public /* synthetic */ ValidatorConfigGlobal(TonNodeBlockIdExt tonNodeBlockIdExt, TonNodeBlockIdExt tonNodeBlockIdExt2, Collection collection, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new TonNodeBlockIdExt((TonNodeBlockId) null, (ByteString) null, (ByteString) null, 7, (DefaultConstructorMarker) null) : tonNodeBlockIdExt, (i & 2) != 0 ? new TonNodeBlockIdExt((TonNodeBlockId) null, (ByteString) null, (ByteString) null, 7, (DefaultConstructorMarker) null) : tonNodeBlockIdExt2, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : collection);
    }

    public final TonNodeBlockIdExt getZeroState() {
        return this.zeroState;
    }

    public final TonNodeBlockIdExt getInitBlock() {
        return this.initBlock;
    }

    public final Collection<TonNodeBlockIdExt> getHardforks() {
        return this.hardforks;
    }

    /* compiled from: ValidatorConfigGlobal.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<ValidatorConfigGlobal> {
        private final /* synthetic */ ValidatorConfigGlobalTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public ValidatorConfigGlobal decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public ValidatorConfigGlobal decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public ValidatorConfigGlobal decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, ValidatorConfigGlobal value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, ValidatorConfigGlobal value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, ValidatorConfigGlobal value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, ValidatorConfigGlobal value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(ValidatorConfigGlobal value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = ValidatorConfigGlobalTlConstructor.INSTANCE;
        }

        public final KSerializer<ValidatorConfigGlobal> serializer() {
            return ValidatorConfigGlobal$$serializer.INSTANCE;
        }
    }
}
