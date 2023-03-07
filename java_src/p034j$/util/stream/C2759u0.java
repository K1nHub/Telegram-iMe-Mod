package p034j$.util.stream;

import p034j$.util.function.InterfaceC2470v;
/* renamed from: j$.util.stream.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2759u0 implements InterfaceC2470v {

    /* renamed from: a */
    public static final /* synthetic */ C2759u0 f1054a = new C2759u0();

    private /* synthetic */ C2759u0() {
    }

    @Override // p034j$.util.function.InterfaceC2470v
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }
}
