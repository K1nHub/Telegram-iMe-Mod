package org.ton.api.adnl;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: AdnlIdShort.kt */
/* loaded from: classes6.dex */
final class AdnlIdShortTlConstructor extends TlConstructor<AdnlIdShort> {
    public static final AdnlIdShortTlConstructor INSTANCE = new AdnlIdShortTlConstructor();

    private AdnlIdShortTlConstructor() {
        super("adnl.id.short id:int256 = adnl.id.Short", null, 2, null);
    }

    @Override // org.ton.p044tl.TlDecoder
    public AdnlIdShort decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new AdnlIdShortImpl(reader.readRaw(32));
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, AdnlIdShort value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeRaw(value.getId());
    }
}
