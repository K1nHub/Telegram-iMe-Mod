package org.ton.lite.api.liteserver.functions;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.lite.api.liteserver.LiteServerAccountId;
import org.ton.lite.api.liteserver.LiteServerAccountId$$serializer;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerGetAccountState.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerGetAccountState {
    public static final Companion Companion = new Companion(null);
    private final LiteServerAccountId account;

    /* renamed from: id */
    private final TonNodeBlockIdExt f2100id;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerGetAccountState) {
            LiteServerGetAccountState liteServerGetAccountState = (LiteServerGetAccountState) obj;
            return Intrinsics.areEqual(this.f2100id, liteServerGetAccountState.f2100id) && Intrinsics.areEqual(this.account, liteServerGetAccountState.account);
        }
        return false;
    }

    public int hashCode() {
        return (this.f2100id.hashCode() * 31) + this.account.hashCode();
    }

    public String toString() {
        return "LiteServerGetAccountState(id=" + this.f2100id + ", account=" + this.account + ')';
    }

    public /* synthetic */ LiteServerGetAccountState(int i, TonNodeBlockIdExt tonNodeBlockIdExt, LiteServerAccountId liteServerAccountId, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, LiteServerGetAccountState$$serializer.INSTANCE.getDescriptor());
        }
        this.f2100id = tonNodeBlockIdExt;
        this.account = liteServerAccountId;
    }

    public LiteServerGetAccountState(TonNodeBlockIdExt id, LiteServerAccountId account) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(account, "account");
        this.f2100id = id;
        this.account = account;
    }

    public static final /* synthetic */ void write$Self(LiteServerGetAccountState liteServerGetAccountState, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, TonNodeBlockIdExt$$serializer.INSTANCE, liteServerGetAccountState.f2100id);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, LiteServerAccountId$$serializer.INSTANCE, liteServerGetAccountState.account);
    }

    public final TonNodeBlockIdExt getId() {
        return this.f2100id;
    }

    public final LiteServerAccountId getAccount() {
        return this.account;
    }

    /* compiled from: LiteServerGetAccountState.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<LiteServerGetAccountState> {
        private final /* synthetic */ LiteServerGetAccountStateTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerGetAccountState decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerGetAccountState decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public LiteServerGetAccountState decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, LiteServerGetAccountState value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, LiteServerGetAccountState value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, LiteServerGetAccountState value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, LiteServerGetAccountState value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(LiteServerGetAccountState value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = LiteServerGetAccountStateTlConstructor.INSTANCE;
        }

        public final KSerializer<LiteServerGetAccountState> serializer() {
            return LiteServerGetAccountState$$serializer.INSTANCE;
        }
    }
}
