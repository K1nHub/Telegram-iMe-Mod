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
        int m1974constructorimpl = UInt.m1974constructorimpl(i);
        if (z) {
            printQuoted(ComposerForUnsignedNumbers$$ExternalSyntheticBackport1.m126m(m1974constructorimpl));
        } else {
            print(ComposerForUnsignedNumbers$$ExternalSyntheticBackport0.m127m(m1974constructorimpl));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j) {
        String m122m;
        String m121m;
        boolean z = this.forceQuoting;
        long m1996constructorimpl = ULong.m1996constructorimpl(j);
        if (z) {
            m121m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport6.m121m(m1996constructorimpl, 10);
            printQuoted(m121m);
            return;
        }
        m122m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport5.m122m(m1996constructorimpl, 10);
        print(m122m);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b) {
        boolean z = this.forceQuoting;
        String m1955toStringimpl = UByte.m1955toStringimpl(UByte.m1952constructorimpl(b));
        if (z) {
            printQuoted(m1955toStringimpl);
        } else {
            print(m1955toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s) {
        boolean z = this.forceQuoting;
        String m2021toStringimpl = UShort.m2021toStringimpl(UShort.m2018constructorimpl(s));
        if (z) {
            printQuoted(m2021toStringimpl);
        } else {
            print(m2021toStringimpl);
        }
    }
}
