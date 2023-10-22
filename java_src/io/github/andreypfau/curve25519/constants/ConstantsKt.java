package io.github.andreypfau.curve25519.constants;

import io.github.andreypfau.curve25519.edwards.CompressedEdwardsY;
import io.github.andreypfau.curve25519.field.FieldElement;
import io.github.andreypfau.curve25519.internal.BinaryKt;
import io.github.andreypfau.curve25519.scalar.UnpackedScalar;
import kotlin.ULong;
/* compiled from: constants.kt */
/* loaded from: classes4.dex */
public final class ConstantsKt {

    /* renamed from: L */
    private static final UnpackedScalar f420L;

    /* renamed from: R */
    private static final UnpackedScalar f421R;

    /* renamed from: RR */
    private static final UnpackedScalar f422RR;
    private static final FieldElement SQRT_M1;
    private static final long LOW_51_BIT_NASK = ULong.m1989constructorimpl(ULong.m1989constructorimpl(2251799813685248L) - 1);
    private static final long LOW_52_BIT_NASK = ULong.m1989constructorimpl(ULong.m1989constructorimpl(4503599627370496L) - 1);
    private static final FieldElement EDWARDS_D = new FieldElement(929955233495203L, 466365720129213L, 1662059464998953L, 2033849074728123L, 1442794654840575L, null);

    static {
        new FieldElement(1859910466990425L, 932731440258426L, 1072319116312658L, 1815898335770999L, 633789495995903L, null);
        SQRT_M1 = new FieldElement(1718705420411056L, 234908883556509L, 2233514472574048L, 2117202627021982L, 765476049583133L, null);
        f420L = new UnpackedScalar(671914833335277L, 3916664325105025L, 1367801L, 0L, 17592186044416L, null);
        f421R = new UnpackedScalar(4302102966953709L, 1049714374468698L, 4503599278581019L, 4503599627370495L, 17592186044415L, null);
        f422RR = new UnpackedScalar(2764609938444603L, 3768881411696287L, 1616719297148420L, 1087343033131391L, 10175238647962L, null);
        new CompressedEdwardsY(BinaryKt.hex("0100000000000000000000000000000000000000000000000000000000000080"));
        new CompressedEdwardsY(BinaryKt.hex("ecffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"));
    }

    public static final long getLOW_51_BIT_NASK() {
        return LOW_51_BIT_NASK;
    }

    public static final long getLOW_52_BIT_NASK() {
        return LOW_52_BIT_NASK;
    }

    public static final FieldElement getEDWARDS_D() {
        return EDWARDS_D;
    }

    public static final FieldElement getSQRT_M1() {
        return SQRT_M1;
    }

    public static final UnpackedScalar getL() {
        return f420L;
    }

    public static final UnpackedScalar getR() {
        return f421R;
    }

    public static final UnpackedScalar getRR() {
        return f422RR;
    }
}
