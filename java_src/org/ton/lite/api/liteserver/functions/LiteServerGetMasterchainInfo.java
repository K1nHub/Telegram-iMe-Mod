package org.ton.lite.api.liteserver.functions;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: LiteServerGetMasterchainInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerGetMasterchainInfo implements TlCodec<LiteServerGetMasterchainInfo> {
    private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final LiteServerGetMasterchainInfo INSTANCE = new LiteServerGetMasterchainInfo();
    private final /* synthetic */ LiteServerGetMasterchainInfoTlConstructor $$delegate_0 = LiteServerGetMasterchainInfoTlConstructor.INSTANCE;

    @Override // org.ton.p044tl.TlDecoder
    public LiteServerGetMasterchainInfo decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return this.$$delegate_0.decode(reader);
    }

    @Override // org.ton.p044tl.TlDecoder
    public LiteServerGetMasterchainInfo decodeBoxed(Input input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.$$delegate_0.decodeBoxed(input);
    }

    @Override // org.ton.p044tl.TlDecoder
    public LiteServerGetMasterchainInfo decodeBoxed(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return this.$$delegate_0.decodeBoxed(reader);
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(Output output, LiteServerGetMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.encode(output, (Output) value);
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, LiteServerGetMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.encode(writer, value);
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encodeBoxed(Output output, LiteServerGetMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.encodeBoxed(output, (Output) value);
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encodeBoxed(TlWriter writer, LiteServerGetMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
    }

    @Override // org.ton.p044tl.TlEncoder
    public byte[] encodeToByteArray(LiteServerGetMasterchainInfo value, boolean z) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.$$delegate_0.encodeToByteArray(value, z);
    }

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.lite.api.liteserver.functions.LiteServerGetMasterchainInfo.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return new ObjectSerializer("liteServer.getMasterchainInfo", LiteServerGetMasterchainInfo.INSTANCE, new Annotation[0]);
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    private LiteServerGetMasterchainInfo() {
    }

    private final /* synthetic */ KSerializer get$cachedSerializer() {
        return $cachedSerializer$delegate.getValue();
    }

    public final KSerializer<LiteServerGetMasterchainInfo> serializer() {
        return get$cachedSerializer();
    }
}
