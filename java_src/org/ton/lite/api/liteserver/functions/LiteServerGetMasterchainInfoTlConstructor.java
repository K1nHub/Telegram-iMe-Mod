package org.ton.lite.api.liteserver.functions;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerGetMasterchainInfo.kt */
/* loaded from: classes6.dex */
final class LiteServerGetMasterchainInfoTlConstructor extends TlConstructor<LiteServerGetMasterchainInfo> {
    public static final LiteServerGetMasterchainInfoTlConstructor INSTANCE = new LiteServerGetMasterchainInfoTlConstructor();

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, LiteServerGetMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private LiteServerGetMasterchainInfoTlConstructor() {
        super("liteServer.getMasterchainInfo = liteServer.MasterchainInfo", null, 2, null);
    }

    @Override // org.ton.p045tl.TlDecoder
    public LiteServerGetMasterchainInfo decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return LiteServerGetMasterchainInfo.INSTANCE;
    }
}
