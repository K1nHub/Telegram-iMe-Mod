package org.ton.api.validator.config;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ValidatorConfigGlobal.kt */
/* loaded from: classes6.dex */
public final class ValidatorConfigGlobalTlConstructor extends TlConstructor<ValidatorConfigGlobal> {
    public static final ValidatorConfigGlobalTlConstructor INSTANCE = new ValidatorConfigGlobalTlConstructor();

    private ValidatorConfigGlobalTlConstructor() {
        super("validator.config.global zero_state:tonNode.blockIdExt init_block:tonNode.blockIdExt hardforks:(vector tonNode.blockIdExt) = validator.config.Global", null, 2, null);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, ValidatorConfigGlobal value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        TonNodeBlockIdExt.Companion companion = TonNodeBlockIdExt.Companion;
        companion.encode(writer, (TlWriter) value.getZeroState());
        companion.encode(writer, (TlWriter) value.getInitBlock());
        Collection<TonNodeBlockIdExt> hardforks = value.getHardforks();
        writer.writeInt(hardforks.size());
        for (TonNodeBlockIdExt tonNodeBlockIdExt : hardforks) {
            TonNodeBlockIdExt.Companion.encode(writer, (TlWriter) tonNodeBlockIdExt);
        }
    }

    @Override // org.ton.p045tl.TlDecoder
    public ValidatorConfigGlobal decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        TonNodeBlockIdExt.Companion companion = TonNodeBlockIdExt.Companion;
        return new ValidatorConfigGlobal(companion.decode(reader), companion.decode(reader), reader.readVector(new Function1<TlReader, TonNodeBlockIdExt>() { // from class: org.ton.api.validator.config.ValidatorConfigGlobalTlConstructor$decode$1$hardforks$1
            @Override // kotlin.jvm.functions.Function1
            public final TonNodeBlockIdExt invoke(TlReader readVector) {
                Intrinsics.checkNotNullParameter(readVector, "$this$readVector");
                return TonNodeBlockIdExt.Companion.decode(readVector);
            }
        }));
    }
}
