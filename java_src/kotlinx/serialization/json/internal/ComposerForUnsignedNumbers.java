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
        int m1967constructorimpl = UInt.m1967constructorimpl(i);
        if (z) {
            printQuoted(ComposerForUnsignedNumbers$$ExternalSyntheticBackport1.m124m(m1967constructorimpl));
        } else {
            print(ComposerForUnsignedNumbers$$ExternalSyntheticBackport0.m125m(m1967constructorimpl));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j) {
        String m120m;
        String m119m;
        boolean z = this.forceQuoting;
        long m1989constructorimpl = ULong.m1989constructorimpl(j);
        if (z) {
            m119m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport6.m119m(m1989constructorimpl, 10);
            printQuoted(m119m);
            return;
        }
        m120m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport5.m120m(m1989constructorimpl, 10);
        print(m120m);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b) {
        boolean z = this.forceQuoting;
        String m1948toStringimpl = UByte.m1948toStringimpl(UByte.m1945constructorimpl(b));
        if (z) {
            printQuoted(m1948toStringimpl);
        } else {
            print(m1948toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s) {
        boolean z = this.forceQuoting;
        String m2014toStringimpl = UShort.m2014toStringimpl(UShort.m2011constructorimpl(s));
        if (z) {
            printQuoted(m2014toStringimpl);
        } else {
            print(m2014toStringimpl);
        }
    }
}
