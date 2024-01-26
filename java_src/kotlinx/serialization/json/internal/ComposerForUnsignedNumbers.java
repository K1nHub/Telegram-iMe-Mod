package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Composers.kt */
/* loaded from: classes4.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(JsonWriter writer, boolean z) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int i) {
        boolean z = this.forceQuoting;
        int m1975constructorimpl = UInt.m1975constructorimpl(i);
        if (z) {
            printQuoted(ComposerForUnsignedNumbers$$ExternalSyntheticBackport1.m129m(m1975constructorimpl));
        } else {
            print(ComposerForUnsignedNumbers$$ExternalSyntheticBackport0.m130m(m1975constructorimpl));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j) {
        String m125m;
        String m124m;
        boolean z = this.forceQuoting;
        long m1997constructorimpl = ULong.m1997constructorimpl(j);
        if (z) {
            m124m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport6.m124m(m1997constructorimpl, 10);
            printQuoted(m124m);
            return;
        }
        m125m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport5.m125m(m1997constructorimpl, 10);
        print(m125m);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b) {
        boolean z = this.forceQuoting;
        String m1956toStringimpl = UByte.m1956toStringimpl(UByte.m1953constructorimpl(b));
        if (z) {
            printQuoted(m1956toStringimpl);
        } else {
            print(m1956toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s) {
        boolean z = this.forceQuoting;
        String m2022toStringimpl = UShort.m2022toStringimpl(UShort.m2019constructorimpl(s));
        if (z) {
            printQuoted(m2022toStringimpl);
        } else {
            print(m2022toStringimpl);
        }
    }
}
