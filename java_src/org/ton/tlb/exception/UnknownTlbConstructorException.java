package org.ton.tlb.exception;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.ton.bitstring.BitString;
/* compiled from: UnknownTlbConstructorException.kt */
/* loaded from: classes6.dex */
public final class UnknownTlbConstructorException extends IllegalArgumentException {

    /* renamed from: id */
    private final BitString f2122id;

    public /* synthetic */ UnknownTlbConstructorException(BitString bitString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bitString);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UnknownTlbConstructorException(org.ton.bitstring.BitString r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L25
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unknown constructor: "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r1 = " ("
            r0.append(r1)
            java.lang.String r1 = r3.toBinary()
            r0.append(r1)
            r1 = 41
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L27
        L25:
            java.lang.String r0 = "Unknown constructor"
        L27:
            r2.<init>(r0)
            r2.f2122id = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.tlb.exception.UnknownTlbConstructorException.<init>(org.ton.bitstring.BitString):void");
    }
}
