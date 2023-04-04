package p035j$.util.stream;

import p035j$.util.function.InterfaceC2684v;
/* renamed from: j$.util.stream.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2973u0 implements InterfaceC2684v {

    /* renamed from: a */
    public static final /* synthetic */ C2973u0 f1065a = new C2973u0();

    private /* synthetic */ C2973u0() {
    }

    @Override // p035j$.util.function.InterfaceC2684v
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }
}
