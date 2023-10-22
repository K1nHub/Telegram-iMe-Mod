package org.ton.tlb;
/* compiled from: TlbObject.kt */
/* loaded from: classes6.dex */
public interface TlbObject {
    TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter);

    /* compiled from: TlbObject.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ TlbPrettyPrinter print$default(TlbObject tlbObject, TlbPrettyPrinter tlbPrettyPrinter, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    tlbPrettyPrinter = new TlbPrettyPrinter();
                }
                return tlbObject.print(tlbPrettyPrinter);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: print");
        }
    }
}
